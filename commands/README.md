# Linux Commands Quick Reference

A simple quick reference for the Linux commands practiced in this POC.

---

## Basic Commands

| Command   | Purpose                 | Example        |
| --------- | ----------------------- | -------------- |
| `pwd`     | Show current directory  | `pwd`          |
| `ls`      | List files              | `ls`           |
| `whoami`  | Show current user       | `whoami`       |
| `echo`    | Print text              | `echo "Hello"` |
| `uname`   | Show system information | `uname -r`     |
| `history` | Show command history    | `history`      |

---

## Files and Directories

| Command | Purpose                | Example          |
| ------- | ---------------------- | ---------------- |
| `cd`    | Change directory       | `cd folder`      |
| `cd ..` | Go to parent directory | `cd ..`          |
| `cd ~`  | Go to home directory   | `cd ~`           |
| `mkdir` | Create directory       | `mkdir test`     |
| `touch` | Create empty file      | `touch file.txt` |
| `cat`   | Display file content   | `cat file.txt`   |
| `head`  | Show beginning of file | `head file.txt`  |
| `tail`  | Show end of file       | `tail file.txt`  |
| `cp`    | Copy file              | `cp a.txt b.txt` |
| `mv`    | Move/rename file       | `mv a.txt b.txt` |
| `rm`    | Remove file            | `rm file.txt`    |
| `rm -r` | Remove directory       | `rm -r folder`   |

---

## File Permissions

| Command    | Purpose                | Example             |
| ---------- | ---------------------- | ------------------- |
| `ls -l`    | Show permissions       | `ls -l`             |
| `chmod`    | Change permissions     | `chmod 755 file.sh` |
| `chmod +x` | Add execute permission | `chmod +x file.sh`  |

---

## Links and Alias

| Command | Purpose                 | Example                           |
| ------- | ----------------------- | --------------------------------- |
| `ln`    | Create hard link        | `ln original.txt hardlink.txt`    |
| `ln -s` | Create soft link        | `ln -s original.txt shortcut.txt` |
| `alias` | Create command shortcut | `alias ll='ls -l'`                |

---

## Processes and Background Jobs

| Command  | Purpose                           | Example           |
| -------- | --------------------------------- | ----------------- |
| `sleep`  | Wait for a period                 | `sleep 60`        |
| `&`      | Run command in background         | `sleep 60 &`      |
| `jobs`   | Show background jobs              | `jobs`            |
| `ps`     | Show processes                    | `ps`              |
| `ps aux` | Show detailed processes           | `ps aux`          |
| `kill`   | Stop a process                    | `kill PID`        |
| `top`    | Monitor processes                 | `top`             |
| `nohup`  | Keep command running after logout | `nohup command &` |

---

## Disk Management

| Command    | Purpose             | Example    |
| ---------- | ------------------- | ---------- |
| `df -h`    | Show disk space     | `df -h`    |
| `du -sh`   | Show directory size | `du -sh .` |
| `du -sh *` | Show sizes of items | `du -sh *` |

---

## ZIP and TAR

| Command     | Purpose                | Example                             |
| ----------- | ---------------------- | ----------------------------------- |
| `zip`       | Create ZIP file        | `zip files.zip file1.txt file2.txt` |
| `unzip`     | Extract ZIP file       | `unzip files.zip`                   |
| `tar -cvf`  | Create TAR archive     | `tar -cvf files.tar file1.txt`      |
| `tar -tf`   | List TAR contents      | `tar -tf files.tar`                 |
| `tar -xvf`  | Extract TAR            | `tar -xvf files.tar`                |
| `tar -czvf` | Create compressed TAR  | `tar -czvf files.tar.gz file1.txt`  |
| `tar -xzvf` | Extract compressed TAR | `tar -xzvf files.tar.gz`            |

---

## Text Processing

| Command   | Purpose                   | Example                 |
| --------- | ------------------------- | ----------------------- |
| `wc`      | Count lines, words, bytes | `wc file.txt`           |
| `wc -l`   | Count lines               | `wc -l file.txt`        |
| `wc -w`   | Count words               | `wc -w file.txt`        |
| `wc -c`   | Count bytes               | `wc -c file.txt`        |
| `sort`    | Sort lines                | `sort file.txt`         |
| `sort -r` | Reverse sort              | `sort -r file.txt`      |
| `uniq`    | Remove repeated lines     | `sort file.txt \| uniq` |
| `grep`    | Search text               | `grep "Linux" file.txt` |
| `head`    | Show first lines          | `head file.txt`         |
| `tail`    | Show last lines           | `tail file.txt`         |

---

## Pipes

The `|` symbol sends the output of one command to another command.

Example:

```bash
cat file.txt | grep "Linux"
```

Another example:

```bash
sort file.txt | uniq | wc -l
```

---

## SSH and SCP

| Command | Purpose                   | Example                        |
| ------- | ------------------------- | ------------------------------ |
| `ssh`   | Connect to remote machine | `ssh localhost`                |
| `scp`   | Copy files using SSH      | `scp file.txt localhost:/tmp/` |

---

## Find

| Command        | Purpose                      | Example                   |
| -------------- | ---------------------------- | ------------------------- |
| `find`         | Search for files/directories | `find . -name "file.txt"` |
| `find -type f` | Find files                   | `find . -type f`          |
| `find -type d` | Find directories             | `find . -type d`          |

Example:

```bash
find . -type f -name "*.txt"
```

---

## AWK

| Command      | Purpose                | Example                            |
| ------------ | ---------------------- | ---------------------------------- |
| `awk`        | Work with columns/text | `awk '{print $1}' file.txt`        |
| `awk -F ','` | Use comma as separator | `awk -F ',' '{print $1}' file.csv` |

Examples:

```bash
awk '{print $1}' students.txt
```

```bash
awk '{print $2}' students.txt
```

```bash
awk '$2 > 70 {print $1, $2}' students.txt
```

For CSV:

```bash
awk -F ',' '{print $1, $2}' students.csv
```

---

## Cron and Services

| Command            | Purpose              | Example                       |
| ------------------ | -------------------- | ----------------------------- |
| `crontab -l`       | Show cron jobs       | `crontab -l`                  |
| `crontab -e`       | Edit cron jobs       | `crontab -e`                  |
| `systemctl status` | Check service status | `systemctl status cronie`     |
| `systemctl start`  | Start service        | `sudo systemctl start cronie` |

Example Cron job:

```cron
* * * * * /path/to/script.sh
```

---

## Package Management

For **Omarchy/Arch Linux**:

| Command            | Purpose              | Example                  |
| ------------------ | -------------------- | ------------------------ |
| `pacman --version` | Check pacman version | `pacman --version`       |
| `pacman -Ss`       | Search packages      | `pacman -Ss wget`        |
| `pacman -S`        | Install package      | `sudo pacman -S package` |

For Ubuntu/Debian, the course also covers:

```bash
sudo apt-get update
```

```bash
sudo apt-get install <package-name>
```

---

## Wget

`wget` is used to download files from the command line.

```bash
wget <URL>
```

Check the installed version:

```bash
wget --version
```

---

## Bash Scripting

| Command/Syntax       | Purpose                        |
| -------------------- | ------------------------------ |
| `bash script.sh`     | Run Bash script                |
| `chmod +x script.sh` | Make script executable         |
| `./script.sh`        | Run executable script          |
| `echo`               | Print output                   |
| `read`               | Get user input                 |
| `$1`                 | First argument                 |
| `$2`                 | Second argument                |
| `$#`                 | Number of arguments            |
| `$?`                 | Previous command's exit status |
| `if`                 | Make a decision                |
| `for`                | Repeat for a list              |
| `while`              | Repeat while condition is true |
| `function`           | Create reusable commands       |
| `case`               | Handle multiple choices        |
| `$()`                | Command substitution           |

---

## Useful Examples

### Search text

```bash
grep "Linux" notes.txt
```

### Count matching lines

```bash
grep "Linux" notes.txt | wc -l
```

### Find text files

```bash
find . -type f -name "*.txt"
```

### Get a column using AWK

```bash
awk '{print $1}' students.txt
```

### Get a CSV column

```bash
awk -F ',' '{print $1}' students.csv
```

### Run a script in the background

```bash
./script.sh &
```

### Check running processes

```bash
ps aux
```

---

## Quick Reminder

```text
pwd       → Where am I?
ls        → What is here?
cd        → Move around
mkdir     → Create directory
touch     → Create file
cat       → Read file
cp        → Copy
mv        → Move/Rename
rm        → Delete
chmod     → Change permission
grep      → Search text
find      → Find files
awk       → Work with columns
wc        → Count
sort      → Sort
uniq      → Remove duplicates
ps        → Processes
kill      → Stop process
df / du   → Disk usage
ssh       → Remote connection
scp       → Copy over SSH
crontab   → Schedule jobs
pacman    → Manage packages
```
