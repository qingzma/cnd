#include <iostream>
#include <fstream>
#include <iomanip>
#include <string>
#include <unordered_map>
#include "include/rapidjson/document.h"
#include <vector>
#include <sys/stat.h>

using namespace rapidjson;


void write_maps_to_file(std::unordered_map<std::string, std::string>& mp, std::string header, std::string output_file, bool display=false){
    std::ofstream f(output_file);
    std::cout<<"Saving table to file..."<<std::endl;
    if (f.is_open()){
        f<<header<<std::endl;
        for (auto& item : mp){
            f<<item.first<<","<<item.second<<'\n';
        }
    }
    f.close();
    if (display){
        std::cout<<"Displaying... "<<std::endl;
        std::cout<<header<<std::endl;
        for (auto& item : mp){
            std::cout<<item.first<<","<<item.second<<'\n';
        }
    }

}

void write_vec_to_file(std::vector<std::string>& vec, std::string header, std::string output_file, bool display=false){
    std::ofstream f(output_file);
    std::cout<<"Saving table to file..."<<std::endl;
    if (f.is_open()){
        f<<header<<std::endl;
        for (auto& item : vec){
            f<<item<<'\n';
        }
    }
    f.close();
    if (display){
        std::cout<<"Displaying... "<<std::endl;
        std::cout<<header<<std::endl;
        for (auto& item : vec){
            std::cout<<item<<'\n';
        }
    }

}


void parse_author(std::string& input_path, std::string output_file,bool display=false){
    std::cout<<"Generating the author table..."<<std::endl;
    std::unordered_map<std::string, std::string> authors;
    Document  document;

    std::ifstream input(input_path);
    std::string line;
    int cnt=0;
    while(std::getline(input, line)){
        if (++cnt%10000==0) std::cout<<"\rProcessing "<<cnt<<"th records."<< std::flush;
        if (line[0]==',') line=line.substr(1);
        if ( line[0]=='{'){
            document.Parse(line.c_str());
            if (!document.HasMember("authors")) continue;
            const Value & a =document["authors"];

            for (auto&v:a.GetArray()) {
                std::string value;
                for (Value::ConstMemberIterator itr = v.MemberBegin();
                     itr != v.MemberEnd(); ++itr) {
                    if (strcmp(itr->name.GetString(), "name") == 0)
                        value = itr->value.GetString();
                    else if (strcmp(itr->name.GetString(), "id") == 0)
                        authors[std::to_string(itr->value.GetInt64())] = value;
                }
            }
        }
    }
    write_maps_to_file(authors, "author_id,author_name", output_file,display);
    authors.clear();
}

void parse_paper(std::string& input_path, std::string output_file,bool display=false){
    std::cout<<"Generating the paper table..."<<std::endl;
    std::unordered_map<std::string, std::string> papers;
    Document  document;

    std::ifstream input(input_path);
    std::string line;
    int cnt=0;
    while(std::getline(input, line)){
        if (++cnt%10000==0) std::cout<<"\rProcessing "<<cnt<<"th records."<< std::flush;
        if (line[0]==',') line=line.substr(1);
        if ( line[0]=='{'){
            document.Parse(line.c_str());
            if (!document.HasMember("id")) continue;
            const std::string id =std::to_string(document["id"].GetInt64());

            std::string value;
            if (document.HasMember("title")) value+=document["title"].GetString();
            value+=",";

            if (document.HasMember("venue")){
                const Value & a =document["venue"];
                if (a.GetObject().HasMember("id")) value+=std::to_string(a.GetObject()["id"].GetInt64());
            }
            value+=",";

            if (document.HasMember("year")) value+=std::to_string(document["year"].GetInt());

            papers[id]=value;
        }
    }
    write_maps_to_file(papers, "paper_id,paper_name,venue_id,year", output_file,display);
    papers.clear();
}


void parse_venue(std::string& input_path, std::string output_file,bool display=false){
    std::cout<<"Generating the venue table..."<<std::endl;
    std::unordered_map<std::string, std::string> venues;
    Document  document;

    std::ifstream input(input_path);
    std::string line;
    int cnt=0;
    while(std::getline(input, line)){
        if (++cnt%10000==0) std::cout<<"\rProcessing "<<cnt<<"th records."<< std::flush;
        if (line[0]==',') line=line.substr(1);
        if ( line[0]=='{'){
            document.Parse(line.c_str());
            if (!document.HasMember("venue")) continue;
            const Value& v = document["venue"].GetObject();


            if (!v.HasMember("id")) continue;
            std::string key=std::to_string(v["id"].GetInt64());

            std::string value;
            if (v.HasMember("raw")) value += v["raw"].GetString();

            venues[key]=value;
        }
    }
    write_maps_to_file(venues, "venue_id,venue_name", output_file,display);
}

void parse_authored(std::string& input_path, std::string output_file,bool display=false){
    std::cout<<"Generating the authored table..."<<std::endl;
    std::vector<std::string> authored;
    Document  document;

    std::ifstream input(input_path);
    std::string line;
    int cnt=0;
    while(std::getline(input, line)){
        if (++cnt%10000==0) std::cout<<"\rProcessing "<<cnt<<"th records."<< std::flush;
        if (line[0]==',') line=line.substr(1);
        if ( line[0]=='{'){
            document.Parse(line.c_str());
            if (!document.HasMember("id")) continue;
            std::string key = std::to_string(document["id"].GetInt64());
            if (!document.HasMember("authors")){
                continue;
            }
            const Value & a =document["authors"];

            for (auto&v:a.GetArray()) {
                for (Value::ConstMemberIterator itr = v.MemberBegin();
                     itr != v.MemberEnd(); ++itr) {
                    if (strcmp(itr->name.GetString(), "id") == 0)
                        authored.emplace_back(key+","+ std::to_string(itr->value.GetInt64()) ) ;
                }
            }
        }
    }
    write_vec_to_file(authored, "paper_id,author_id", output_file,display);
}


void parse_citation(std::string& input_path, std::string output_file,bool display=false){
    std::cout<<"Generating the citation table..."<<std::endl;
    std::vector<std::string> citations;
    Document  document;

    std::ifstream input(input_path);
    std::string line;
    int cnt=0;
    while(std::getline(input, line)){
        if (++cnt%10000==0) std::cout<<"\rProcessing "<<cnt<<"th records."<< std::flush;
        if (line[0]==',') line=line.substr(1);
        if ( line[0]=='{'){
            document.Parse(line.c_str());
            if (!document.HasMember("id")) continue;
            std::string key = std::to_string(document["id"].GetInt64());

            if (!document.HasMember("references")) continue;
            const Value & a =document["references"];

            for (auto&v:a.GetArray()) {
                citations.emplace_back(key+","+ std::to_string(v.GetInt64()) ) ;
            }
        }
    }
    write_vec_to_file(citations, "paper_id,ref_paper_id", output_file,display);
}

int main(int argc, char** argv) {
    if (argc!=3) {
        std::cout<<"please provide the input file and ouput folder."<<std::endl;
        exit(-1);
    }
    std::string  input_file = argv[1];
    std::string output_file = argv[2];

    if (mkdir(output_file.c_str(), S_IRWXU | S_IRWXG | S_IROTH | S_IXOTH) == -1)
    {
        if( errno == EEXIST ) {
            // alredy exists
            std::cout<<"output folder exists"<<std::endl;
        } else {
            // something else
            std::cout << "cannot create folder error:" << strerror(errno) << std::endl;
            throw std::runtime_error( strerror(errno) );
        }
    }
    if (output_file[output_file.size()-1]!='/') output_file+='/';


//    std::string  input_file("/home/quincy/Documents/workspace/michael/dblp.v12.json");
//    std::string  input_file("/home/quincy/Documents/workspace/michael_json/test.json");

//    std::string output_file="/home/quincy/Documents/workspace/michael_json/cnd/";

    bool print2screen=false;
    parse_author(input_file,output_file+"author.csv",print2screen);
    parse_paper(input_file,output_file+"paper.csv",print2screen);
    parse_venue(input_file,output_file+"venue.csv",print2screen);
    parse_authored(input_file,output_file+"authored.csv",print2screen);
    parse_citation(input_file,output_file+"citation.csv",print2screen);

    return 0;
}
