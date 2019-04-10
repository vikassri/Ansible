yum install -y wget unzip
mkdir /usr/jdk64
wget http://public-repo-1.hortonworks.com/ARTIFACTS/jdk-8u112-linux-x64.tar.gz
tar -xvf jdk-8u112-linux-x64.tar.gz
mv jdk1.8.0_112 /usr/jdk64/
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip"
unzip -o -j -q jce_policy-8.zip -d  /usr/jdk64/jdk1.8.0_112/jre/lib/security/
rm -rf jdk-8u112-linux-x64.tar.gz jce_policy-8.zip
