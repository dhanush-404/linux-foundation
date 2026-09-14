# Bash Shell Scripting Basics

This file contains my beginner-level Bash shell scripting practice from the Linux Masterclass course.

The goal is to understand how to create simple Bash scripts, use variables and inputs, make decisions, repeat commands, and organize commands using functions.

---

## 1. What is a Shell Script?

A shell script is a file that contains Linux commands.

Instead of typing commands one by one in the terminal, we can save them in a file and run the file.

Shell scripts usually use the `.sh` extension.

Example:

```bash
#!/bin/bash

echo "Hello from bash"
echo "I am learning linux shell scripting"
```

The first line is called the **shebang**:

```bash
#!/bin/bash
```

It tells Linux to use Bash to run the script.

---

## 2. Running a Bash Script

Suppose we have a file called:

```text
hello.sh
```

We can run it using:

```bash
bash hello.sh
```

We can also make it executable:

```bash
chmod +x hello.sh
```

Then run it directly:

```bash
./hello.sh
```

The `./` means we are running the script from the current directory.

### Example

```bash
#!/bin/bash

echo "Hello from bash"
echo "I am learning linux shell scripting"
```

Output:

```text
Hello from bash
I am learning linux shell scripting
```

---

## 3. Variables

Variables are used to store values.

Example:

```bash
#!/bin/bash

name="omarchy"
course="Linux Masterclass"

echo "Name: $name"
echo "Course: $course"
```

Output:

```text
Name: omarchy
Course: Linux Masterclass
```

To use a variable, we use `$` before the variable name.

```bash
echo "$name"
```

### Important

There should be no spaces around `=` when assigning a variable.

Correct:

```bash
name="omarchy"
```

Not:

```bash
name = "omarchy"
```

---

## 4. Getting User Input

The `read` command is used to get input from the user.

Example:

```bash
#!/bin/bash

echo "What is your name?"
read name

echo "Hello, $name"
```

When the script runs, the user can type a name.

Example:

```text
What is your name?
omarchy
Hello, omarchy
```

Here:

```bash
read name
```

stores the user's input in the `name` variable.

---

## 5. Command-Line Arguments

We can pass values to a script when running it.

Example:

```bash
#!/bin/bash

echo "First argument: $1"
echo "Second argument: $2"
```

Run:

```bash
bash arguments.sh hello hi
```

Output:

```text
First argument: hello
Second argument: hi
```

### Common argument variables

| Variable | Meaning             |
| -------- | ------------------- |
| `$0`     | Script name         |
| `$1`     | First argument      |
| `$2`     | Second argument     |
| `$#`     | Number of arguments |

Example:

```bash
#!/bin/bash

echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "Number of arguments: $#"
```

Running:

```bash
bash arguments.sh hello hi
```

can produce:

```text
Script name: arguments.sh
First argument: hello
Second argument: hi
Number of arguments: 2
```

---

## 6. `if` and `else`

`if` is used to make decisions in a script.

Example:

```bash
#!/bin/bash

name="$1"

if [ "$name" = "omarchy" ]; then
    echo "Welcome omarchy"
else
    echo "Unknown user"
fi
```

Run:

```bash
bash if-example.sh omarchy
```

Output:

```text
Welcome omarchy
```

If we use another value:

```bash
bash if-example.sh hello
```

Output:

```text
Unknown user
```

Basic structure:

```bash
if [ condition ]; then
    command
else
    command
fi
```

---

## 7. Number Comparison

Bash has operators for comparing numbers.

Some common operators are:

| Operator | Meaning                  |
| -------- | ------------------------ |
| `-gt`    | Greater than             |
| `-ge`    | Greater than or equal to |
| `-le`    | Less than or equal to    |

Example:

```bash
#!/bin/bash

number="$1"

if [ "$number" -gt 10 ]; then
    echo "Number is greater than 10"
else
    echo "Number is 10 or less"
fi
```

Examples:

```bash
bash number-check.sh 54
```

Output:

```text
Number is greater than 10
```

And:

```bash
bash number-check.sh 9
```

Output:

```text
Number is 10 or less
```

---

## 8. `elif`

`elif` is used when there are multiple conditions.

Example:

```bash
#!/bin/bash

score="$1"

if [ "$score" -ge 80 ]; then
    echo "Grade A"
elif [ "$score" -ge 60 ]; then
    echo "Grade B"
else
    echo "Grade C"
fi
```

Examples:

```bash
bash grade-check.sh 97
bash grade-check.sh 67
bash grade-check.sh 46
```

Output:

```text
Grade A
Grade B
Grade C
```

The conditions are checked from top to bottom.

---

## 9. `for` Loop

A `for` loop is used to repeat commands for a list of values.

Example:

```bash
#!/bin/bash

for name in Linux Docker Python
do
    echo "I am learning $name"
done
```

Output:

```text
I am learning Linux
I am learning Docker
I am learning Python
```

Basic structure:

```bash
for variable in values
do
    commands
done
```

The loop runs once for each value.

---

## 10. `while` Loop

A `while` loop repeats commands while a condition is true.

Example:

```bash
#!/bin/bash

count=1

while [ "$count" -le 5 ]
do
    echo "Count: $count"
    count=$((count + 1))
done
```

Output:

```text
Count: 1
Count: 2
Count: 3
Count: 4
Count: 5
```

This line increases the value:

```bash
count=$((count + 1))
```

Without increasing the value, the loop could continue indefinitely.

---

## 11. Functions

A function is a group of commands that can be reused.

Example:

```bash
#!/bin/bash

greet() {
    echo "Hello from Linux"
}

greet
greet
```

Output:

```text
Hello from Linux
Hello from Linux
```

Basic structure:

```bash
function_name() {
    commands
}
```

We can then call the function:

```bash
function_name
```

Functions help us avoid writing the same commands repeatedly.

---

## 12. Function Arguments

Functions can receive arguments.

Example:

```bash
#!/bin/bash

greet() {
    echo "Hello, $1"
}

greet "omarchy"
greet "Linux"
```

Output:

```text
Hello, omarchy
Hello, Linux
```

Here `$1` represents the first argument passed to the function.

For example:

```bash
greet "omarchy"
```

passes `omarchy` as the first argument.

---

## 13. `case` Statement

The `case` statement can be used when we have several possible choices.

Example:

```bash
#!/bin/bash

choice="$1"

case "$choice" in
    start)
        echo "Starting..."
        ;;
    stop)
        echo "Stopping..."
        ;;
    restart)
        echo "Restarting..."
        ;;
    *)
        echo "Unknown option"
        ;;
esac
```

Examples:

```bash
bash case-example.sh start
```

Output:

```text
Starting...
```

```bash
bash case-example.sh stop
```

Output:

```text
Stopping...
```

```bash
bash case-example.sh hello
```

Output:

```text
Unknown option
```

The `*` is used as the default case when none of the other options match.

---

## 14. Command Substitution

Command substitution allows us to run a Linux command and store its output in a variable.

The syntax is:

```bash
$(command)
```

Example:

```bash
#!/bin/bash

current_dir=$(pwd)
current_user=$(whoami)

echo "Current directory: $current_dir"
echo "Current user: $current_user"
```

Example output:

```text
Current directory: /home/omarchy/Projects/linux-masterclass-poc/shell-scripting/bash-practice
Current user: omarchy
```

In this example:

```bash
current_dir=$(pwd)
```

runs `pwd` and stores its output in `current_dir`.

Similarly:

```bash
current_user=$(whoami)
```

runs `whoami` and stores its output in `current_user`.

---

## 15. Exit Status

Linux commands return an exit status after they finish.

A successful command normally returns:

```text
0
```

A failed command returns a non-zero value.

We can check the exit status using:

```bash
$?
```

### Successful command

Example:

```bash
#!/bin/bash

echo "Hello Linux"

echo "Exit status: $?"
```

Output:

```text
Hello Linux
Exit status: 0
```

This means the `echo` command completed successfully.

### Failed command

For example:

```bash
ls /this-directory-does-not-exist
echo $?
```

The `ls` command fails because the directory does not exist.

Example output:

```text
No such file or directory
2
```

The `2` is the exit status returned by that command on this system.

The important idea is:

```text
0       → success
non-zero → failure
```

---

# Bash Practice Summary

The Bash concepts practiced in this section are:

* Shell scripts
* Shebang
* `echo`
* Running `.sh` files
* `chmod +x`
* Variables
* `read`
* Command-line arguments
* `$0`
* `$1`
* `$2`
* `$#`
* `if`
* `else`
* `elif`
* Number comparisons
* `for` loops
* `while` loops
* Functions
* Function arguments
* `case`
* Command substitution
* Exit status
* `$?`

