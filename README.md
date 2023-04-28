
![Logo](https://github.com/MikaelJG/noti/blob/master/assets/noti_logo2.png)

Noti is a cli tool to find or copy personal notes. It is the fastest librarian for the lazy researcher.

Noti was influenced by [tldr](https://github.com/tldr-pages) and [tealdeer](https://github.com/dbrgn/tealdeer).

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
Using zsh? Update your .zshrc file.
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
  noti -help # list all options for Noti 
```
## Recommendation
In your home directory, create or update your .bashrc file.
```bash
$ cd # move to home
$ vim .bashrc # edit your .bashrc file
$ alias wd="~/path/to/noti.sh -wd" # write a definition with wd 
$ alias wl="~/path/to/noti.sh -wl" # write a note for a language with wl 
$ alias wt="~/path/to/noti.sh -wt" # write a note for a tool with wt 
$ alias wx="~/path/to/noti.sh -wx" # write a note for linux with wx 

# for example
  alias noti="~/code/noti/noti/noti.sh -wd"
```
## Demo

https://user-images.githubusercontent.com/101736882/219138401-ab22f52d-21d1-44c0-ab1f-61d2506c2e06.mp4

## Thanks 

Big thanks to all collaborators. Your support made a difference on the project!
