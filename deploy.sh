#/bin/bash
git checkout github
git pull
git checkout master
git merge github
git diff --name-only HEAD^ | xargs touch
make
git commit -a -m "deploy html"
git push
git checkout github
