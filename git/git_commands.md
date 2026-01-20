# Git Basic Commands – Simple & Clear Guide

This file explains **two common Git workflows** in a clean, step‑by‑step way.
Use this as a quick reference while practicing Git.

---

## CASE 1: Project Created Locally → Push to GitHub

### Step 1: Initialize Git in Local Project
```bash
git init
```
Initializes a Git repository in the current folder.

---

### Step 2: Set Branch Name (Recommended)
```bash
git branch -M main
```
Renames the current branch to `main`.

---

### Step 3: Connect Local Repo to GitHub
```bash
git remote add origin <github-repo-url>
```
Links local repository with GitHub repository.

```bash
git remote -v
```
Verifies the remote connection.

---

### Step 4: Check File Status
```bash
git status
```
Shows modified, staged, and untracked files.

---

### Step 5: Add Files to Staging Area
```bash
git add .
# or
git add <file-name>
```
Moves changes to staging.

---

### Step 6: Commit Changes
```bash
git commit -m "Initial commit"
```
Saves changes locally with a message.

---

### Step 7: Push to GitHub (First Time)
```bash
git push -u origin main
```
Pushes code and sets upstream branch.

After this, you can simply use:
```bash
git push
```

---
---

## CASE 2: Repository Created on GitHub → Clone to Local

### Step 1: Clone Repository
```bash
git clone <github-repo-url>
```
Downloads the repository and sets remote automatically.

---

### Step 2: Move Into Project Folder
```bash
cd <repo-folder-name>
```

---

### Step 3: Check Status
```bash
git status
```

---

### Step 4: Add Changes
```bash
git add .
# or
git add <file-name>
```

---

### Step 5: Commit Changes
```bash
git commit -m "Your commit message"
```

---

### Step 6: Push Changes
```bash
git push
```
No branch name needed because upstream already exists.

---

## Quick Notes
- Always **commit before push**
- Use `git status` often
- After first push, `git push` is enough
- After `git clone`, **do NOT add remote again**

---

## Easy Memory Trick

**Local → GitHub**  
`init → branch → remote → add → commit → push`

**GitHub → Local**  
`clone → add → commit → push`

---

Keep this file in your project for quick revision 🚀

