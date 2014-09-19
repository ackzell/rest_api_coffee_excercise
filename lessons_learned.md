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
