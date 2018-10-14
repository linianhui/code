
mv /etc/apt/sources.list /etc/apt/sources.list.backup

echo "\
deb http://mirrors.163.com/ubuntu/ $(lsb_release -cs) main multiverse restricted universe
deb http://mirrors.163.com/ubuntu/ $(lsb_release -cs)-backports main multiverse restricted universe
deb http://mirrors.163.com/ubuntu/ $(lsb_release -cs)-proposed main multiverse restricted universe
deb http://mirrors.163.com/ubuntu/ $(lsb_release -cs)-security main multiverse restricted universe
deb http://mirrors.163.com/ubuntu/ $(lsb_release -cs)-updates main multiverse restricted universe
deb-src http://mirrors.163.com/ubuntu/ $(lsb_release -cs) main multiverse restricted universe
deb-src http://mirrors.163.com/ubuntu/ $(lsb_release -cs)-backports main multiverse restricted universe
deb-src http://mirrors.163.com/ubuntu/ $(lsb_release -cs)-proposed main multiverse restricted universe
deb-src http://mirrors.163.com/ubuntu/ $(lsb_release -cs)-security main multiverse restricted universe
deb-src http://mirrors.163.com/ubuntu/ $(lsb_release -cs)-updates main multiverse restricted universe" | \
tee /etc/apt/sources.list

apt-get update -y && apt-get upgrade -y