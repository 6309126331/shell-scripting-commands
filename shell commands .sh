=> Create an file called filename.sh and write script inside that file
=> To execute that script you use ./filename.sh
=> For permission denied error use chmod 777 filename.sh
---------------------------------------------------------------------------

Example 1:
#!/bin/bash

echo "Hello from first shell script"
ls -lrt
pwd

-------------------------------------------------------------------------------

Example 2: 
To define variable in shell we use "=" notation, example: var1 = 123, var2= Hello.
To print these variables we use "$" notation. And also do not use space between = symbole.

#!/bin/bash
 variable1=Hello
 variable2=123
 variable3="Hello from User1"

echo "$variable1 from first shell script"
echo "Number = $variable2"
echo "$variable3"

--------------------------------------------------------------------------------

Example 3: 
You can assign one variable to another variable as well

#!/bin/bash
 variable1=Hello
 variable2=123
 variable3="$variable1 from User1"

echo "$variable1 from first shell script"
echo "Number = $variable2"
echo "$variable3"

------------------------------------------------------------------------------

Example 4: 
To comment out some line we use "#" notation

#!/bin/bash

#variable1=Hello
 variable2=123
# variable3="$variable1 from User1"

echo "$variable1 from first shell script"
echo "Number = $variable2"
echo "$variable3"

-------------------------------------------------------------------------

Example 5:
Passing arguments while calling file in the run time we use $. Till 1 to 9 we use $ symbol. ($1, $2, $9) after that we ${10}, ${11}....so on

#!/bin/bash

echo "$1 from first shell script"
echo "Number = $2"
echo "$3 Classes completed"

To run this file use: ./file1.sh Hello 123 Linux
To run this file with two words we use :./file1.sh "Hello User" 123 Linux

---------------------------------------------------------------------------

Example 6: 
To find number of arguments passed to file we use $# notation.

#!/bin/bash

echo "$1 from first shell script"
echo "Number = $2"
echo "$3 Classes completed"
echo "$# number of arguments passed"

To run this file use: ./file1.sh Hello 123 Linux

-------------------------------------------------------------------------

Example 7: 
To see all the arguments passed to file we use $* notation.

#!/bin/bash

echo "$1 from first shell script"
echo "Number = $2"
echo "$3 Classes completed"
echo "$* => Thse are the arguments passed to file"

To run this file use: ./file1.sh Hello 123 Linux

----------------------------------------------------------------------------

Example 8:
To run script in background we "&" notation.

#!/bin/bash

echo "$1 from first shell script"
echo "Number = $2"
echo "$3 Classes completed"
echo "$* => Thse are the arguments passed to file"

To run this file in background: ./file1.sh Hello 123 Linux &

-------------------------------------------------------------------------

Example 9:
To run script in background and even if we close ssh still we want continue the file execution means we use "nohup"

#!/bin/bash

echo "$1 from first shell script"
echo "Number = $2"
echo "$3 Classes completed"
echo "$* => Thse are the arguments passed to file"

To run this file in background and continue even if we close ssh: nohup ./file1.sh Hello 123 Linux > log &

What this will do is: It will run file.sh in background and write output to file called log. To check do ls and cat log.

------------------------------------------------------------------------------------

Extra: 
The command `ps -ef` is used in Linux/Unix to **display a detailed list of all running processes** on the system.

 Breakdown:
* `ps` → stands for *process status*
* `-e` → shows **all processes** (system-wide, not just your terminal)
* `-f` → shows **full-format listing** (more detailed output)

What you’ll see:
Running `ps -ef` gives columns like:

UID   PID  PPID  C STIME TTY          TIME CMD
* UID → user who owns the process
* PID → process ID
* PPID → parent process ID
* C → CPU usage
* STIME → start time
* TTY → terminal associated with process
* TIME → CPU time used
* CMD → command that started the process

Example:

ps -ef | grep ssh

Shows all processes related to SSH.
 When it's useful:

* Checking what programs are running
* Finding a process ID (PID) to kill
* Debugging system or script issues

------------------------------------------------------------------------------------------

Example 10: if, else-if, if-else

10.1. Basic `if` statement

Syntax:
if [ condition ]
then
    commands
fi

Example:
a=$1 (Optional if your getting value from user on file execution)
a=20 (if a=$1 not used means then use this)
if [ $a -gt 10 ]
then
    echo "a is greater than 10"
fi
***************************************
10.2. `if-else` statement

Syntax:
if [ condition ]
then
    commands_if_true
else
    commands_if_false
fi

Example:
if [ $a -gt 10 ]
then
    echo "Greater"
else
    echo "Smaller or equal"
fi
**************************************
10.3. `if-elif-else` (else-if ladder)

Syntax:
if [ condition1 ]
then
    commands1
elif [ condition2 ]
then
    commands2
elif [ condition3 ]
then
    commands3
else
    commands_default
fi

Example:


if [ $a -gt 10 ]
then
    echo "Greater than 10"
elif [ $a -eq 10 ]
then
    echo "Equal to 10"
else
    echo "Less than 10"
fi
**************************************

10.4. Important notes

✔ Condition syntax

* Must have spaces inside brackets:
  [ $a -gt 10 ]   # correct
  [$a -gt 10]     # wrong


✔ Common operators

| Type        | Operator | Meaning          |
| ----------- | -------- | ---------------- |
| Numeric     | `-eq`    | equal            |
|             | `-ne`    | not equal        |
|             | `-gt`    | greater than     |
|             | `-lt`    | less than        |
|             | `-ge`    | ≥                |
|             | `-le`    | ≤                |
| String      | `=`      | equal            |
|             | `!=`     | not equal        |
| File checks | `-f`     | file exists      |
|             | `-d`     | directory exists |
*****************************************************

10.5. One-line format (optional)

if [ condition ]; then command; fi

Example:

if [ $a -eq 5 ]; then echo "Five"; fi

*****************************************************
6. Using `[[ ... ]]` (modern Bash)

if [[ $a -gt 10 ]]
then
    echo "Greater"
fi


* More powerful than `[ ]`
* Supports pattern matching and logical operators (`&&`, `||`)


-------------------------------------------------------------------------------

Example 11: Example code for below table
| Type        | Operator | Meaning          |
| ----------- | -------- | ---------------- |
| Numeric     | `-eq`    | equal            |
|             | `-ne`    | not equal        |
|             | `-gt`    | greater than     |
|             | `-lt`    | less than        |
|             | `-ge`    | ≥                |
|             | `-le`    | ≤                |
| String      | `=`      | equal            |
|             | `!=`     | not equal        |
| File checks | `-f`     | file exists      |
|             | `-d`     | directory exists |


🔢 NUMERIC OPERATORS
*******************************************************************************
 ✅ `-eq` (equal)

Script: `num_eq.sh`


a=$1

if [ "$a" -eq 10 ]
then
    echo "Equal to 10"
else
    echo "Not equal to 10"
fi

 Run and output:
chmod +x num_eq.sh

./num_eq.sh 10
# Equal to 10

./num_eq.sh 5
# Not equal to 10

./num_eq.sh 0
# Not equal to 10
*******************************************************************************

✅ `-ne` (not equal)
Script: `num_ne.sh`

a=$1

if [ "$a" -ne 10 ]
then
    echo "Not equal to 10"
else
    echo "Equal to 10"
fi


 Run:
./num_ne.sh 5
# Not equal to 10

./num_ne.sh 10
# Equal to 10

./num_ne.sh -3
# Not equal to 10
******************************************************************************

 ✅ `-gt` (greater than)
 Script: `num_gt.sh`

a=$1

if [ "$a" -gt 10 ]
then
    echo "Greater than 10"
else
    echo "Not greater than 10"
fi

 Run:
./num_gt.sh 15
# Greater than 10

./num_gt.sh 10
# Not greater than 10

./num_gt.sh 3
# Not greater than 10
******************************************************************************

 ✅ `-lt` (less than)

Script: `num_lt.sh`

a=$1

if [ "$a" -lt 10 ]
then
    echo "Less than 10"
else
    echo "Not less than 10"
fi

Run:
bash
./num_lt.sh 5
# Less than 10

./num_lt.sh 10
# Not less than 10

./num_lt.sh 20
# Not less than 10
******************************************************************************

✅ `-ge` (greater than or equal)
Script: `num_ge.sh`

a=$1

if [ "$a" -ge 10 ]
then
    echo ">= 10"
else
    echo "< 10"
fi

Run:
./num_ge.sh 10
# >= 10

./num_ge.sh 11
# >= 10

./num_ge.sh 2
# < 10
******************************************************************************

✅ `-le` (less than or equal)
Script: `num_le.sh`

a=$1

if [ "$a" -le 10 ]
then
    echo "<= 10"
else
    echo "> 10"
fi

Run:
./num_le.sh 10
# <= 10

./num_le.sh 5
# <= 10

./num_le.sh 20
# > 10
******************************************************************************

🔤 STRING OPERATORS
✅ `=` (equal)
Script: `str_eq.sh`

str=$1

if [ "$str" = "hello" ]
then
    echo "String is hello"
else
    echo "Different string"
fi

Run:
./str_eq.sh hello
# String is hello

./str_eq.sh hi
# Different string

./str_eq.sh "hello world"
# Different string
******************************************************************************

✅ `!=` (not equal)
Script: `str_ne.sh`

str=$1

if [ "$str" != "admin" ]
then
    echo "Not admin"
else
    echo "Welcome admin"
fi

Run:
./str_ne.sh user
# Not admin

./str_ne.sh admin
# Welcome admin

./str_ne.sh ADMIN
# Not admin
******************************************************************************

📁 FILE OPERATORS
 ✅ `-f` (file exists)
Script: `file_check.sh`

file=$1

if [ -f "$file" ]
then
    echo "File exists"
else
    echo "File not found"
fi

Run:
./file_check.sh file_check.sh
# File exists

./file_check.sh test.txt
# File exists (if present)

./file_check.sh abc.txt
# File not found
******************************************************************************

✅ `-d` (directory exists)
Script: `dir_check.sh`

dir=$1

if [ -d "$dir" ]
then
    echo "Directory exists"
else
    echo "Not a directory"
fi

Run:
./dir_check.sh /home
# Directory exists

./dir_check.sh .
# Directory exists

./dir_check.sh file_check.sh
# Not a directory


⚠️ IMPORTANT EDGE CASES (Must Know)
❌ Missing argument (common error)

------------------------------------------------------------------------------------
1️⃣ Basic Function Without Parameters
📄 File Name

hello_function.sh

📜 Script
#!/bin/bash

welcome() {
    echo "Welcome to Shell Scripting"
    echo "This is a function example"
}

welcome
▶ Execution
chmod +x hello_function.sh
./hello_function.sh
📌 Explanation
welcome() is function name
Function executes only when called
Reusable block of code

------------------------------------------------------------------------------------
2️⃣ Function With Parameters
📄 File Name

parameter_function.sh

📜 Script
#!/bin/bash

greet() {
    echo "Hello $1"
    echo "Your age is $2"
}

greet Adarsh 25
▶ Execution
chmod +x parameter_function.sh
./parameter_function.sh
📌 Output
Hello Adarsh
Your age is 25
📌 Explanation
$1 → first argument
$2 → second argument

------------------------------------------------------------------------------------
3️⃣ Function Using User Input
📄 File Name

addition_function.sh

📜 Script
#!/bin/bash

add() {
    sum=$(( $1 + $2 ))
    echo "Sum is $sum"
}

echo "Enter first number"
read num1

echo "Enter second number"
read num2

add $num1 $num2
▶ Execution
chmod +x addition_function.sh
./addition_function.sh
📌 Input
10
20
📌 Output
Sum is 30

------------------------------------------------------------------------------------
4️⃣ Function Returning Value
📄 File Name

return_function.sh

📜 Script
#!/bin/bash

check_even() {

    if [ $(( $1 % 2 )) -eq 0 ]
    then
        return 0
    else
        return 1
    fi
}

check_even 10

if [ $? -eq 0 ]
then
    echo "Even Number"
else
    echo "Odd Number"
fi
📌 Explanation
return 0 → success
return 1 → failure
$? stores last command return status

------------------------------------------------------------------------------------
5️⃣ Local Variable Function
📄 File Name

local_variable.sh

📜 Script
#!/bin/bash

demo() {
    local name="Adarsh"
    echo "Inside Function: $name"
}

demo

echo "Outside Function: $name"
📌 Output
Inside Function: Adarsh
Outside Function:
📌 Explanation
local variable accessible only inside function

------------------------------------------------------------------------------------
6️⃣ Global Variable Function
📄 File Name

global_variable.sh

📜 Script
#!/bin/bash

name="Linux"

demo() {
    echo "Inside Function: $name"
}

demo

echo "Outside Function: $name"
📌 Output
Inside Function: Linux
Outside Function: Linux

------------------------------------------------------------------------------------
7️⃣ Nested Function Example
📄 File Name

nested_function.sh

📜 Script
#!/bin/bash

second() {
    echo "Second Function"
}

first() {
    echo "First Function"
    second
}

first

------------------------------------------------------------------------------------
8️⃣ Recursive Function Example
📄 File Name

recursive_function.sh

📜 Script
#!/bin/bash

factorial() {

    if [ $1 -le 1 ]
    then
        echo 1
    else
        prev=$(factorial $(( $1 - 1 )))
        echo $(( $1 * prev ))
    fi
}

result=$(factorial 5)

echo "Factorial is $result"

------------------------------------------------------------------------------------
9️⃣ Menu Driven Script Using Functions
📄 File Name

menu_function.sh

📜 Script
#!/bin/bash

show_date() {
    date
}

show_users() {
    who
}

show_path() {
    pwd
}

echo "1. Show Date"
echo "2. Show Users"
echo "3. Show Path"

read choice

case $choice in

1)
    show_date
    ;;

2)
    show_users
    ;;

3)
    show_path
    ;;

*)
    echo "Invalid Choice"
    ;;
esac

------------------------------------------------------------------------------------
🔟 Function Library Example
📄 File Name

math_functions.sh

📜 Script
#!/bin/bash

addition() {
    echo $(( $1 + $2 ))
}

subtraction() {
    echo $(( $1 - $2 ))
}
📄 Main File

main.sh

📜 Script
#!/bin/bash

source math_functions.sh

result=$(addition 10 20)

echo "Addition is $result"
▶ Execution
chmod +x main.sh
./main.sh
🎯 Real-Time Examples for Students
Example 1: Service Status Checker
check_service() {

    systemctl status $1
}

check_service sshd
Example 2: Backup Function
backup() {

    cp -r $1 /backup
}

backup /home/ec2-user/data

------------------------------------------------------------------------------------
📘 Important Theory to Explain
Advantages of Functions
Code reuse
Easier debugging
Better readability
Modular programming
📌 Special Variables in Functions
Variable	Meaning
$1	First argument
$2	Second argument
$#	Number of arguments
$@	All arguments
$?	Last command status

------------------------------------------------------------------------------------






























