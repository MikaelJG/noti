
![Logo](https://github.com/MikaelJG/noti/blob/master/assets/noti_logo2.png)


# Noti

Noti is a command line note-taking and note-writing application. It eases both the browsing and the redaction of notes.

Written in Bash, Noti finds, prints or copies .txt note files. Copy your notes to any other file.
## Installation

In your home directory, create or update your .bashrc file.
```bash
  cd # move to home
  vim .bashrc # edit your .bashrc file
```
In .bashrc, write an alias for Noti.
```bash
  alias noti="~/path/to/file.sh"

  # example
  alias noti="~/code/noti/noti.sh"
```
Install Noti
```bash
 git clone https://github.com/MikaelJG/Noti  
```
## Examples

Specify a language and a note to read.
```bash
# print a rust if statement
$ noti rs if

$ noti sr if
# language not supported

$ noti rs iif
# note doesn't exist
```

## Demo

Insert gif or link to demo

![Logo](https://github.com/MikaelJG/noti/blob/master/assets/demo.mkv)
