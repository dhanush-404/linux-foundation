# Linux Masterclass Notes

These are my personal notes while learning Linux.

I am learning Linux from the basics and practicing the commands in the terminal. I am writing the concepts in simple words based on what I understood.

---

# 1. Introduction to Linux

## What is Linux?

Linux is an operating system.

It is used in many places such as:

* Personal computers
* Servers
* Cloud platforms
* Data centers
* Embedded systems

Linux is open source, which means its source code is available for people to view, modify and share.

## Linux Kernel

The Linux kernel is the main part of the Linux operating system.

It acts as a bridge between the applications and the computer hardware.

For example:

```text
Applications
     ↓
Linux Kernel
     ↓
Hardware
```

The kernel handles things like:

* CPU
* Memory
* Processes
* Devices
* Filesystem

## Linux Distribution

Linux itself is the kernel.

A Linux distribution combines the Linux kernel with other software to create a complete operating system.

Some popular Linux distributions are:

* Ubuntu
* Debian
* Fedora
* Arch Linux
* Kali Linux
* Red Hat Enterprise Linux

I am using Garuda Linux for my practice.

## Command Line

Linux can be used through a graphical interface, but a lot of Linux administration is done using the command line.

The command line allows me to type commands in the terminal.

Example:

```bash
pwd
```

This command shows my current location.

## Terminal

The terminal is the application where I can enter Linux commands.

For example:

```bash
ls
```

This shows the files and directories in the current location.

## Shell

The shell takes the commands I type and passes them to the operating system.

One common shell is Bash.

I can check my shell using:

```bash
echo $SHELL
```

## Root User

The root user is the administrator user in Linux.

Root has permission to perform almost all operations on the system.

Because root has high privileges, I should be careful when running commands as root.

## sudo

`sudo` allows a normal user to execute commands with administrator privileges.

Example:

```bash
sudo pacman -Syu
```

Since I am using Garuda Linux, `pacman` is the package manager used in this example.

---

# Commands I Learned

| Command       | Purpose                     |
| ------------- | --------------------------- |
| `pwd`         | Shows the current directory |
| `ls`          | Shows files and directories |
| `whoami`      | Shows the current username  |
| `echo $SHELL` | Shows the current shell     |
| `uname -r`    | Shows the kernel version    |

---

# My Understanding

From this section, I understood that Linux is an operating system based around the Linux kernel.

I also learned that I can control Linux using commands through the terminal.

The shell interprets the commands, and `sudo` can be used when administrator permissions are required.

# My Linux Practice

I ran the basic commands on my own system.

## whoami

```bash
whoami
```

Output:

```text
user
```

This shows the username I am currently logged in with.

## pwd

```bash
pwd
```

Output:

```text
/home/user
```

This shows the directory I am currently working in.

## ls

```bash
ls
```

I used `ls` to see the files and folders inside my current directory.

I can see my `linux-masterclass-poc` folder in the output.

## echo $SHELL

```bash
echo $SHELL
```

Output:

```text
/usr/bin/bash
```

This shows that I am using Bash as my shell.

## uname -r

```bash
uname -r
```

Output:

```text
7.2.3-arch1-3
```

This shows my Linux kernel version.

## cat /etc/os-release

```bash
cat /etc/os-release
```

My system shows:

```text
NAME="Omarchy"
PRETTY_NAME="Omarchy"
ID=omarchy
ID_LIKE=arch
VERSION_ID="4.0.3"
```

So I am currently using **Omarchy 4.0.3**, which is based on Arch Linux.

## What I learned from this practice

I learned how to check some basic information about my Linux system.

I also learned that commands can give me useful information about:

* My username
* My current directory
* Files and folders
* My shell
* Kernel version
* Linux distribution

# 2. Files and Directories

Linux stores files and directories in a filesystem.

A directory is basically a folder where files and other directories can be stored.

## Home Directory

I can go to my home directory using:

```bash
cd ~
```

I can check my current location using:

```bash
pwd
```

Example:

```text
/home/omarchy
```

`~` is a shortcut for the current user's home directory.

## ls

I used `ls` to see the contents of my home directory.

Example:

```bash
ls
```

It showed directories such as:

```text
Documents
Downloads
Music
Pictures
Projects
Videos
Work
```

The exact folders can be different depending on the system.

## mkdir

`mkdir` is used to create a new directory.

I practiced it with:

```bash
mkdir linux-test
```

This created a new directory called `linux-test`.

## cd

`cd` is used to move between directories.

For example:

```bash
cd linux-test
```

This moved me into the `linux-test` directory.

I can go back to the previous directory using:

```bash
cd ..
```

## rm

I used `rm` to remove the test directory.

```bash
rm -r linux-test
```

The `-r` option allows `rm` to remove a directory and its contents.

### What I practiced

```bash
cd ~
pwd
ls
mkdir linux-test
cd linux-test
cd ..
rm -r linux-test
```

### What I understood

I learned how to move around the Linux filesystem and create and remove directories.

I also learned that:

* `~` means my home directory.
* `.` means the current directory.
* `..` means the parent directory.
* `cd` is used to change directories.
* `mkdir` creates directories.
* `rm -r` can remove directories.

# 3. Working with Files

In this section I practiced creating, viewing, writing, copying and renaming files.

## touch

`touch` can be used to create a new empty file.

I created a file called `hello.txt`:

```bash
touch hello.txt
```

After creating it, I checked it using:

```bash
ls
```

The file was created successfully.

## echo

I used `echo` to put text inside the file.

```bash
echo "hello omarchy" > hello.txt
```

Then I checked the content:

```bash
cat hello.txt
```

Output:

```text
hello omarchy
```

## `>` and `>>`

I learned that `>` and `>>` work differently.

### `>`

`>` writes content to a file and replaces the existing content.

Example:

```bash
echo "hello omarchy" > hello.txt
```

### `>>`

`>>` adds new content to the end of the file.

I practiced:

```bash
echo "I am learning Linux" >> hello.txt
```

Then:

```bash
cat hello.txt
```

Output:

```text
hello omarchy
I am learning Linux
```

## cat

`cat` can be used to display the contents of a file.

```bash
cat hello.txt
```

## cp

`cp` is used to copy a file.

I copied my file using:

```bash
cp hello.txt hello-copy.txt
```

This created another file called `hello-copy.txt`.

## mv

`mv` can be used to move or rename a file.

I renamed the copied file:

```bash
mv hello-copy.txt linux-notes.txt
```

After this, I had:

```text
hello.txt
linux-notes.txt
```

## Removing the Practice Files

After finishing the practice, I removed the test directory:

```bash
cd ..
rm -r file-practice
```

## What I Practiced

```bash
touch hello.txt
echo "hello omarchy" > hello.txt
cat hello.txt
echo "I am learning Linux" >> hello.txt
cp hello.txt hello-copy.txt
mv hello-copy.txt linux-notes.txt
rm -r file-practice
```

## What I Understood

I learned how to create and work with basic files in Linux.

The main commands I practiced were:

* `touch` → create a file
* `echo` → write text
* `cat` → read file content
* `cp` → copy a file
* `mv` → move or rename a file
* `rm` → remove a file or directory

# 4. More File and Directory Commands

I practiced some more commands for working with files and directories.

## cp

`cp` is used to copy files.

I created a copy of `file1.txt`:

```bash
cp file1.txt file1-copy.txt
```

After running `ls`, I could see both files.

```text
file1.txt
file1-copy.txt
```

## mv

`mv` can be used to move a file or rename a file.

I renamed `file2.txt`:

```bash
mv file2.txt my-notes.txt
```

The file was renamed to:

```text
my-notes.txt
```

I also used `mv` to move a file into a directory:

```bash
mv file3.txt backup/
```

The file was then inside the `backup` directory.

## mkdir

`mkdir` creates a new directory.

I created a directory called `backup`:

```bash
mkdir backup
```

## Copying a File to a Directory

I copied `file1.txt` into the `backup` directory:

```bash
cp file1.txt backup/
```

I checked the directory using:

```bash
ls backup
```

It showed:

```text
file1.txt
file3.txt
```

## rm

`rm` is used to remove files.

I removed the copied file:

```bash
rm file1-copy.txt
```

After that, the file was no longer present.

## My Practice

I practiced the following commands:

```bash
touch file1.txt file2.txt file3.txt
cp file1.txt file1-copy.txt
mv file2.txt my-notes.txt
mkdir backup
mv file3.txt backup/
cp file1.txt backup/
rm file1-copy.txt
```

## What I Understood

I learned that `cp` makes a copy while `mv` can move or rename something.

I also learned that I can use a directory name with these commands to copy or move files into a directory.

Finally, `rm` can be used to remove files.

# 5. Viewing File Content

I also practiced different commands for reading the contents of a file.

## cat

`cat` is used to display the contents of a file.

I created a small practice file and used:

```bash
cat notes.txt
```

Output:

```text
Linux is an operating system.
I am learning Linux commands.
This is my practice file.
```

## head

`head` is used to see the beginning of a file.

```bash
head notes.txt
```

By default, it showed the first few lines of the file.

I can also specify how many lines I want to see.

```bash
head -n 2 notes.txt
```

Output:

```text
Linux is an operating system.
I am learning Linux commands.
```

## tail

`tail` is used to see the end of a file.

```bash
tail notes.txt
```

I can also specify the number of lines:

```bash
tail -n 2 notes.txt
```

Output:

```text
I am learning Linux commands.
This is my practice file.
```

## less

`less` is useful when I want to read a file page by page.

I practiced it using:

```bash
less notes.txt
```

I can use the arrow keys to move around and press `q` to exit.

## What I Practiced

```bash
cat notes.txt
head notes.txt
head -n 2 notes.txt
tail notes.txt
tail -n 2 notes.txt
less notes.txt
```

## What I Understood

I learned that there are different commands for viewing files.

* `cat` → displays the file
* `head` → shows the beginning
* `tail` → shows the end
* `less` → lets me read the file page by page

The `-n` option can be used with `head` and `tail` to specify the number of lines.

# File Permissions

Linux has permissions for files and directories. Permissions decide who can read, write, or execute a file.

I used `ls -l` to see the permissions of a file.

```bash
ls -l test.txt
```

My output showed:

```text
.rw-r--r--     0 dhanush 14 Sep 18:55  test.txt
```

The permission part is:

```text
.rw-r--r--
```

It can be understood as:

```text
. rw- r-- r--
  │   │   │
  │   │   └── Others
  │   └────── Group
  └────────── Owner
```

The permissions are:

* `r` = read
* `w` = write
* `x` = execute
* `-` = permission is not given

For example:

```text
rw-
```

means read and write are allowed, but execute is not allowed.

## chmod

`chmod` is used to change file permissions.

I practiced:

```bash
chmod u+x test.txt
```

Here:

* `u` = user/owner
* `+` = add permission
* `x` = execute permission

After running the command, the permission changed from:

```text
.rw-r--r--
```

to:

```text
.rwxr--r--
```

So the owner now has read, write, and execute permissions.

## What I understood

`ls -l` helps me see file permissions.

`chmod` helps me change file permissions.

The three permission groups are:

1. Owner
2. Group
3. Others

# Wildcards and Pattern Matching

Wildcards are used to match multiple file names.

## `*` wildcard

The `*` wildcard can match any number of characters.

For example:

```bash
ls *.txt
```

This shows all files that end with `.txt`.

In my practice, it showed:

```text
file1.txt
file2.txt
file3.txt
notes.txt
```

Another example:

```bash
ls *.log
```

This can show all files ending with `.log`.

## `?` wildcard

The `?` wildcard matches exactly one character.

For example:

```bash
ls file?.txt
```

This matched:

```text
file1.txt
file2.txt
file3.txt
```

The `?` represents the single character between `file` and `.txt`.

## Bash brace expansion

I also used:

```bash
touch file{1..3}.txt
```

This created:

```text
file1.txt
file2.txt
file3.txt
```

This is a Bash feature called brace expansion.

## What I understood

* `*` can match multiple characters.
* `?` matches one character.
* Wildcards are useful when working with many files.
* Bash brace expansion can quickly create a sequence of names.

# Command History and Autocomplete

The Linux terminal keeps a history of commands that I have previously run.

## `history`

I used:

```bash
history
```

This shows the commands I previously executed in the terminal.

To see only the latest commands:

```bash
history | tail
```

The `|` symbol sends the output of one command to another command.

Here, the output of `history` is sent to `tail`.

## Search command history with `Ctrl + R`

I can press:

```text
Ctrl + R
```

to search for a command that I previously used.

For example, I can press `Ctrl + R` and type:

```text
mkdir
```

The terminal searches my previous commands for `mkdir`.

Pressing `Ctrl + R` again can search older matching commands.

## Tab autocomplete

The `Tab` key can autocomplete commands, directories, and file names.

For example:

```bash
cd ~/Pro
```

Pressing `Tab` can complete the directory name:

```bash
cd ~/Projects/
```

This is useful because I don't have to type the full name every time.

## What I understood

* `history` shows previous commands.
* `history | tail` shows the latest commands.
* `Ctrl + R` searches previous commands.
* `Tab` helps autocomplete commands, files, and directories.
* These features make working in the terminal faster.

# alias

`alias` is used to create a short name for a command.

For example, I created an alias:

```bash id="0f7r0n"
alias ll='ls -l'
```

Now when I run:

```bash id="v4z7q1"
ll
```

it works like:

```bash id="8pj3dq"
ls -l
```

I can check the alias using:

```bash id="q6u2m5"
alias ll
```

This shows:

```text id="c5l1de"
alias ll='ls -l'
```

The alias I created is temporary for the current shell session.

## What I understood

`alias` helps me create a short name for a command that I use often.

---

# nohup

`nohup` is used to run a command so that it can continue even if the terminal session is closed.

I practiced:

```bash id="5q8n2m"
nohup echo "hello omarchy" > nohup-output.txt 2>&1 &
```

Then I checked the output:

```bash id="3c8s6x"
cat nohup-output.txt
```

I got:

```text id="2d0s5f"
nohup: ignoring input
hello omarchy
```

The command also displayed:

```text id="9xk1m4"
[1] 96168
```

The number represents the background job/process information.

### Important parts

```text id="2k6t8n"
nohup  → allows the command to continue without the terminal session
>      → redirects output to a file
2>&1   → redirects errors to the same output
&      → runs the command in the background
```

The `nohup: ignoring input` message is normal. It means `nohup` is not taking input from the terminal.

## What I understood

`nohup` is useful when I want a command or script to keep running after I disconnect from the terminal.

`&` runs the command in the background.

# Hard Links and Symbolic Links

Linux supports different types of links. The two types I practiced are:

* Hard link
* Symbolic link (soft link)

## Symbolic Link

A symbolic link is like a shortcut to another file.

I created a file:

```bash
echo "hello omarchy" > original.txt
```

Then I created a symbolic link:

```bash
ln -s original.txt shortcut.txt
```

When I used:

```bash
ls -l
```

I could see:

```text
shortcut.txt -> original.txt
```

This shows that `shortcut.txt` points to `original.txt`.

## Hard Link

I created a hard link using:

```bash
ln original.txt hardlink.txt
```

Then I used:

```bash
ls -li
```

The output showed the same inode number for both files:

```text
81136  hardlink.txt
81136  original.txt
81139  shortcut.txt -> original.txt
```

The same inode number means `original.txt` and `hardlink.txt` refer to the same underlying file data.

## Testing the difference

I removed the original file:

```bash
rm original.txt
```

After removing it, the hard link still worked:

```bash
cat hardlink.txt
```

Output:

```text
hello omarchy
```

But the symbolic link no longer worked:

```bash
cat shortcut.txt
```

It showed:

```text
cat: shortcut.txt: No such file or directory
```

This happened because the symbolic link was pointing to `original.txt`, and that file was removed.

## What I understood

A **hard link** is another name for the same underlying file data and has the same inode number.

A **symbolic link** points to the path of another file and has its own inode.

If the original file is removed:

* Hard link can still work.
* Symbolic link can become a broken link.

## Background Jobs and Process Management

Linux allows us to run programs in the background. This is useful when we want a command to keep running while we continue using the terminal.

### 1. Run a command in the background

```bash
sleep 300 &
```

The `&` at the end runs the command in the background.

Example:

```text
[1] 99035
```

Here, `99035` is the **PID (Process ID)** of the `sleep` process.

---

### 2. Check background jobs

```bash
jobs
```

Example:

```text
[1]+  Running                    sleep 300 &
```

This shows that the background job is currently running.

---

### 3. Check running processes

```bash
ps
```

Example:

```text
PID     TTY      TIME     CMD
85375   pts/0    00:00:00 bash
99035   pts/0    00:00:00 sleep
99125   pts/0    00:00:00 ps
```

`ps` shows the processes running in the current terminal.

Important columns:

* `PID` → Process ID
* `TTY` → Terminal associated with the process
* `TIME` → CPU time used
* `CMD` → Command that started the process

---

### 4. Stop a process using `kill`

First, find the PID of the process.

In my practice, the PID was:

```text
99035
```

Then:

```bash
kill 99035
```

This sends a signal to stop the process.

After killing the process:

```bash
jobs
```

No job was shown, which means the background `sleep` process was stopped.

### Important

`ps` and `kill` are two different commands.

Wrong:

```bash
ps kill 99035
```

Correct:

```bash
kill 99035
```

---

### 5. Check all processes

```bash
ps aux
```

This displays more information about processes running on the system.

---

### 6. Monitor processes continuously

```bash
top
```

`top` displays running processes and updates the information continuously.

Press `q` to exit `top`.

### What I understood

* `&` runs a command in the background.
* `jobs` shows background jobs from the current shell.
* `ps` shows running processes.
* Every process has a PID.
* `kill PID` can be used to stop a process.
* `ps aux` gives more detailed process information.
* `top` can be used to monitor processes continuously.

### What I practiced

```bash
sleep 300 &
jobs
ps
kill 99035
jobs
```

The `sleep` process was successfully stopped using its PID.

## grep and Pipeline Commands

`grep` is used to search for text inside a file or command output.

### 1. Basic grep

```bash
grep "Linux" notes.txt
```

This searches for lines containing `Linux`.

Example output:

```text
Linux is an operating system.
I am learning Linux commands.
Linux is open source.
Linux is used in servers.
```

---

### 2. Search for a specific word

```bash
grep "learning" notes.txt
```

Output:

```text
I am learning Linux commands.
```

---

### 3. Case-insensitive search

```bash
grep -i "linux" notes.txt
```

The `-i` option makes the search case-insensitive.

It will match `Linux`, `linux`, `LINUX`, etc.

---

### 4. Show line numbers

```bash
grep -n "Linux" notes.txt
```

Example:

```text
1:Linux is an operating system.
2:I am learning Linux commands.
3:Linux is open source.
5:Linux is used in servers.
```

The number before each line is the line number.

---

## Pipeline (`|`)

The pipe symbol `|` is used to send the output of one command as input to another command.

### 5. cat with grep

```bash
cat notes.txt | grep "Linux"
```

Here:

```text
cat notes.txt
      ↓
      |
      ↓
grep "Linux"
```

`cat` displays the file and the pipe sends that output to `grep`.

---

### 6. ps with grep

We can also use a pipeline with process commands.

```bash
ps aux | grep "bash"
```

This displays processes and searches for `bash`.

Another example:

```bash
ps aux | grep "sleep"
```

This searches the process list for `sleep`.

Sometimes the output also contains the `grep` command itself. This happens because `grep` is also a process while the command is running.

---

### 7. history with grep

We can search our command history:

```bash
history | grep "grep"
```

This shows previous commands containing `grep`.

---

### 8. Multiple commands using pipelines

We can connect more than two commands together.

```bash
cat notes.txt | grep "Linux" | wc -l
```

Output:

```text
4
```

Here:

* `cat notes.txt` → displays the file
* `|` → sends the output to the next command
* `grep "Linux"` → finds lines containing `Linux`
* `|` → sends the matching lines to the next command
* `wc -l` → counts the lines

The result is `4` because there are four lines containing `Linux`.

### What I understood

* `grep` searches for text.
* `grep -i` performs a case-insensitive search.
* `grep -n` displays line numbers.
* `|` is called a **pipe**.
* A pipe sends the output of one command to another command.
* Multiple commands can be connected using pipes.
* `wc -l` can be used to count lines.

### What I practiced

```bash
grep "Linux" notes.txt
grep "learning" notes.txt
grep -i "linux" notes.txt
grep -n "Linux" notes.txt

cat notes.txt | grep "Linux"
ps aux | grep "bash"
ps aux | grep "sleep"
history | grep "grep"

cat notes.txt | grep "Linux" | wc -l
```

## SSH - Secure Shell

SSH (Secure Shell) is used to connect to another Linux machine through the terminal.

For practice, I connected to my own machine using `localhost`.

### 1. Check SSH server status

```bash
systemctl status sshd
```

Initially, the SSH server was not running:

```text
Active: inactive (dead)
```

I started it using:

```bash
sudo systemctl start sshd
```

After starting it:

```text
Active: active (running)
```

The SSH server was listening on port `22`.

---

### 2. Connect using SSH

```bash
ssh localhost
```

The first time I connected, SSH asked me to verify the host:

```text
The authenticity of host 'localhost (::1)' can't be established.
Are you sure you want to continue connecting (yes/no/[fingerprint])?
```

I entered:

```text
yes
```

SSH then asked for my Linux user password and connected successfully.

---

### 3. Check the logged-in user

Inside the SSH session:

```bash
whoami
```

Output:

```text
omarchy
```

This shows the user account currently being used.

---

### 4. Check the current directory

```bash
pwd
```

Output:

```text
/home/omarchy
```

This shows the home directory of the logged-in user.

---

### 5. Exit the SSH session

```bash
exit
```

Output:

```text
logout
Connection to localhost closed.
```

This returns to the original terminal session.

### What I understood

* `ssh` is used to connect to a remote Linux machine.
* `localhost` means the current machine.
* SSH normally uses port `22`.
* `sshd` is the SSH server service.
* `systemctl start sshd` starts the SSH server.
* `whoami` shows the current user.
* `pwd` shows the current directory.
* `exit` closes the SSH session.

### What I practiced

```bash
sudo systemctl start sshd
systemctl status sshd
ssh localhost
whoami
pwd
exit
```

I successfully connected to my own machine using SSH.

## SCP - Secure Copy

SCP (Secure Copy) is used to securely copy files between machines using SSH.

For practice, I copied a file from my local machine to my own machine using `localhost`.

### 1. Create a file

```bash id="4ij7qf"
echo "SCP practice file" > scp-source.txt
```

This created a file called `scp-source.txt`.

### 2. Copy the file using SCP

```bash id="qz4kcs"
scp scp-source.txt localhost:/tmp/
```

The file was successfully copied to the `/tmp/` directory.

Example output:

```text id="w4w3k7"
scp-source.txt    100%   18    30.4KB/s   00:00
```

### 3. Verify the copied file

I used SSH to read the file from `/tmp/`:

```bash id="k6k5y3"
ssh localhost "cat /tmp/scp-source.txt"
```

Output:

```text id="c2x1vr"
SCP practice file
```

This confirmed that the file was successfully transferred.

### What I understood

* `scp` means Secure Copy.
* SCP uses SSH for secure file transfer.
* `localhost` refers to my own machine.
* `/tmp/` is the destination directory in this practice.
* SCP can copy files between local and remote machines.

### What I practiced

```bash id="0t9lzr"
echo "SCP practice file" > scp-source.txt
scp scp-source.txt localhost:/tmp/
ssh localhost "cat /tmp/scp-source.txt"
```

The file was successfully copied and verified.

## chmod - Change File Permissions

`chmod` is used to change the permissions of files and directories.

### 1. Check file permissions

```bash
touch test.txt
ls -l test.txt
```

My file initially showed:

```text
.rw-r--r--
```

---

### 2. Using numeric permissions

We can use numbers with `chmod`.

```bash
chmod 644 test.txt
```

Then:

```bash
ls -l test.txt
```

The permission remained:

```text
rw-r--r--
```

### Understanding `644`

Each number represents permissions for:

```text
Owner   Group   Others
  6       4       4
```

The values are:

```text
4 = read
2 = write
1 = execute
```

So:

```text
6 = 4 + 2 = read + write
4 = read
4 = read
```

Therefore:

```text
644 = rw-r--r--
```

---

### 3. Using `755`

```bash
chmod 755 test.txt
```

Then:

```bash
ls -l test.txt
```

My output showed:

```text
.rwxr-xr-x
```

`755` means:

```text
Owner   = 7 = read + write + execute
Group   = 5 = read + execute
Others  = 5 = read + execute
```

Therefore:

```text
755 = rwxr-xr-x
```

---

### 4. Symbolic chmod

Permissions can also be changed using letters.

```bash
chmod o-w test.txt
```

Here:

* `o` → others
* `-` → remove
* `w` → write permission

So `o-w` means:

**Remove write permission from others.**

In my practice, the permission did not visibly change because `755` already gives others only `r-x`, so they did not have write permission.

### Common chmod examples

```bash
chmod 644 file.txt
chmod 755 script.sh
chmod u+x script.sh
chmod u-x script.sh
chmod o-w file.txt
```

### What I understood

* `chmod` changes file permissions.
* Permissions are represented using `r`, `w`, and `x`.
* Numeric permissions use values `4`, `2`, and `1`.
* `644` gives the owner read/write and everyone else read-only.
* `755` gives the owner read/write/execute and everyone else read/execute.
* Symbolic permissions can be changed using `u`, `g`, and `o`.

### What I practiced

```bash
touch test.txt
ls -l test.txt

chmod 644 test.txt
ls -l test.txt

chmod 755 test.txt
ls -l test.txt

chmod o-w test.txt
ls -l test.txt
```

## Cron Jobs - Scheduling Tasks

Cron is used in Linux to run commands or scripts automatically at a scheduled time.

For example, instead of manually running a script every minute, we can configure cron to run it automatically.

### Check Cron Service

On my Linux system, I checked whether the cron service was running:

```bash
systemctl status cronie
```

Initially, the service was inactive.

I started it using:

```bash
sudo systemctl start cronie
```

Then I checked again:

```bash
systemctl status cronie
```

The service was active and running.

### Create a Simple Cron Script

I created a practice directory:

```bash
mkdir -p cron-practice
cd cron-practice
```

Then I created a script called `cron-test.sh`:

```bash
nano cron-test.sh
```

The script contains:

```bash
#!/bin/bash

date >> /tmp/cron-test.txt
```

The `date` command prints the current date and time.

The `>>` operator adds the output to the end of the file instead of replacing the existing content.

I made the script executable:

```bash
chmod +x cron-test.sh
```

I also tested the script manually:

```bash
./cron-test.sh
```

Then I checked the output:

```bash
cat /tmp/cron-test.txt
```

### Create a Cron Job

Cron jobs for a user can be edited using:

```bash
crontab -e
```

I added:

```cron
* * * * * /home/omarchy/Projects/linux-masterclass-poc/cron-practice/cron-test.sh
```

This tells cron to run the script every minute.

The five `*` fields represent:

```text
* * * * *
│ │ │ │ │
│ │ │ │ └── Day of week
│ │ │ └──── Month
│ │ └────── Day of month
│ └──────── Hour
└────────── Minute
```

So:

```cron
* * * * *
```

means every minute of every hour, every day.

### Check Cron Jobs

To see the current user's cron jobs:

```bash
crontab -l
```

The configured job was:

```cron
* * * * * /home/omarchy/Projects/linux-masterclass-poc/cron-practice/cron-test.sh
```

### Verify the Cron Job

I checked the output file:

```bash
cat /tmp/cron-test.txt
```

Initially, it contained only the manually generated timestamp.

After waiting for the next scheduled execution, a new timestamp appeared automatically:

```text
Mon Sep 14 07:50:30 PM IST 2026
Mon Sep 14 08:00:00 PM IST 2026
```

This confirmed that the cron job was working.

### Important Lesson

The path written in the crontab must be the actual path of the script.

During practice, I initially used:

```text
/home/omarchy/Projects/linux-masterclass-poc/cron-practice/cron-test.sh
```

but my actual local home directory was different, so cron could not find the script.

After correcting the path in `crontab`, the job executed successfully.

### Commands Practiced

```bash
systemctl status cronie
sudo systemctl start cronie
mkdir -p
cd
nano
chmod +x
./cron-test.sh
cat
crontab -e
crontab -l
```

### What I Learned

* Cron is used for scheduling tasks in Linux.
* `cronie` provides the cron service on my system.
* `crontab -e` is used to create or edit cron jobs.
* `crontab -l` displays existing cron jobs.
* `* * * * *` can be used to run a task every minute.
* A script used by cron should have the correct permissions.
* The path in the cron job must be correct.
* I tested a real cron job locally and verified that it executed automatically.

## Disk Management, ZIP and TAR

### Checking Disk Space with `df`

The `df` command is used to check filesystem disk space.

I practiced:

```bash
df -h
```

The `-h` option means human-readable format, so sizes are shown in values such as GB and MB.

I also checked the filesystem containing my current directory:

```bash
df -h .
```

Example output showed that the root/home filesystem had plenty of available space.

### Checking Directory Size with `du`

The `du` command is used to check how much disk space files and directories are using.

I practiced:

```bash
du -sh .
```

This shows the total size of the current directory.

I also practiced:

```bash
du -sh *
```

This shows the size of each item inside the current directory.

### Difference Between `df` and `du`

```text
df  → shows filesystem disk space
du  → shows space used by files/directories
```

### ZIP Files

I created a practice directory:

```bash
mkdir zip-practice
cd zip-practice
```

Then I created two files:

```bash
echo "Linux disk practice" > file1.txt
echo "This is another practice file" > file2.txt
```

I created a ZIP archive:

```bash
zip files.zip file1.txt file2.txt
```

This created:

```text
files.zip
```

I extracted the ZIP archive using:

```bash
unzip files.zip -d extracted
```

The files were extracted into the `extracted` directory.

### TAR Files

I created a TAR archive using:

```bash
tar -cvf files.tar file1.txt file2.txt
```

The options mean:

```text
-c  create an archive
-v  show the files being processed
-f  specify the archive file
```

I checked the contents of the TAR archive:

```bash
tar -tf files.tar
```

The output showed:

```text
file1.txt
file2.txt
```

I extracted the TAR archive into another directory:

```bash
mkdir tar-extracted
tar -xvf files.tar -C tar-extracted
```

The files were successfully extracted.

The `-x` option means extract.

### TAR.GZ Files

A `.tar.gz` file is a TAR archive compressed using gzip.

I created one using:

```bash
tar -czvf files.tar.gz file1.txt file2.txt
```

The `-z` option is used for gzip compression.

I extracted it using:

```bash
mkdir tar-gz-extracted
tar -xzvf files.tar.gz -C tar-gz-extracted
```

The files were successfully extracted.

### Basic Commands Practiced

```bash
df -h
df -h .
du -sh .
du -sh *
zip
unzip
tar -cvf
tar -tf
tar -xvf
tar -czvf
tar -xzvf
```

### What I Learned

* `df` is used to check filesystem disk space.
* `du` is used to check space used by files and directories.
* `zip` creates ZIP archives.
* `unzip` extracts ZIP archives.
* `tar` can create and extract TAR archives.
* `.tar.gz` combines TAR archiving with gzip compression.
* The files must exist before they can be added to an archive.
* I practiced creating and extracting ZIP, TAR, and TAR.GZ archives locally.

## Word Count, Sort and Unique Values

### `wc` - Word Count

The `wc` command is used to count lines, words, and bytes in a file.

I created a practice file:

```text id="c5l1zq"
Linux
Docker
Python
Linux
Git
Python
Linux
```

I checked the file using:

```bash id="a7h1jq"
cat names.txt
```

Then I ran:

```bash id="x5m0z2"
wc names.txt
```

The output was:

```text id="2q7p1h"
7  7  43 names.txt
```

The values represent:

```text id="4m3n2b"
lines   words   bytes
```

### `wc -l`

To count only lines:

```bash id="j1u8yd"
wc -l names.txt
```

Output:

```text id="t1r4w7"
7 names.txt
```

### `wc -w`

To count words:

```bash id="0fqy2m"
wc -w names.txt
```

Output:

```text id="8e5x9a"
7 names.txt
```

### `wc -c`

To count bytes:

```bash id="4u7h6k"
wc -c names.txt
```

Output:

```text id="3g2m8v"
43 names.txt
```

### Using `wc` with a Pipe

Commands can be combined using the pipe `|`.

For example:

```bash id="9d4k2p"
cat names.txt | wc -l
```

This sends the output of `cat` to `wc` and counts the lines.

The result was:

```text id="f5j8q1"
7
```

---

## `sort`

The `sort` command is used to sort lines.

I practiced:

```bash id="2z8x6c"
sort names.txt
```

The output was:

```text id="v9k3a2"
Docker
Git
Linux
Linux
Linux
Python
Python
```

The original `names.txt` file was not changed.

### Reverse Sorting

I used:

```bash id="6c2m8p"
sort -r names.txt
```

The `-r` option sorts in reverse order.

Output:

```text id="n7q1w4"
Python
Python
Linux
Linux
Linux
Git
Docker
```

---

## `uniq`

The `uniq` command can be used to remove duplicate lines.

I combined `sort` and `uniq`:

```bash id="1v6k8s"
sort names.txt | uniq
```

Output:

```text id="e2r5y9"
Docker
Git
Linux
Python
```

There were 4 unique names.

I confirmed this by using another pipe:

```bash id="7p3m1x"
sort names.txt | uniq | wc -l
```

Output:

```text id="q8f4n2"
4
```

### Counting Duplicate Values

The `uniq -c` option counts how many times each value appears:

```bash id="5y9k3d"
sort names.txt | uniq -c
```

Output:

```text id="r2m7x6"
1 Docker
1 Git
3 Linux
2 Python
```

This shows:

```text
Docker → 1
Git    → 1
Linux  → 3
Python → 2
```

### Commands Practiced

```bash id="h6n2q9"
wc
wc -l
wc -w
wc -c
sort
sort -r
uniq
uniq -c
```

### What I Learned

* `wc` counts lines, words, and bytes.
* `wc -l` counts lines.
* `wc -w` counts words.
* `wc -c` counts bytes.
* `sort` sorts lines alphabetically.
* `sort -r` sorts in reverse order.
* `uniq` removes duplicate adjacent lines.
* `uniq -c` counts duplicate values.
* `|` allows the output of one command to be used as input for another command.
* Commands can be combined into useful pipelines.

## 20. `find` Command

The `find` command is used to search for files and directories in Linux.

It is useful when we want to find something by its name or type.

### Find a Specific File

```bash
find . -name "file1.txt"
```

Example output:

```text
./file1.txt
```

Here:

* `.` means search from the current directory.
* `-name` means search by name.
* `"file1.txt"` is the file we are looking for.

### Find Files by Extension

To find all `.txt` files:

```bash
find . -name "*.txt"
```

Example output:

```text
./file1.txt
./file2.txt
./notes.txt
./documents/report.txt
```

The `*` means any characters before `.txt`.

To find `.log` files:

```bash
find . -name "*.log"
```

### Find Directories

```bash
find . -type d
```

`-type d` means search for directories.

Example:

```text
.
./documents
```

### Find Files Only

```bash
find . -type f
```

`-type f` means search for regular files.

### Combine Conditions

We can combine `-type f` and `-name`.

```bash
find . -type f -name "*.txt"
```

This searches for regular files whose names end with `.txt`.

Example output:

```text
./file1.txt
./file2.txt
./notes.txt
./documents/report.txt
```

### Common `find` Options

| Option    | Meaning                                |
| --------- | -------------------------------------- |
| `.`       | Start searching from current directory |
| `-name`   | Search by name                         |
| `-type f` | Find files                             |
| `-type d` | Find directories                       |
| `*`       | Match any characters                   |

### Practice

The `find` command was practiced using a small directory:

```text
find-practice/
├── file1.txt
├── file2.txt
├── notes.txt
├── test.log
└── documents/
    └── report.txt
```

This practice showed that `find` can search recursively, so files inside subdirectories can also be found.

---

**Key idea:**

`find` is mainly used to search for files and directories based on conditions such as name and type.

## 21. `awk` Command

`awk` is a Linux command used to process and work with text data.

It is especially useful when data is arranged in **columns**.

For example:

```text
Alice 80
Bob 65
Charlie 90
David 72
```

Here, each line contains two columns:

```text
Name    Marks
```

---

### Print the First Column

```bash
awk '{print $1}' students.txt
```

Output:

```text
Alice
Bob
Charlie
David
```

`$1` represents the first column.

---

### Print the Second Column

```bash
awk '{print $2}' students.txt
```

Output:

```text
80
65
90
72
```

`$2` represents the second column.

---

### Print Multiple Columns

```bash
awk '{print $1, $2}' students.txt
```

Output:

```text
Alice 80
Bob 65
Charlie 90
David 72
```

Here:

* `$1` → first column
* `$2` → second column

---

### Filter Data Using a Condition

We can use `awk` to print only students whose marks are greater than 70.

```bash
awk '$2 > 70 {print $1, $2}' students.txt
```

Output:

```text
Alice 80
Charlie 90
David 72
```

Here:

```text
$2 > 70
```

is the condition.

The command prints the first and second columns when the condition is true.

---

### Count Number of Lines

We can use `NR` to get the current record/line number.

```bash
awk 'END {print NR}' students.txt
```

Output:

```text
4
```

In this example, the file contains 4 lines.

`NR` represents the record number.

---

## Using `awk` with CSV Files

`awk` can also work with **CSV (Comma-Separated Values)** files.

Example CSV file:

```text
Alice,80
Bob,65
Charlie,90
David,72
```

Because the values are separated by commas instead of spaces, we need to tell `awk` that the field separator is a comma.

We use:

```bash
-F ','
```

### Print the First CSV Column

```bash
awk -F ',' '{print $1}' students.csv
```

Output:

```text
Alice
Bob
Charlie
David
```

### Print the Second CSV Column

```bash
awk -F ',' '{print $2}' students.csv
```

Output:

```text
80
65
90
72
```

### Print Both CSV Columns

```bash
awk -F ',' '{print $1, $2}' students.csv
```

Output:

```text
Alice 80
Bob 65
Charlie 90
David 72
```

### Filter CSV Data

We can also apply conditions to CSV data.

```bash
awk -F ',' '$2 > 70 {print $1, $2}' students.csv
```

Output:

```text
Alice 80
Charlie 90
David 72
```

---

### Understanding `-F`

`-F` specifies the **field separator**.

For space-separated data:

```bash
awk '{print $1}' students.txt
```

For comma-separated data:

```bash
awk -F ',' '{print $1}' students.csv
```

So the separator tells `awk` how to identify the different columns.

---

### Common `awk` Concepts

| Syntax           | Meaning                        |
| ---------------- | ------------------------------ |
| `$1`             | First column                   |
| `$2`             | Second column                  |
| `$3`             | Third column                   |
| `NR`             | Current record/line number     |
| `-F ','`         | Use comma as field separator   |
| `{print $1}`     | Print first column             |
| `{print $1, $2}` | Print first and second columns |

---

### Practice Summary

The following `awk` operations were practiced:

* Printing the first column
* Printing the second column
* Printing multiple columns
* Filtering rows using a condition
* Counting lines using `NR`
* Working with space-separated data
* Working with comma-separated/CSV data
* Using `-F` to specify a field separator

**Key idea:**

`awk` is useful when we need to read text data **column by column** and perform simple filtering or processing.

## 22. Package Management

Linux distributions use package managers to install, update, remove, and search for software packages.

The package manager depends on the Linux distribution.

For example:

* Ubuntu/Debian → `apt` / `apt-get`
* Arch Linux → `pacman`

Since this POC is being practiced on **Omarchy Linux**, which is Arch-based, the package manager available on the system is `pacman`.

---

### Check Linux Distribution

We can use `/etc/os-release` to see information about the Linux distribution.

```bash
cat /etc/os-release
```

This showed that the system is **Omarchy Linux**, based on Arch Linux.

---

### Check `pacman` Version

```bash
pacman --version
```

This displays the installed `pacman` version.

`pacman` is the package manager used by Arch Linux and Arch-based distributions.

---

### Search for a Package

We can search for a package using:

```bash
pacman -Ss wget
```

This searches the available package repositories for packages related to `wget`.

The command only searches for the package. It does not install anything.

---

### Check `wget`

`wget` is a command-line utility used to download files from the internet.

To check whether it is available:

```bash
wget --version
```

If `wget` is installed, the command displays its version information.

---

## Ubuntu/Debian Package Management

The Linux Masterclass course also introduces package-management commands used with Ubuntu/Debian systems.

For example:

```bash
sudo apt-get update
```

This updates the package information available from the configured repositories.

A package can be installed using:

```bash
sudo apt-get install <package-name>
```

These commands are commonly used on Ubuntu/Debian systems.

### Important

This POC is being practiced on **Omarchy Linux**, so `apt-get` should not be used as the normal package manager here.

For an Arch-based system, package installation uses `pacman`.

Example:

```bash
sudo pacman -S <package-name>
```

---

## `apt-get` vs `pacman`

| Purpose                    | Ubuntu/Debian                    | Arch/Omarchy                                               |
| -------------------------- | -------------------------------- | ---------------------------------------------------------- |
| Package manager            | `apt` / `apt-get`                | `pacman`                                                   |
| Update package information | `sudo apt-get update`            | Repository/package operations are handled through `pacman` |
| Install package            | `sudo apt-get install <package>` | `sudo pacman -S <package>`                                 |
| Search packages            | `apt search <package>`           | `pacman -Ss <package>`                                     |

---

## Package Management Practice

The following commands were practiced:

```bash
cat /etc/os-release
```

```bash
pacman --version
```

```bash
pacman -Ss wget
```

```bash
wget --version
```

These commands helped identify the Linux distribution, package manager, available packages, and `wget` installation.

---

### Key Idea

A **package manager** makes it easier to manage software on Linux.

The exact commands depend on the Linux distribution.

For this POC:

```text
Omarchy → Arch-based → pacman
```

For Ubuntu/Debian:

```text
Ubuntu/Debian → apt / apt-get
```

## 23. Apache Airflow

**Apache Airflow** is a tool used to **schedule and manage tasks**.

For example:

```text
Download Data
      ↓
Process Data
      ↓
Save Data
```

Airflow can run these tasks in the correct order.

### DAG

**DAG** means a workflow in Airflow.

Example:

```text
Task 1
  ↓
Task 2
  ↓
Task 3
```

### Cron vs Airflow

**Cron** is good for simple scheduled jobs.

```text
Cron → Run a script at a specific time
```

**Airflow** is useful for multiple tasks.

```text
Airflow → Run and manage multiple tasks
```

### Simple Difference

| Cron                  | Airflow                      |
| --------------------- | ---------------------------- |
| Simple jobs           | Multiple tasks               |
| Runs commands/scripts | Manages workflows            |
| Basic scheduling      | Scheduling + task management |

For this POC, **Cron and Shell Script were practiced**, and **Airflow was learned as a concept**.

## 24. Basic Networking Commands

Linux provides simple commands to check network information and test connectivity.

### 24.1 `ip addr`

Shows network interfaces and IP addresses.

```bash
ip addr
```

Example:

```text
wlo1
inet 192.168.1.100/24
```

`wlo1` can be a Wi-Fi interface.

### 24.2 `ip route`

Shows how Linux routes network traffic.

```bash
ip route
```

Example:

```text
default via 192.168.1.1 dev wlo1
```

The `default via` address is the default gateway.

### 24.3 `ping`

Used to test network connectivity.

```bash
ping -c 4 8.8.8.8
```

`-c 4` sends 4 packets.

We can also ping a domain:

```bash
ping -c 4 google.com
```

When using a domain name, Linux first resolves the domain to an IP address and then tests the connection.

Useful result:

```text
4 packets transmitted, 4 received, 0% packet loss
```

This means all packets received a response.

### 24.4 `hostname`

Shows the hostname of the Linux machine.

```bash
hostname
```

Example:

```text
omarchy
```

To display the IP address:

```bash
hostname -i
```

### 24.5 `curl`

Used to make a request to a URL and display the response.

```bash
curl https://example.com
```

This displays the webpage content in the terminal.

To view only the HTTP headers:

```bash
curl -I https://example.com
```

Example:

```text
HTTP/2 200
```

`200` means the request was successful.

### 24.6 `wget`

`wget` can be used to download files from the internet.

Example:

```bash
wget https://example.com/file.txt
```

### Quick Summary

| Command       | Purpose                                  |
| ------------- | ---------------------------------------- |
| `ip addr`     | Show network interfaces and IP addresses |
| `ip route`    | Show routing information                 |
| `ping`        | Test network connectivity                |
| `hostname`    | Show machine hostname                    |
| `hostname -i` | Show IP address                          |
| `curl`        | Make a web request                       |
| `wget`        | Download files                           |

