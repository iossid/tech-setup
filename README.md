tech-setup
==========

Miscellaneous environment setup


Symbolic Links
--------------

Here are some useful symbolic links to create:

    TODO
    ln -s existing_file new_file


TextMate
--------

### Whitespace

TODO: add instructions to remove trailing whitespace on `shift+save` (`⇧⌘S`).

### Hidden files and folders

To show hidden folders in the "Project Drawer" (except for `.git`),
go to Preferences > Advanced > Folder References, and then change
"Folder Pattern" to:

    !.*/(\.git|CVS|_darcs|_MTN|\{arch\}|blib|.*~\.nib|.*\.(framework|app|pbproj|pbxproj|xcode(proj)?|bundle))$

Change "File Pattern"

    from: !(/\.(?!htaccess)[^/]*|\.(tmproj|o|pyc)|/Icon\r|/svn-commit(\.[2-9])?\.tmp)$
    to:   !(/\.(?!\W*)[^/]*|\.(gitkeep|DS_Store|tmproj|o|pyc)|/Icon\r|/svn-commit(\.[2-9])?\.tmp)$

This suggestion is [from here](https://gist.github.com/chrisyour/728445).

### Django bundle

Follow [these instructions](https://code.djangoproject.com/wiki/TextMate):

    $ cd ~/Library/Application\ Support/TextMate/Bundles
    $ git clone https://github.com/textmate/python-django.tmbundle.git
    $ git clone https://github.com/textmate/python-django-templates.tmbundle.git

Then go to Bundles > Bundle Editor > Reload Bundles.
