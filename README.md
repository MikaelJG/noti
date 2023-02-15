
![Logo](https://github.com/MikaelJG/noti/blob/master/assets/noti_logo2.png)

Noti is a cli tool to find or copy personal notes. It is the fastest librarian for the lazy book researcher.

Noti was strongly influenced by tldr and tealdeer. Tldr explains it perfectly:

"The tldr-pages project is a collection of community-maintained help pages for command-line tools, that aims to be a simpler, more approachable complement to traditional man pages.

Maybe you're new to the command-line world? Perhaps you're just a little rusty or can't always recall the arguments for commands like lsof, or tar?"

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

List of options.
```bash

  noti -c : lists all Noti commands / options
  noti -l : lists all supported Languages
  noti -d : counts definitions in Dictionnary 
  noti -t : lists all supported tools in Tools 
  noti -x : counts linux notes in Linux 

   -- in progress -- noti rs ls : list all notes in rust
```
## Demo

https://user-images.githubusercontent.com/101736882/210192432-31ba8f17-b649-4c04-ac35-8f6cfb68c026.mp4

## Summary

Noti is a note-taking and note-showing application. It either finds your notes and read them, or finds your notes and writes them in a file of your choice. 

It's a bash script, with many text files.
Noti is like the livrarian of hundreds of text files. In a way, it is a simpler and faster version of notion, which I'm not a fan of. 

It's a great tool for the command line. You can see your notes faster and reduce your mental overhead.
A very fast implementation of tldr in Rust: Simplified, example based and community-driven man pages.
