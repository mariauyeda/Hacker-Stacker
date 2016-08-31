### Team:

Hacker Stackers

### Team Members:

Jim Lengel
Ryker Reed
Nick Davidson
Maria Uyeda
Dom Brassey

### The user stories that define your MVP:

- As a user, I can create an account.
- As a user, I can log on.
- As a user, I can post a question.
- As a user, I can post an answer to a question.
- As a user, I can comment on a question.
- As a user, I can comment on an answer to a question.
- As a user, I can up vote a question.
- As a user, I can up vote an answer.
- As a user, I can down vote a question.
- As a user, I can down vote an answer.


### Git workflow

* Members, *alert team* immediately after pull request.
* Git Maestra, *alert team* immediately after remote merge (everyone pull).

## Ready to get started?
- Github: copy repo (url)
- Local: git clone (url)
- Local: git co -b **development**
- Local: git pull **origin** **development**
- Local: git co -b **(feature)** (this will be in sync with **development**)
- (do your work)
## Ready to push?
- Local: git commit
- Local: git co **development**
- Local: git pull **origin** **development**
- Local: git co **(feature)**
- Local: git merge **development** (merge dev into your feature branch)
- Local: git push **origin** **(feature)** (merge your feature branch into dev remote)
- GitHub: **pull** (feature) to team **development**
- *ALERT THE TEAM* - everyone pause work
- *ALERT THE TEAM* - Git Maestra merges feature into dev on remote
- Local: git co **development**
- Local: git pull **origin** **development**
- Local: git co **(feature)**
- Local: git merge **(feature)** **development**
- Local: git co feature
- (continue doing your work)
