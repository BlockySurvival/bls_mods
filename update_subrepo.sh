git submodule update --recursive --remote $1
git add $1 .gitmodules
git commit -m "updated $1"
git push github master
