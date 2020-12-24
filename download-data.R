library(tidyverse)

#local files and GitHub repo will not be synced automatically

#working directory > staging area > local repo > upstream repo
#pull changes from remote repo(github)
#stage (add) files to the local repo
#commit changes to local repo
#push changes to remote repo

#in git terminal,
#yellow > git knows nothing about the file
# to sync, we need to add file, then commit change, then push to local repo
#green > added 
# dont ahve to add all files in local repo to github
# only dont want to share
# add suffix gitignore for files you dont want to keep track of
# these will stop appearing in Git pane
#commiting a change
# whenever we commit a change, we are required to enter a comment describing the change being committed

#unix is the operating syetem of choice in datascience
#linux, shell, and command lines
#facilitates organization of files without using the mouse
#type commands in terminal 
#we can access the terminal without Rstudio by running the gitbash program
#echo "hello world"

#directories and sub directories in a hierarchical nature
#root directory contains all directories on the system
#Note for Windows Users: The typical R installation will make your Documents directory your home directory in R. 
#This will likely be different from your home directory in Git Bash. 
#Generally, when we discuss home directories, we refer to the Unix home directory which for Windows, in this book, is the Git Bash Unix directory.

#working directory
#each terminal open has a wd associated with it
#unix: pwd -> print working directory
#The "/" symbol separates directories, while
#the first "/" at the beginning of the path stands for the root director
#full paths: string that spells out the path you need to follow to get to the directory. e.g. c:/users/documents etc etc
#in unix, ~ refers to nickname for home directory
#e.g. if abc is in home directory, ~/abc

#pwd -> print working directory
#ls -> list directory content
#mkdir -> make directory e.g. mkdir projects
#rmdir -> remove empty directory e.g. remove projects
#cd XXXX or "XXXX"-> change directory
#either type FULL path, or RELATIVE PATH
#e.g. cd projects -> relative path (does not start with / or tilde)
#cd .. -> move back to the parent directory (e.g. cd ..)
#cd ~ -> move to home directory
#cd . -> working directory
#use tab when typing command for autocomplete
#when typing directory names, we can concatenate directories with forward slashes
#equivalent to writing entire path out
#e.g. cd ~/projects -> cd c/users/username/projects
#we can concatenate directory names for relative paths
#e.g. cd../.. <- go back 2 directories
#e.g. cd../docs/reports <- e.g can go back and go to anotehr directory
#cd - <- go back to directory you just left
#cd <- goes to home directory

#mv <- move, WILL OVERWRITE FILES
#e.g. ~/docs/resumes/cv.text ~/docs/reports/
#e.g. cd ~/docs/resume     mv cv.text ../reports/
#e.g. cd ~/docs/reports/    mv ../cv.text ./
#mv can also change name of file
#e.g. cd ~/docs/resume    mv cv.tex to resume.tex
#can combine move and rename
#can also move entire directories
#e.g. mv ~/docs/resumes ~/docs/reports/
#add the last slash to move the directory, instead of renaming it
#cp <- copies the file 
#rm <- remove files, PERMANENT 

#create files
#echo "hello world" > demo.txt
#printf "hello world\n" > demo2.txt

#less <- opens file in a viewer. 
#"q" to exit viewer
#use arrows to navigate
#e.g. less test.txt

#make directory called rprojects in home directory
#cd ~
#mkdir rprojects
#cd rprojects
#mkdir murders
#cd murders
#mkdir data rda 
#ls
#pwd
#current wd is now projects/murders

#always use relative paths when working on a data science project and relative path to a default working directory
#you do not want to use ~ on the code, because this may not work in other computers

url <- "https://raw.githubusercontent.com/rafalab/dslabs/master/inst/extdata/murders.csv"
dest_file <- "data/murders.csv"
download.file(url, destfile = dest_file)
\