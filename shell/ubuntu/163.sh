
cp /etc/apt/sources.list /etc/apt/sources.list.bak

cat /etc/apt/sources.list
sed -i 's/archive.ubuntu.com/mirrors.163.com/g' /etc/apt/sources.list
cat /etc/apt/sources.list