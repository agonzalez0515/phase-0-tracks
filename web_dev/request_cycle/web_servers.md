What are some of the key design philosophies of the Linux operating system?


In your own words, what is a VPS (virtual private server)? What, according to your research, are the advantages of using a VPS?
It's a mini computer online that can run any system and host a server for your program/app/website.  You use the command line like a regular computer. 

Optional bonus question: Why is it considered a bad idea to run programs as the root user on a Linux system?
Root has all access to everything in your system. If malware/bug was to attack your system and you were using root, it could destroy everything.  If you were using it at the user level, there's some stuff that would be saved because there's a wall between the malware/bug and the root. The root doesn't even ask for confirmation, it just does whatever you ask it to.