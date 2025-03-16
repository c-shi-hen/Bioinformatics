## 3.1 Linux bash

运行脚本

```bash
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
```

`filename.txt`

```
a.txt
a1.txt
b.filter_random.pl
b1.txt
bam_wig.sh
c.txt
c1.txt
chrom.size
d1.txt
dir.txt
e1.txt
f1.txt
human_geneExp.txt
if.sh
image
insitiue.txt
mouse_geneExp.txt
name.txt
number.sh
out.bw
random.sh
read.sh
test.sh
test.txt
test3.sh
test4.sh
wigToBigWig

```

`dirname.txt`

```
RBP_map
a-docker
app
backup
bin
biosoft
c1-RBPanno
datatable
db
download
e-annotation
exRNA
genome
git
highcharts
home
hub29
ibme
l-lwl
map2
mljs
module
mogproject
node_modules
perl5
postar.docker
postar2
postar_app
rout
script
script_backup
software
tcga
test
tmp
tmp_script
var
x-rbp

```
