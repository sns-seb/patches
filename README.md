# How to

1. Fork this project in some directory (let's say `~/DEV/patches`)
2. go to directory `script/patch` of your SonarQube clone (let's say `~/DEV/sonarqube/script/patches`)
3. create a symlink to any of the patches you want to use in this clone (eg. `ln -s ../../../patches/debug.sh`)
4. compile SonarQube. You can now use the `-p` option of the `start.sh` script with the name of any script in `~/DEV/sonarqube/script/patches` (without the `.sh`): eg. `./start.sh -p debug`
