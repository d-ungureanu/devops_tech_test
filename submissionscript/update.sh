#!/bin/bash


# REMOVE ALL SPACES FROM FILES NAMES
find ../dbscripts/ -depth -name '* *.sql' \
| while IFS= read -r f ; do mv -i "$f" "${f// /_}"; done


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


# CREATE DATABASE ON MySql SERVER
mysql --user="$DBUSER" --password="$DBPASS" --host=$DBHOST --execute="CREATE DATABASE $DBNAME"


# CREATE versionTable TABLE
for file in ../$SCRIPTSPATH/seed_data/*.sql; do
    mysql --host="$DBHOST" --user="$DBUSER" --password="$DBPASS" --database="$DBNAME" < ${file}
done


# RUN ALL sql SCRIPTS IN UPDATES FOLDER
for f in ../$SCRIPTSPATH/*.sql; do
    mysql --host="$DBHOST" --user="$DBUSER" --password="$DBPASS" --database="$DBNAME" < ${f}
done



