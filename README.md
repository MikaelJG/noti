
![Logo](https://github.com/MikaelJG/noti/blob/master/assets/noti_logo2.png)

Noti is a cli tool to find or copy personal notes. It is the fastest librarian for the lazy researcher.

Noti was influenced by [tldr](https://github.com/tldr-pages) and [tealdeer](https://github.com/dbrgn/tealdeer).

"The tldr-pages project is a collection of community-maintained help pages for command-line tools, that aims to be a simpler, more approachable complement to traditional man pages."


## Installation

Clone this repository where you see fit.

```bash
$ cd ~/code
$ git clone git@github.com:MikaelJG/noti.git
```
## Moving your notes

Copy all of your programming notes in noti/notes/languages.

```bash
$ mv *.py ~/code/noti/notes/languages/py
$ mv *.js ~/code/noti/notes/languages/js
```

Copy all of your tech definitions in noti/notes/dictionary.

```bash
$ mv *.txt ~/code/noti/notes/dictionary
```

## Aliases for Noti

In your home directory, update your .bashrc or .bash_aliases file. If if doesn't exist, create it.

```bash
$ cd                             # move to home
$ vim .bashrc                    # edit your .bashrc file
$ alias noti="~/path/to/noti.sh" # write an alias to noti.sh

# for example
  alias noti="~/code/noti/noti/noti.sh"
```

Using zsh? Update your .zshrc file.

```bash
$ cd                             # move to home
$ vim .zshrc                     # edit your zshrc file 
$ alias noti="~/path/to/noti.sh" # write an alias to noti.sh

# for example
  alias noti="~/code/noti/noti/noti.sh"
```

# Usage  

## Help

Options.

```bash
$ noti          # list all options for Noti 

# OR

$ noti -help    # list all options for Noti 
```
## Read

Read a tech definition in dictionary by using by providing one argument. Read a programming
note by providing two arguments (language, then note name).

```bash
$ noti azure    # find my note on Azure in notes/dictionary

$ noti js if    # find my note on Javascript if statement,
                # in notes/languages/js
```
## Create

Create a new tech definition in dictionary or a programming note with the -w option.

```bash
$ noti -w azure    # write a new note named azure in notes/dictionary

$ noti -w js if    # write a new note named if in notes/languages/js
```

## Update

Update an existing tech definition in dictionary or a programming noti with the -u option.

```bash
$ noti -u azure    # update my note on azure in notes/dictionary

$ noti -u js if    # update my note named if in notes/languages/js
```

## Alias Combo Recommendation

In your home directory, update your .bashrc or .bash_aliases file.

```bash
$ cd                                # move to home
$ vim .bashrc                       # edit your .bashrc file

  alias w="~/path/to/noti.sh -w"    # write a new note
  alias u="~/path/to/noti.sh -u"    # update a note


# for example
  alias w="~/code/noti/noti/noti.sh -w"
```

## Demo

To be updated soon.

## Thanks 

Big thanks to all collaborators. Your support made a difference on the project!
