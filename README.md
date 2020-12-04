# Converting Citation Network Dataset v12 into tables.

Firstly, please download and extract the dataset from  https://www.aminer.org/citation.

## Dependency:
```
cmake
python 3
```
## How to use
clone this repository, cd into the folder, and create a folder called ```build```
```
mkdir build
cd build
cmake ..
make
```
You should now create the executable cnd;

To generate the tables
```
./cnd dblp.v12.json output_dir
```
For testing purposes, you could run 
```
./cnd ../test.json output_dir
```

## Modifications
the raw data uses the CSV-separators in the publication titles. to avoid this, please run the fixtitle.py scripts to post-process the paper.csv.
In this way, the  commas are replaced with a semicolon in paper.csv.
```
python fixtitle.py 
```

## Tables include
- An "author" table that maps author ids to author names (1:1).
- A "paper" table that maps paper ids to paper name, venue id, year (1:1)
- A "venue" table that maps venue ids to venue names (1:1).
- An "authored" table that maps paper ids to author ids (1:many).
- A "citation" table that maps paper ids to cited paper ids (1:many).