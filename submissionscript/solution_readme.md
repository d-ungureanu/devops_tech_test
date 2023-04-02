1. ENVIRONMENT SETUP
    - created virtual machine in VirtualBox with Ubuntu OS.
    - install git
    - install GitHub CLI
    - install docker
    - install mysql server

2. DEVELOPMENT
    - Upskilling MySQL
    - Upskilling BASH scripts
    - Upskilling docker compose
    - cloned GitHub repo on local machine
    - run all sql scripts from mysql terminal
    - run all sql scripts from BASH on localhost mysql server
    - created update.sh BASH script file
    - tested whitespaces removal from filenames with sed (no solution from outside folder)
    - added solution to remove spaces from filenames(using find and mv BASH functions)
    - added code for conversion of arguments to variables in BASH
    - added test for correct variables values( vars prints to terminal with echo)
    - added code to create DB inside mysql server(removed later as not necesary)
    - added code to run all script files ending in .sql from specified folder
    - moved code to remove spaces in filenames after extracting SCRIPTPATH variable
    - removed unecessary MySQL operations( create DB and create versionTable)
    - extracted DATABASE version from versionTable
    - extracted highest number found in filenames at SCRIPTSPATH path
    - updated this file with all steps