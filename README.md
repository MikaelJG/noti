
![Logo](https://github.com/MikaelJG/noti/blob/master/assets/noti_logo2.png)

Written in Bash and Lua, Noti finds, prints or copies .txt note files in the command line. Plus, with Nit, write a note in Noti from any directory. 

Note from anywhere, consult faster, and copy to any other file.
## Installation

In your home directory, create or update your .bashrc file.
```bash
$ cd # move to home
$ vim .bashrc # edit your .bashrc file
$ alias noti="~/path/to/noti.sh" # write an alias to noti.sh

# for example
  alias noti="~/code/noti/noti/noti.sh"
```
Using zsh? Update your .zshrc file
```bash
$ cd # move to home
$ vim .zshrc # edit your zshrc file 
$ alias noti="~/path/to/noti.sh" # write an alias to noti.sh

# for example
  alias noti="~/code/noti/noti/noti.sh"
```
Install Noti.
```bash
$ git clone git@github.com:MikaelJG/noti.git
```
Define Noti's root directory in noti.sh and reader.sh.
```bash
# line 4 of noti.sh
NOTI_D=~/code/noti # define this variable based on its location on your computer, ex: ~/path/to/noti/root
```
## Usage 

Specify a language and a note to read.
```bash

  noti -c : lists all Noti commands / options
  noti -l : lists all supported Languages
  noti -d : counts definitions in Dictionnary 
  noti -t : lists all supported tools in Tools 
  noti -x : counts linux notes in Linux 

   -- in progress -- noti rs ls : list all notes in rust
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

Noti is a note-taking and note-showing application. It either finds your notes and read them, or finds your notes and writes them in a file of your choice. 

It's a bash script, with many text files.
Noti is like the livrarian of hundreds of text files. In a way, it is a simpler and faster version of notion, which I'm not a fan of. 

It's a great tool for the command line. You can see your notes faster and reduce your mental overhead.

## Inspired by

tldr:

The tldr-pages project is a collection of community-maintained help pages for command-line tools, that aims to be a simpler, more approachable complement to traditional man pages.

Maybe you're new to the command-line world? Perhaps you're just a little rusty or can't always recall the arguments for commands like lsof, or tar?

tealdeer

A very fast implementation of tldr in Rust: Simplified, example based and community-driven man pages.
