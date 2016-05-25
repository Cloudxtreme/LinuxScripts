# remove all .svn folders
find . -name .svn -exec rm -rf {} \;

# replace a string pattern
sed s/origin/new/g filename > newfile

# unzip all zip files in a folder into respective folders
find . -name '*.zip' -exec sh -c 'unzip -d `basename {} .zip` {}' ';'
