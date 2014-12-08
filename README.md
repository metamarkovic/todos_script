### Initial setup

To use the script, first make it executable using

```bash
chmod +x todos.sh
```

I recommend that you also rename the script by typing

```bash
mv todos.sh todos
```

To make the script callable from anywhere, place it in /bin/usr/local/

```bash
mv todos /usr/bin/local/
```
Create an empty `todos.txt` file in your dev folder

```bash
touch Dropbox/dev/todos.txt
```

If your filepath is different from mine, you need to change it in the script file. I recommend using search and replace in a text editor.

### Using the script

To use the script, type `todos` and then choose one of four actions

1. Type `-n` to add a new todo to the list, followed by your todo, **in double quotes**
```bash
todos -n "This is my first todo."
```

The todo will appear in the following format

```
- [ ] This is my first todo.
```

2. Type `-v` if you want to view your todo list in the console

```bash
todos -v
```
3. Type `-d` and then a number to delete that line in your todo list. Only do this if you are sure which line you want to delete.

```bash
todos -d 1
```

4. Type `-s` and then a string in quotes, to delete any lines that contain that string

```bash
todos -s "delete any lines with this text"
```

### Terminal welcome

To make your todo list appear in your preamble, just add the following line to your `.zshrc` or `.bashrc` file

```bash
cat ~/Dropbox/dev/todos.txt
```

If your path is different, change it.

*That's it!*
