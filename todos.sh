#!/bin/sh

# This script will let you add lines to the todos.txt file in your home directory
delete="d"
checkbox="- [ ] "

if [ "$1" = "-d" ]; then
	delete_line="$2"
	sed -i "$delete_line$delete" ~/Dropbox/dev/todos.txt
	cat ~/Dropbox/dev/todos.txt
elif [ "$1" = "-s" ]; then
	delete_by_string="$2"
	sed -i "/$delete_by_string/$delete" ~/Dropbox/dev/todos.txt
	cat ~/Dropbox/dev/todos.txt
elif [ "$1" = "-n" ]; then
	input_line="$2"
	echo $checkbox$input_line >> ~/Dropbox/dev/todos.txt
	cat ~/Dropbox/dev/todos.txt
elif [ "$1" = "-v" ]; then
	cat ~/Dropbox/dev/todos.txt


fi

