#!/bin/bash

# VARIABLES
DBHOST=localhost
DBUSER=daniel
DBPASS=test_pass
DBNAME=colibri_test

# REMOVE ALL SPACES FROM FILES NAMES
# REMOVE ALL SPACES FROM FILES NAMES
find ../dbscripts/ -depth -name '* *.sql' \
| while IFS= read -r f ; do mv -i "$f" "${f// /_}"; done