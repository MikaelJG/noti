#!/bin/bash

script=${BASH_SOURCE[0]}
script_dir=$(dirname "$script")
noti_dir=$(dirname "$script_dir")

notes_dir=$noti_dir/notes
linux_dir=$noti_dir/notes/linux
tools_dir=$noti_dir/notes/tools
dic_dir=$noti_dir/notes/dictionary

last_file=$(ls -Art | tail -n 1)

note_name=$1
note_file="$note_name.txt"
language_or_tool=$2
current_dir=$4

# Languages 
language_note_file="$notes_dir/languages/$language_or_tool/$note_file"
dic_note_file="$notes_dir/dictionary/$note_file"
tools_note_file="$notes_dir/tools/$language_or_tool/$note_file"
linux_note_file="$notes_dir/linux/$note_file"

try_cat() {
    file=$1
    cat "$file" >/dev/null 2>&1 && clear
}

open_last_file() {
    # last doc
    vim -o "$last_file" "$current_dir/$note_file"
}

case $3 in
    -vo|--vo)

        if cat "$language_note_file" >/dev/null 2>&1; then
            echo "Note file found in language"
        elif cat "$tools_note_file" >/dev/null 2>&1; then
            echo "Note file found in language"
        elif cat "$linux_note_file" >/dev/null 2>&1; then
            echo "Note file found in language"
        elif cat "$dic_note_file" >/dev/null 2>&1; then
            echo "Note file found in language"

        try_cat $language_note_file 
        try_cat $tools_note_file && 
        try_cat 
        try_cat 
esac

# try to cat and throw away the output
try_cat "${file_2["note_file"]}" && cat "${file_2["note_file"]}" && exit
try_cat "${file_3["note_file"]}" && cat "${file_3["note_file"]}" && exit
try_cat "${file_1["note_file"]}" && cat "${file_1["note_file"]}" && exit
try_cat "${file_4["note_file"]}" && cat "${file_4["note_file"]}" && exit

clear && echo "Couldn't find the file"
