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
#rmdir only deletes empty directories
#rm -r myproject deletes a directory with files inside it

#create files
#echo "hello world" > demo.txt
#printf "hello world\n" > demo2.txt

#less <- opens file in a viewer. 
#"q" to exit viewer
#use arrows to navigate
#e.g. less test.txt
# use less --HELP for manual

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

#R Markdown is a format for literate programming documents.
#Literate programming weaves instructions, documentation and detailed comments in between machine executable code, producing a document that describes the program that is best for human understanding.
#knitR compiles R markdown documents
#this code makes the R markdown different from the final product
#this allows e.g. plots to be automatically added into a word document isntead of producing plots and isnterting them one by one into a word processing document
#create new Rmarkdown file, HTML is generally preferred for debugging purposes
#create R chunks in R markdown using control-alt-I
#echo=false in chunks to prevent code from being shown
#recomemnd adding label to R code chunks e.g. ```{r pressure-summary}
#knitr package compile R markdown using knit function

#shift-alt-T to move view to terminal
#ctrl 1 to shift back to script
#ctrl 2 to shift to console

#output: html_document 
#output: pdf_document 
#output: word_document
#output: github_document

#install.packages('tinytex')
tinytex::install_tinytex()  # install TinyTeX

#why use git and github
#1. version control
# can keep track of changes made to code
# can revert back to previous versionf of files
# can create branches to test
#2. to collaborate
# multiple people can make changes and change code
# people can pull request to suggest changes, which you can accept/deny
#3. to share
# can share code with others

#Clone upsteam repository
#copy the whole local directories/stages (e.g. wd, staging area, local repo)
#mkdir git-example
#cd git-example/
#git clone https://github.com/rairizarry/murders.git
#cd murders
#git status <- check whether there are any changes
#git add <- stage the file
#git commit <-  commit the file
#e.g. git commit -m "adding a new file"
#echo "adding a line" >> new-file.txt
#$ git add new-file.txt
#$ git commit -m "adding a new line to new-file"
#can skip staging part if we add file name to commit command
#echo "adding a second line" >> new-file.txt
#git commit -m "minor change to new-file" new-file.txt
#git log <- keep track of changes
#git log new-file.txt
#git push <- upload to upstream repo
#needs permission
#git fetch <- fetches upstream repo to local repo
#git merge <- changes files in wd to match local repo
#git pull <- equivalent to git fetch followed by git merge
#git pulls matches wd with upstream repo

#creating github local repo and upstream repo
#make upstream repo with github
#cd ~/rprojects/murders
#git init <- turns the directory into a git directory
#1. start moving files into local repo
#git add readme
#git commit -m "first commit. adding readme.txt file just to get started"
#2. connect local repo with github repo
#get remote <- use this to connect repo
#git remote add origin https://github.com/laujuehua/murders.git
#git push 
#git push --set-upstream origin master




