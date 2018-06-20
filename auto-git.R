# Step 1: list the directory
rm(list = ls())

setwd("C://Users//jli2//Desktop//test_directory")
# setwd("C://Users//jli2//Desktop//auto-git")
folders <- dir()

# Step 2: go through the folder -r looking for .git
# Step 3: add folders not under version control to git
# Step 4: synchronize git with GitHub (Set up Authentication)

for (i in folders) {
  temp <- dir(i, recursive = T, all.files = T)
  if (!any(grepl("\\.git", temp))) {
    setwd(i)
    system("C://Users//jli2//AppData//Local//Programs//Git//git-bash.exe", intern = T)
    system("C://Users//jli2//Desktop//auto-git//script", intern = T)
  }
    setwd("C://Users//jli2//Desktop//test_directory") 
}


