#!/bin/bash

declare -A LANGUAGES
NOTI_DIRECTORY=~/code/noti # DEFINE NOTI_DIRECTORY, ex: ~/path/to/noti
LANGUAGES=( ["js"]="javascript" ["r"]="r" ["tm"]="tmux" ["rx"]="regex" ["sql"]="sql" ["js"]="javascript" ["re"]="react" ["ht"]="html" ["rb"]="ruby" ["sh"]="bash" ["rs"]="rust" ["ts"]="typescript" ["css"]="css" ["cs"]="csharp" ["go"]="golang" ["ph"]="php" ["py"]="python" ["ra"]="rails" ["th"]="three.js" ["vi"]="vim" ["gi"]="git" ["lu"]="lua" ["no"]="node.js" ["sa"]="sass" ["mo"]="mongodb" )

# find_notes modifies the notes_array variable

# in find_notes.sh
# no need to source them. use . ./find_notes.sh

# find_languages modifies the language_array
# noti will have both arrays, no need to source them even
