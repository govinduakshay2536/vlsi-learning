# vlsi-learning
This repo consists of my vlsi learing 
 commands to push files in github
git add "file"
git commit -m "msg"
git push origin main


📁 🔹 REPOSITORY BASICS
git init → create repo
git clone <url> → download repo
git status → check repo state
git help → get help
➕ 🔹 STAGING (ADD FILES)
git add file.txt → stage one file
git add . → stage all files
git add *.v → stage specific extension
git add -A → stage all changes
git restore --staged file.txt → unstage file
💾 🔹 COMMITS
git commit -m "msg" → commit changes
git commit -am "msg" → add + commit (tracked files)
git commit --amend → edit last commit
git commit --amend -m "new msg" → change message
🔍 🔹 HISTORY & LOGS
git log → full history
git log --oneline → short log
git log --graph → visual graph
git show → show commit details
git diff → show changes
git diff --staged → staged changes
🌿 🔹 BRANCHING
git branch → list branches
git branch new-branch → create branch
git checkout new-branch → switch branch
git checkout -b new-branch → create + switch
git switch new-branch → modern switch
git branch -d branch-name → delete branch
🔀 🔹 MERGING & REBASE
git merge branch-name → merge branch
git rebase main → rebase branch
git rebase --continue → continue rebase
git merge --abort → cancel merge
🔗 🔹 REMOTES (GitHub)
git remote add origin <url> → connect repo
git remote -v → view remotes
git remote remove origin → remove remote
git remote set-url origin <url> → change URL
⬆️ 🔹 PUSH (UPLOAD)
git push → push changes
git push origin main → push to branch
git push -u origin main → set upstream
git push --force → force push ⚠️
⬇️ 🔹 PULL & FETCH
git pull → fetch + merge
git pull origin main → pull specific branch
git fetch → download only
git fetch --all → fetch all remotes
🧹 🔹 CLEANUP & RESET
git reset file.txt → unstage file
git reset --soft HEAD~1 → undo commit (keep changes)
git reset --hard HEAD~1 → delete commit ⚠️
git clean -f → remove untracked files
🧰 🔹 STASH (SAVE TEMP WORK)
git stash → save changes temporarily
git stash list → list stashes
git stash apply → restore stash
git stash drop → delete stash
🗑️ 🔹 FILE OPERATIONS
git rm file.txt → delete file
git mv old new → rename file
🧠 🔹 ADVANCED USEFUL
git tag v1.0 → create tag
git blame file.txt → see who changed lines
git reflog → see all actions
git cherry-pick <id> → pick commit
💻 🔹 VS CODE TERMINAL & SHORTCUTS
code . → open current folder in VS Code
code file.txt → open file
`Ctrl + `` → open terminal
Ctrl + Shift + P → command palette
Ctrl + P → quick file open
Ctrl + Shift + E → explorer
Ctrl + / → comment line
Ctrl + Shift + G → source control panel
Ctrl + Shift + N → new window
