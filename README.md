style-be-hippo
==============

integration of style-be and hippo

##Prep for development
1. install jdk 1.7 21
2. install maven 3.1
3. install vagrant <http://docs.vagrantup.com/v2/installation/>
4. install vbox <https://www.virtualbox.org>

## Development
1. clone this git repo
2. cd to style-be-hippo
3. source init/default_bashrc
4. **get latest dev:** git checkout development
1. **create your feature branch:** git checkout -b my_cool_feature
1. make your changes and commit locally as normal (You are committing early and often to track your progress, aren’t you?)
1. **squash when you are done with your feature development** ./squash.sh (read rebase -i for more info)
1. **update your branch with latest dev:** getLatestDev.sh
1. **push your feature to developement** ship.sh
2. **build development** mvn clean install
3. **Push changes to origin** git push

To Release:
===========
1. test and commit all local changes and push to central
1. **check out master:** git co master
1. **merge changes to master:** mergeToMaster.sh
1. **verify your build:** mvn -o clean install
1. **do a dry run:** mvn release:prepare -DdryRun=true
1. **perform release:** mvn release:clean release:prepare release:perform
1. **push everything to origin:** git push --all
1. git co development
1. git rebase master
1. git push


