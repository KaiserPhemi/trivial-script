#!/bin/zsh
echo 'This script creates a folder on your Desktop, navigates to the folder and copy pdf files into the folder'
echo ''

# Cleans the directory to avoid duplication
echo 'Clears directory is it exists'
rm -R pdf-books-folder
echo ''

# Navigate to Desktop
cd ~/Desktop 
echo ''

# Create folder
echo 'Creating folder on Desktop'
mkdir pdf-books-folder
echo ''

# Copy files
echo 'Copying pdf files to pdf-books-folder'
cp ~/Downloads/*.pdf pdf-books-folder/
echo ''

# list content of new directory and write list to a file
echo 'List content of new directory and write list to a file'
ls -AGl pdf-books-folder > 'directory-content'
echo ''

# show content of file containing list
echo 'Show content of file copied'
cat directory-content | grep "\.pdf"
echo ''

echo 'Done.'

