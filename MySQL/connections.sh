#!/bin/bash
#
# source:
# https://support.plesk.com/hc/en-us/articles/213938885-Plesk-or-website-are-not-working-Unable-to-connect-to-database-MySQL-server-has-gone-away-Full-server-backup-is-created-with-warning-errno-24-Too-many-open-files
#
# https://support.plesk.com/hc/es/articles/213391989
#
# http://www.thegeekstuff.com/2009/01/15-practical-usages-of-mysqladmin-command-for-administering-mysql-server/



echo "show connections"
mysqladmin -uadmin -p`cat /etc/psa/.psa.shadow` extended-status | grep Max_used_connections

echo "current connection limite"
mysqladmin -uadmin -p`cat /etc/psa/.psa.shadow ` variables | grep 'max.*connections'

echo "comprobar que conexiones y a que base de datos se esta realizando"
mysqladmin -uadmin -p`cat /etc/psa/.psa.shadow` processlist

echo "Debug and identify the query that is causing problems"
mysqladmin -u root -ptmppassword -i 1 processlist


echo
echo"0 max_user_connections are unlimited."
echo "you need to edit /etc/mysql/my.cnf   OR  /etc/my.conf"
echo
echo" restart the service... "
echo " You need to execute this:  service mysqld restart "
