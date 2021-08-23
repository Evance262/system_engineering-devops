0. Hello World
Script-  echo "Hello, World" which prints “Hello, World”, followed by a new line to the standard output.

1. Confused smiley
File 1-confused_smiley:  script that displays a confused smiley "(Ôo)'.

2. Let's display a file
Script- cat /etc/passwd: Displays the content of the /etc/passwd file.

3. What about 2?
Script- tail -f /etc/passwd /etc/hosts: Displays the content of /etc/passwd and /etc/hosts.

4. Last lines of a file
Script- tail -10 /etc/passwd: Displays the last 10 lines of /etc/passwd.

5. I'd prefer the first ones actually
Script- head -10 /etc/passwd: Displays the first 10 lines of /etc/passwd/

6. Line #2
Script- awk 'FNR==3 {print}' iacta: Displays the third line of the file iacta..