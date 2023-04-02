#!/bin/bash

# VARIABLES
DBHOST=localhost
DBUSER=daniel
DBPASS=test_pass
DBNAME=colibri_test

# REMOVE ALL SPACES FROM FILES NAMES
for i in *' '*; do 
    mv "$i" `echo $i | sed -e 's/ /_/g'`;
done