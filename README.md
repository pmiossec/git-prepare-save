# git prepare-save

# Goal

Git script that could be used to prepare a git repository for:

* copy/move elsewhere efficiently
* backuping

It will store all the changes and data in the git repository and empty the working directory (no data lost!).

# What do it do

1. Verify that the folder is a git repository
1. Save all the working directory changes in a stash
1. Garbage collect the git repository to create big pack files easy to copy (and with a total size smaller)
1. Delete all the files and folders tracked in the working directory folder
1. You could then copy efficiently the folder somewhere else
1. You could restore the working directory content with: `git reset --hard HEAD`"

# Use

* In a git repository folder

`git prepare-save`

* In a folder containing a lot of git repositories as sub-folders

`git prepare-save-all`
