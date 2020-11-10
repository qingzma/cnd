# Converting Citation Network Dataset v12 into tables.
https://www.aminer.org/citation
## Dependency:
```
cmake
```
## How to use
clone this repository, cd into the folder, and create a folder called ```build```
```
cd build
cmake ..
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


Tables include
- An "author" table that maps author ids to author names (1:1).
- A "paper" table that maps paper ids to paper name, venue id, year (1:1)
- A "venue" table that maps venue ids to venue names (1:1).
- An "authored" table that maps paper ids to author ids (1:many).
- A "citation" table that maps paper ids to cited paper ids (1:many).