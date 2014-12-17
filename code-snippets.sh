# remove all .svn folders
find . -name .svn -exec rm -rf {} \;

# replace a string pattern
sed s/origin/new/g filename > newfile
