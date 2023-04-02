#!/bin/bash


# VARIABLES
# Extract variables values form script's arguments
if [ "$#" -ge 1 ]; then
  SCRIPTSPATH=$1
else
  IFS= read -r SCRIPTSPATH || exit # on EOF
fi

if [ "$#" -ge 2 ]; then
  DBUSER=$2
else
  IFS= read -r DBUSER || exit # on EOF
fi

if [ "$#" -ge 3 ]; then
  DBHOST=$3
else
  IFS= read -r DBHOST || exit # on EOF
fi

if [ "$#" -ge 4 ]; then
  DBNAME=$4
else
  IFS= read -r DBNAME || exit # on EOF
fi

if [ "$#" -ge 5 ]; then
  DBPASS=$5
else
  IFS= read -r DBPASS || exit # on EOF
fi

# DATABASE VERSION
DBVERS=$(mysql --user=dev --password=123456 --host=mysql_container --database=devopstt -se "SELECT max(version) AS HighestVersion FROM versionTable" | awk '{print $1}')
FILENUM=$(ls ../$SCRIPTSPATH/*.sql | grep -o '[0-9]\+' | sort -n | tail -1)
echo DB\'s highest version is: $DBVERS
echo Highest number in filenames is: $FILENUM


# REMOVE ALL SPACES FROM FILES NAMES
find ../$SCRIPTSPATH/ -depth -name '* *.sql' \
| while IFS= read -r f ; do mv -i "$f" "${f// /_}"; done


# RUN ALL sql SCRIPTS IN UPDATES FOLDER
for f in ../$SCRIPTSPATH/*.sql; do
    mysql --host="$DBHOST" --user="$DBUSER" --password="$DBPASS" --database="$DBNAME" < ${f}
done



