# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

version control keeps track of changes you make in your code. You can go back and look at past versions for reference or you can roll back to a previous save point if something new didn't work out.

* What is a branch and why would you use one?

a branch lets you create a copy of your master code so that you can work your new code or changes on it. you then marge that back into master code once it is done. this prevents you from messing up the integrity of the master code.

* What is a commit? What makes a good commit message?

a commit creates a savepoint for your version control. if you don't commit, all the work you did will no be recorded. you should commit often and wisely. a good commit message describes plainly what the change or addition to the code is.

* What is a merge conflict?

merge conflic is when two branches make different changes to the same line of code and when you try to merge them back Git does not understand which change you actually want. Another conflict is when one branch adds something and the second branch deletes it. Again, git does not know which change you actually want to make.