#!/bin/bash
#
# source:
# https://support.plesk.com/hc/en-us/articles/213938885-Plesk-or-website-are-not-working-Unable-to-connect-to-database-MySQL-server-has-gone-away-Full-server-backup-is-created-with-warning-errno-24-Too-many-open-files
#


echo "show connections"
mysqladmin -uadmin -p`cat /etc/psa/.psa.shadow` extended-status | grep Max_used_connections

echo "current connection limite"
mysqladmin -uadmin -p`cat /etc/psa/.psa.shadow ` variables | grep 'max.*connections'


echo
echo"0 max_user_connections are unlimited."
echo "you need to edit /etc/mysql/my.cnf"
echo
echo" restart the service... "
echo " You need to execute this:  service mysqld restart "
