# How does tracking and adding changes make developers' lives easier?
This helps them remember the work they did as well as communicates their work to other developers.

# What is a commit?
A commit is a snapshot, a way to save the changes that were made. Changes could be adding, moving, or deleting a new directory or file. Any change that you want to make within a file is important to commit.

# What are the best practices for commit messages?
The first line is often a subject line that summarizes the changes made and the first letter should be capitalized. Skip a line and being writing a paragraph in the imperative, "Fix bug" not "Fixed bug," as if you are saying what needs to be done, not what was done (past tense). The paragraph should be about 50 (although some sources say 72 characters). The content of a commit should include description of what motivated the change and the changes made. It could include resources used and should be clear for another developer to understand.

# What does the HEAD^ argument mean?
HEAD is the commit you are currently on. HEAD^ is the last commit you made. HEAD~3, HEAD~4, etc. trace back to the 3rd, 4th, etc commit back. This argmuent is used when you want to unstage or change files that were committed.

# What are the 3 stages of a git change and how do you move a file from one stage to the other?
1) make changes in the file or directory, these are untracked at first (or is the first stage have to do with making a new branch of the master?)
2) stage the changes for commit with "git add," "git add ." will stage all the changes made
3) commit the changes that have been staged with the command "git commit -m 'message in quotation marks'"

# Write a handy cheatsheet of the commands you need to commit your changes.
git add = to move the changes from untracked to staged

git commit -m "message" = make the commit

git log = to check the commit history

git status = to check the status of all the files in the local repository

#What is a pull request and how do you create and merge one?
A pull request is when commits that are pushed to the remote repository are requested to be merged with the master branch. To create one, the changes first have to be pushed from the local repository to the remote repostiry. All changes that are to be made need to be up to date. The command "git push origin feature-branch-name" will push the changes to the remote repository, GitHub. From GitHub, you make a pull request by 1) clicking the "compare and pull request" button. 2) Verify that the base branch and comparison branch names are correct. 3) Fill out the title for the request and the description of what is to be changed. 4) Click "Create pull request." In a real job, another developer would be responsible for reviewing and merging the code to the master branch. 5) It is a good idea to delete the feature branch after it is merged.

#Why are pull requests preferred when working with team?
Pull requests are preferred when working with a team because they allow team memembers to review, double check, and give feedback on each others' work.