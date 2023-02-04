#!/bin/bash
# CHANGE THIS FIRST LINE IF YOU ARE USING ZSH

declare -A LANGUAGES
NOTI_DIRECTORY=~/code/noti # DEFINE NOTI_DIRECTORY, ex: ~/path/to/noti
LANGUAGES=( ["js"]="javascript" ["st"]="stylus" ["le"]="less" ["r"]="r" ["tm"]="tmux" ["rx"]="regex" ["sql"]="sql" ["js"]="javascript" ["re"]="react" ["ht"]="html" ["rb"]="ruby" ["sh"]="bash" ["rs"]="rust" ["ts"]="typescript" ["css"]="css" ["cs"]="csharp" ["go"]="golang" ["ph"]="php" ["py"]="python" ["ra"]="rails" ["th"]="three.js" ["vi"]="vim" ["gi"]="git" ["lu"]="lua" ["no"]="node.js" ["sa"]="sass" ["mo"]="mongodb" )
COMMANDS=( "aa" "option" "options" "command" "man" "commands" "manual" "zz") 
DEFINITIONS=( "aa" "def" "definition" "dictionnary" "dic" "definitions" "zz") 

. ~/code/noti/noti/find_notes.sh
. ~/code/noti/noti/find_languages.sh
. ~/code/noti/noti/find_definitions.sh
. ~/code/noti/noti/find_cli.sh
# All read methods, in seperate files
. ~/code/noti/noti/read_notes.sh
. ~/code/noti/noti/read_definitions.sh
. ~/code/noti/noti/read_cli.sh
# . ~/code/noti/noti/read_frameworks.sh
# . ~/code/noti/noti/read_libraries.sh
# The modify last file methods, in a seperate file
#. ~/code/noti/noti/mod_last_file.sh

