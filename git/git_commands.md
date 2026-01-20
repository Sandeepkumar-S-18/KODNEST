# Basic Git Commands

Use this table for **quick revision**. Simple commands, clean explanations.

| Command                       | Explanation                                           |
| ----------------------------- | ----------------------------------------------------- |
| `git init`                    | Initialize a new Git repository in the current folder |
| `git status`                  | Check file status (modified, staged, untracked)       |
| `git add .`                   | Add all changed files to staging area                 |
| `git add <file>`              | Add a specific file to staging                        |
| `git commit -m "message"`     | Save staged changes with a commit message             |
| `git log`                     | View full commit history                              |
| `git log --oneline`           | View commit history in one line per commit            |
| `git diff`                    | Show changes between working directory and staging    |
| `git branch`                  | List all local branches                               |
| `git branch <name>`           | Create a new branch                                   |
| `git branch -M main`          | Rename current branch to `main`                       |
| `git checkout <branch>`       | Switch to another branch                              |
| `git checkout -b <branch>`    | Create and switch to a new branch                     |
| `git merge <branch>`          | Merge another branch into current branch              |
| `git remote -v`               | Show connected remote repositories                    |
| `git remote add origin <url>` | Connect local repo to remote (GitHub)                 |
| `git clone <url>`             | Copy a remote repository to local system              |
| `git pull`                    | Fetch and merge changes from remote to local          |
| `git fetch`                   | Fetch changes from remote (no merge)                  |
| `git push`                    | Push local commits to remote repository               |
| `git push -u origin main`     | Push and set upstream branch                          |
| `git reset <file>`            | Unstage a file                                        |
| `git reset --hard`            | Reset all changes (⚠ dangerous)                       |
| `git stash`                   | Temporarily save uncommitted changes                  |
| `git stash pop`               | Restore last stashed changes                          |
| `git rm <file>`               | Delete file and stage the deletion                    |
| `git mv <old> <new>`          | Rename or move a file                                 |

---

### Revision Tip

Most-used daily flow:

`git status → git add → git commit → git push`
