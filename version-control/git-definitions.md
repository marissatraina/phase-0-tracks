# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* **What is version control?  Why is it useful?**
Version control is the "google docs" of the code world. It is a tool that allows us to view the entire history of revisions to one or more files, and merge revisions made by different people. This is extremely useful when a large team is working on the same code because it allows a group of people to work at the same time without stepping on each others toes.

* **What is a branch and why would you use one?**
A branch can be seen as a sectioned-off work space for file revisions. Branching is a safe way to make, save, and bookmark personal revisions without altering the base code (located on the master branch) that everyone is working on. It is also useful for keeping track of history of revisions and organizing ones personal work aside from the groups. Pull requests allow for teammates to look over code before merging, and this is only made possible with branching.

* **What is a commit? What makes a good commit message?**
A commit is a record of a change made to the repository, almost like an official "save" or screenshot of a current version of the file you are working on. A good commit message is detailed and specific highlighting the important change made to the file.

* **What is a merge conflict?**
A merge conflict is when two separate versions/revisions of the same file oppose each other. For example if I say the octopus-hat is red but my teammate says the octopus-hat is blue, git will alert us of the conflict and the two of us will have to decide on what color the hat will be before completing the merge.