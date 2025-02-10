!/bin/bash

git clone https://github.com/ohmyzsh/ohmyzsh.git code

cd code

git log --pretty="Author: %an%nCommit: %n%w(100,4,4)%B%n%n"
