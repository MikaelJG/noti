
![Logo](https://github.com/MikaelJG/noti/blob/master/assets/noti_logo2.png)

Noti is a cli tool to find or copy personal notes. It is the fastest librarian for the lazy researcher.

Noti was strongly influenced by [tldr](https://github.com/tldr-pages) and [tealdeer](https://github.com/dbrgn/tealdeer).

"The tldr-pages project is a collection of community-maintained help pages for command-line tools, that aims to be a simpler, more approachable complement to traditional man pages."

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

Options.
```bash
  noti -c : lists all Noti commands / options
  noti -d : counts definitions in Dictionnary 
  noti -e : edit a note in any location 
  noti -l : lists all supported Languages
  noti -t : lists all supported tools in Tools 
  noti -w.: write a new note in chosen location
  noti -x : counts linux notes in Linux 
```
## Demo

https://user-images.githubusercontent.com/101736882/219138401-ab22f52d-21d1-44c0-ab1f-61d2506c2e06.mp4

## Thanks 

Big thanks to all collaborators. Your support made a difference on the project!
