
![Logo](https://github.com/MikaelJG/noti/blob/master/assets/noti_logo2.png)


# Noti

Noti is a command line note-taking and note-writing application. It eases both the browsing and the redaction of notes.

Written in Bash, Noti finds, prints or copies .txt note files. Copy your notes to any other file.
## Installation

In your home directory, create or update your .bashrc file.
```bash
$ cd # move to home
$ vim .bashrc # edit your .bashrc file
```
In .bashrc, write an alias for Noti and Nit.
```bash
  alias noti="~/path/to/file.sh"
  alias nit="lua ~/path/to/file.lua"

  # example
  alias noti="~/code/noti/noti.sh"
  alias nit="lua ~/code/noti/nit.lua"
```
Install Noti.
```bash
$ git clone https://github.com/MikaelJG/Noti  
```
Install Lua for Nit.
```bash
$ sudo apt install lua5.3
```
## Examples

Specify a language and a note to read.
```bash
$ noti rs if # print a rust if statement
$ noti sr if # language not supported
$ noti rs iif # note doesn't exist
```
From any directory, create a note.
```bash
$ nit rs iif # creates iff.txt with vim
$ noti rs iif # print my new iif note
```
## Options

Find the supported languages.
```bash
$ noti -l # supported languages: ...
$ noti -w rs if # write note in most recent file.
$ nit rs new-note # create new note for rs.
```

## Demo

https://user-images.githubusercontent.com/101736882/210192432-31ba8f17-b649-4c04-ac35-8f6cfb68c026.mp4

## Summary

Notis is a note-taking and note-showing application. It either finds your notes and read them, or finds your notes and writes them in a file of your choice. 

It's a bash script, with many text files.
Noti is like the livrarian of hundreds of text files. In a way, it is a simpler and faster version of notion, which I'm not a fan of. 

It's a great tool for the command line. You can see your notes faster and reduce your mental overhead.
