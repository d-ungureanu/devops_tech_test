1. Extracting info for TODO list:
    - update DB by running all sql scripts from dbscripts folder
    - filenames irregular, might contain gaps(remove spaces)
    - update based on DB version 
        - DB version in "versionTable" on row "version"
        - if DB version match with highest number in dbscripts, no update
        - all scripts with numbers high than DB version executed in numerical order
    - update script example for Bash:
        ./db-update.sh dbscripts myUser myDbServer testTechDb password
    
    - languages for update script:
        - Bash
        - Python 3
        - Ruby 2.7
        - Powershell 7
    - DB engine:
        - MySql 8.0

2. 