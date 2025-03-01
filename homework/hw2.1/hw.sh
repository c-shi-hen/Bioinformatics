path=$(pwd)/file/test_command.gtf
echo "hw2.1"
echo -e "\n"

echo "**test_command.gtf lines and number of chars**"
wc -l ${path}
wc -c ${path}
echo -e "\n"

echo "**test_command.gtf, grep lines which begin with 'chr_' and whose id is 'YDL248W'**"
grep '^chr_' ${path} | grep 'YDL248W'
echo -e "\n"

echo "**test_command.gtf, replace 'chr_' with 'chrosome_'**"
sed 's/chr_/chromosome_/g' ${path} | awk '{print $1, $3, $4, $5}'
echo -e "\n"

echo "**change the pos column 2 with column 3 and redirect the output to new file result.gtf**"
awk '{print $1, $3, $2, $4, $5}' ${path} | sort -k4,4n -k5,5n > ${path}result.gtf
cat ${path}result.gtf
echo -e "\n"

echo "**change the permission of ${path}test_command.gtf**"
echo "**show the original permission**"
chmod 775 ${path}
ls -l ${path}
chmod 640 ${path}
echo "**show the new permission**"
ls -l ${path}
echo -e "\n"