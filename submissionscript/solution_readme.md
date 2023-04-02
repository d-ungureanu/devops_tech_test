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

<br/>
<br/>

3. INSTRUCTIONS TO RUN SCRIPT

    - from devops_tech_test folder run: 
    ```bash
    docker compose up -d
    ```
    - to run a bash shell inside exec_container run:
    ```bash
    docker exec -it exec_container /bin/bash
    ```
    - to run bash shell inside mysql_container run:
    ```bash
    docker exec -it mysql_container /bin/bash
    ```
    - run scipt using(make sure script file is executable <chmod +x update.sh>):
    ```bash
    ./update.sh scripts dev mysql_container devopstt 123456
    ```
        Where:
        - update.sh (file name)
        - scripts (folder with .sql script files)
        - dev (DB user)
        - mysql_container (DB host)
        - devopstt (DB's name inside mysql server)
        - 123456 (user's password)