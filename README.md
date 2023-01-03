
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
Install Noti.
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

https://user-images.githubusercontent.com/101736882/210192432-31ba8f17-b649-4c04-ac35-8f6cfb68c026.mp4

## A summary

Notis is a note-taking and note-showing application. It either finds your notes and read them, or finds your notes and writes them in a file of your choice. 

It's a bash script, with many text files.
Noti is like the livrarian of hundreds of text files. In a way, it is a simpler and faster version of notion, which I'm not a fan of. 

It's a great tool for the command line. You can see your notes faster and reduce your mental overhead.
