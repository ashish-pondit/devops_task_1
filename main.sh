!/bin/bash

git clone $REPO code

cd code

clear

git log -n $N --pretty="Author: %an%nCommit: %n%w(100,4,4)%B%n%n"
