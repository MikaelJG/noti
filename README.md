
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
$ noti       # list all options for Noti 
$ noti -help # list all options for Noti 
```
## Recommendation
In your home directory, create or update your .bashrc file.
```bash
$ cd # move to home
$ vim .bashrc # edit your .bashrc file
$ alias w="~/path/to/noti.sh -w" # write a definition with wd 
$ alias u="~/path/to/noti.sh -u" # write a definition with wd 

# for example
  alias noti="~/code/noti/noti/noti.sh -wd"
```
## Demo

To be updated soon.

## Thanks 

Big thanks to all collaborators. Your support made a difference on the project!
