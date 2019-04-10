yum install -y wget unzip
wget --no-check-certificate --no-cookies --header "Cookie: oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jce/8/jce_policy-8.zip"
unzip -o -j -q jce_policy-8.zip -d  /usr/jdk64/jdk1.8.0_112/jre/lib/security/
