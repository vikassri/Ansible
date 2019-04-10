#!/bin/sh

yum install -y openldap-clients nss-pam-ldapd
rpm -q expect || yum install -y expect
authconfig --enableldap --enableldapauth --ldapserver=127.0.0.1 --ldapbasedn="dc=hortonworks,dc=com" --enablemkhomedir --update
systemctl restart  nslcd
