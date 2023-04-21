#!/bin/bash
mkdir dir_for_script
cd dir_for_script
for i in {1..3}; do mkdir dir$i; done
cd dir3
for i in {1..3}; do touch file$i.txt; done
for i in 0 1; do touch file-json$i.json; done
cd ..
ls -la
mv dir3/{file1.txt,file-json1.json} dir2

echo "The script was executed successfully"
