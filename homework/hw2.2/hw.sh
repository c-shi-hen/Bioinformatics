path=$(pwd)/1.gtf

echo "hw2.2"
echo -e '\n'

echo "##the last 10 CDS sites of XI chromosome"
cat ${path} | awk '{if($1=="XI" && $3 == "CDS") print}' | tail -10 
echo -e '\n'
echo "##sort with the final site of each CDS by ascii"
cat ${path} | awk '{if($1=="XI" && $3=="CDS") print}' | tail -10 | sort -k5,5n 
echo -e '\n'

echo "##show the number of each feature"
grep -v "^#" ${path} | awk '{print $3}' | sort | uniq -c | sort -k1,1n
echo -e '\n'

echo "##the two longest CDS sites not on IV chromosome"
awk '($1 != "IV") && ($7 == "-") && ($3 == "CDS") {print $5 - $4}' ${path} | sort -k1,1n | tail -2
echo -e '\n'

echo "##the five longest genes on chromosome XV"
awk '($1 == "XV") {print $10, $5 - $4}' ${path} | sort -k2,2n | tail -5
echo -e '\n'