
18.09.14

Lessons learned:
================

* Generate ssh keys to work with github (I had generated another set of keys and overwrote the ones that were working already, so I had to create a set again to add it to github) [generate ssh key] (https://help.github.com/articles/generating-ssh-keys)

* ```npm init``` to start a new ```package.json``` file.

* ```npm install <package> --save-dev``` development dependencies (libraries and frameworks that will help when developing the application, but shouln't be included into the final product)

* The name of the npm module is ```coffee-script``` and not ```coffeescript```, npm will let you know you've spelled it wrong anyways.

* When you get something like:

        Error: Cannot find module 'body-parser'
    Means you have to install the module, you are requiring a module that isn't in the ``node_modules`` folder.

* Getting:

        $ coffee app.coffee
        Listening on port 8080

        events.js:72
                throw er; // Unhandled 'error' event
                      ^
        Error: listen EADDRINUSE
        .
        .
        .
    Means you have already some other application runing on the same port. Still have to figure out how to handle it in the code so that it doesn't break the app.

02.10.14

* To open Sublime Text (or any program really) through Git Bash:
According to [this](http://www.sublimetext.com/forum/viewtopic.php?f=2&t=4461) forum:
	1. Find the location of the ```.bash_profile``` file with this: ```echo $HOME```. If the file does not exist, create one with the same name.
	2. Add an [```alias```](http://tldp.org/LDP/abs/html/aliases.html) line to the file using this: ```alias subl="/c/Program\ Files/Sublime\ Text\ 2/sublime_text.exe"``` (the path to the actual instance of sublime must be different for every installation, for instance, I changed it to ```"/c/Program\ Files/Sublime\ Text/sublime_text.exe"```)
	3. If you pass a ```.``` to the command, it will open the current folder with all the files inside, you could also pass the name of a file as an argument and it will be opened in sublime.
* Sublime Text: To add a key binding for a command on the command palette:
	* If you already know the command name (and its arguments):
		* Go to ```Preferences > Key Bindings - User``` and Add the key binding like so:
			```{ "keys": ["ctrl+alt+a"], "command": "align_tab", "args": {"live_preview": true} }```
	* [In case you don't know the command](http://stackoverflow.com/questions/11834652/bind-shortcut-to-command-palette-command), you can open Sublime Text's console (```View > Show Console ```) and type: ```sublime.log_commands(True)```. Open the command palette and trigger the command, the console will show it's name: ```command: align_tab {"live_preview": true}```
	* ***Note:*** that is a plugin I installed, called [AlignTab](https://github.com/randy3k/AlignTab) 