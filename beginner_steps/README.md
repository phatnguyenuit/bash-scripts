# Bash scripts for beginners

## Basic

### 1. Common commands

```sh
# Print current date
date
# Sat Dec 11 22:19:17 +07 2021

# Print current month calendar
cal
#   December 2021      
# Su Mo Tu We Th Fr Sa  
#           1  2  3  4  
#  5  6  7  8  9 10 [11]  
# 12 13 14 15 16 17 18  
# 19 20 21 22 23 24 25  
# 26 27 28 29 30 31     

# Print current working directory
pwd
# /home/fastnguyen/code/bash/beginner_steps

# List out all files and directories located within
ls
# README.md

# Print default interpreter
echo $SHELL
# /usr/bin/zsh
```

### 2. Define Bash script

To define your script's interpreter as *Bash*:

- First locate a full path to its executable binary using `which` command
- Then prefix your script with a [shebang](https://en.wikipedia.org/wiki/Shebang_%28Unix%29) `#!` on the 1st line

```sh
#!/bin/bash

echo "Hello World!"
```

There is another way to run explicitly by using `bash filename.sh` WITHOUT defining `shebang` prefix

```sh
bash filename.sh
```

### 3. File names and permissions

To make your script executable:

```sh
chmod +x /path/to/file.sh
```

Execute

```sh
./path/to/file.sh
```

## References

- [Bash scripts for beginners](https://linuxconfig.org/bash-scripting-tutorial-for-beginners)
- [Parameter Expansions](https://linuxconfig.org/introduction-to-bash-shell-parameter-expansions)
- [Read STDIN](https://www.putorius.net/linux-read-command.html#:~:text=Basic%20Usage%20of%20the%20Read%20Command%201%20Store,of%20Characters.%20...%205%20Input%20with%20Backslash.%20)
- [Dev Hint - Bash](https://devhints.io/bash)