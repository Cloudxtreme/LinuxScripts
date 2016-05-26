# remove all .svn folders
find . -name .svn -exec rm -rf {} \;

# replace a string pattern
sed s/origin/new/g filename > newfile

# unzip all zip files in a folder into respective folders
find . -name '*.zip' -exec sh -c 'unzip -d `basename {} .zip` {}' ';'

# add current user's pub key to remote authorized_keys
cat ~/.ssh/id_rsa.pub | ssh USER@HOST "mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys"

# replace a string in a file
sed -i -- 's/foo/bar/g' *
