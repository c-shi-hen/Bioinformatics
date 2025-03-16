#!/bin/bash
mydir=$(pwd)/bash_homework/bash_homework
cd $mydir

if [ -f ../dirname.txt ]; then 
    rm ../dirname.txt
fi

if [ -f ../filename.txt ]; then
    rm ../filename.txt
fi

for file in `ls`
do
    if [ -d $file ]; then
        echo "$file" >> ../dirname.txt
    elif [ -f $file ]; then
        echo "$file" >> ../filename.txt
    else 
        echo "$file"
    fi
done
echo "Done"