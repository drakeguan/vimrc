drakeguan's vimrc
============

Author: Shuen-Huei (Drake) Guan <drake.guan@gmail.com>  
Fork me on GITHUB  https://github.com/drakeguan/vimrc

Derived from vgod's vimrc:  
Author: Tsung-Hsiang (Sean) Chang <vgod@vgod.tw>  
on GITHUB  https://github.com/vgod/vimrc.

HOW TO INSTALL
--------------

1. Check out from github

    $ git clone https://github.com/drakeguan/vimrc
    $ cd vimrc
    $ git submodule update --init

2. Install ~/.vimrc and ~/.gvimrc

    $ ./install-vimrc.sh
  
UPGRADE PLUGIN BUNDLES
----------------------

Nearly all plugins were checked out as git submodules, 
which can be upgraded with `git pull`. For example, to upgrade snipmate

     $ cd ~/.vim/bundle/snipmate
     $ git pull

HOW TO USE
----------

The whole vimrc system depends on pathogen.vim, which I cloned as <https://drakeguan@github.com/drakeguan/vim-pathogen>.
The original pathogen is from <https://github.com/tpope/vim-pathogen>.
Use of original pathogen might need you to change your vimrc a little.

* [Pathogen](http://www.vim.org/scripts/script.php?script_id=2332): Pathogen let us install a plugin as a bundle in ~/.vim/bundle seprately.

PLUGINS
-------

* [OmniCppComplete](http://www.vim.org/scripts/script.php?script_id=1520) @[github](https://github.com/vim-scripts/OmniCppComplete.git): C/C++ omni-completion with ctags database.

* [ack](http://www.vim.org/scripts/script.php?script_id=2572) @[github](https://github.com/mileszs/ack.vim.git): A front for the Perl module App::Ack. Ack can be used as a replacement for 99% of the uses of grep.
    * commands:
        * :Ack, :AckAdd, :LAck, and :LAckAdd
    * shortcuts in quickfix:
        * o to open (same as enter)
        * go to preview file (open but maintain focus on ack.vim results)
        * t to open in new tab
        * T to open in new tab silently
        * q to close the quickfix window

* [AutoClose](http://www.vim.org/scripts/script.php?script_id=1849) @[github](https://github.com/Townk/vim-autoclose): Inserts matching bracket, paren, brace or quote.

* [Conque Shell](http://www.vim.org/scripts/script.php?script_id=2771): Run interactive commands inside a Vim buffer.
    * requirements:
        * vim +python or +python3
        * python 2.3+
    * commands:
        * :ConqueTerm [bash|Powershell.exe|python|mysql -h localhost -u joe -p sock_collection]
        * :ConqueTermSplit *command* 
        * :ConqueTermVSplit *command* 
        * :ConqueTermTab *command* 
    * shortcuts in the shell:
        * F9 to send a visual selection from any buffer to the shell.

* [matchit](http://www.vim.org/scripts/script.php?script_id=39) @[github](https://github.com/vim-scripts/matchit.zip): Extended % matching for HTML, LaTeX, and many other languages. 

* nb-pylint: My colleague, nobirmd, developed for pylint integration. :call Pylint()

* [Nerd Commenter](http://www.vim.org/scripts/script.php?script_id=1218) @[github](https://github.com/scrooloose/nerdcommenter.git): A plugin that allows for easy commenting of code for many filetypes. 
    * commands:
        * |NERDComInsertComment| Adds comment delimiters at the current cursor position and inserts between.  Disabled by default. 
    * commands with shortcuts:
        * *leader*-cc |NERDComComment| Comment out the current line or text selected in visual mode. 
        * *leader*-cn |NERDComNestedComment| Same as *leader*-cc but forces nesting. 
        * *leader*-c<space> |NERDComToggleComment| Toggles the comment state of the selected line(s).
        * *leader*-cm |NERDComMinimalComment| Comments the given lines using only one set of multipart delimiters. 
        * *leader*-ci |NERDComInvertComment| Toggles the comment state of the selected line(s) individually. 
        * *leader*-cs |NERDComSexyComment| Comments out the selected lines ``sexily'' 
        * *leader*-cy |NERDComYankComment| Same as *leader*-cc except that the commented line(s) are yanked first. 
        * *leader*-c$ |NERDComEOLComment| Comments the current line from the cursor to the end of line. 
        * *leader*-cA |NERDComAppendComment| Adds comment delimiters to the end of line and goes into insert mode between them. 
        * *leader*-ca |NERDComAltDelim| Switches to the alternative set of delimiters. 
        * *leader*-cl 
        * *leader*-cb |NERDComAlignedComment| Same as |NERDComComment| except that the delimiters are aligned down the left side (*leader*-cl) or both sides (*leader*-cb). 
        * *leader*-cu |NERDComUncommentLine| Uncomments the selected line(s). 

* [Nerd Tree](http://www.vim.org/scripts/script.php?script_id=1658) @[github](https://github.com/scrooloose/nerdtree): A tree explorer plugin for navigating the filesystem.
    * commands:
        * :NERDTree [start-directory | bookmark] to open the NerdTree.
        * :NERDTreeToggle [start-directory | bookmark]
    * shortcuts in the NerdTree window:
        * o.......Open files, directories and bookmarks....................|NERDTree-o|
        * go......Open selected file, but leave cursor in the NERDTree.....|NERDTree-go|
        * t.......Open selected node/bookmark in a new tab.................|NERDTree-t|
        * T.......Same as 't' but keep the focus on the current tab........|NERDTree-T|
        * i.......Open selected file in a split window.....................|NERDTree-i|
        * gi......Same as i, but leave the cursor on the NERDTree..........|NERDTree-gi|
        * s.......Open selected file in a new vsplit.......................|NERDTree-s|
        * gs......Same as s, but leave the cursor on the NERDTree..........|NERDTree-gs|
        * O.......Recursively open the selected directory..................|NERDTree-O|
        * x.......Close the current nodes parent...........................|NERDTree-x|
        * X.......Recursively close all children of the current node.......|NERDTree-X|
        * e.......Edit the current dif.....................................|NERDTree-e|
        * Enter...............same as |NERDTree-o|.
        * double-click.......same as the |NERDTree-o| map.
        * middle-click.......same as |NERDTree-i| for files, same as |NERDTree-e| for dirs.
        * D.......Delete the current bookmark .............................|NERDTree-D|
        * P.......Jump to the root node....................................|NERDTree-P|
        * p.......Jump to current nodes parent.............................|NERDTree-p|
        * K.......Jump up inside directories at the current tree depth.....|NERDTree-K|
        * J.......Jump down inside directories at the current tree depth...|NERDTree-J|
        * Ctrl-J..Jump down to the next sibling of the current directory...|NERDTree-C-J|
        * Ctrl-K..Jump up to the previous sibling of the current directory.|NERDTree-C-K|
        * C.......Change the tree root to the selected dir.................|NERDTree-C|
        * u.......Move the tree root up one directory......................|NERDTree-u|
        * U.......Same as 'u' except the old root node is left open........|NERDTree-U|
        * r.......Recursively refresh the current directory................|NERDTree-r|
        * R.......Recursively refresh the current root.....................|NERDTree-R|
        * m.......Display the NERD tree menu...............................|NERDTree-m|
        * cd......Change the CWD to the dir of the selected node...........|NERDTree-cd|
        * I.......Toggle whether hidden files displayed....................|NERDTree-I|
        * f.......Toggle whether the file filters are used.................|NERDTree-f|
        * F.......Toggle whether files are displayed.......................|NERDTree-F|
        * B.......Toggle whether the bookmark table is displayed...........|NERDTree-B|
        * q.......Close the NERDTree window................................|NERDTree-q|
        * A.......Zoom (maximize/minimize) the NERDTree window.............|NERDTree-A|
        * ?.......Toggle the display of the quick help.....................|NERDTree-?|

* [pydiction](http://www.vim.org/scripts/script.php?script_id=850): Tab-complete your Python code
    * shortcuts:
        * TAB: bring out autocomplete menu.
    * shortcuts in autocomplete menu:
        * TAB: move forward to next.
        * Shift-TAB: to Tab backwards as well.
        * Ctrl-Y: Accept the currently selected match and stop completion.
        * SPACE: Accept the currently selected match and insert a space.
        * Ctrl-E: Close the menu and not accept any match. Ctrl-Y: Accept the currently selected match and stop completion.

* [pydoc](http://www.vim.org/scripts/script.php?script_id=910) @[github](https://github.com/fs111/pydoc.vim): Python documentation view- and search-tool (uses pydoc).
    * commands:
        * :Pydoc re.compile
    * shortcuts:
        * *leader*-pw, *leader*-pW: confliting with *leader*-p right now.

* [python_fn](http://www.vim.org/scripts/script.php?script_id=30): A set of menus/shortcuts to work with Python files.
    * shortcuts:
        * ]t      -- Jump to top of block
        * ]b      -- Jump to bottom of block
        * ]v      -- Select (Visual Line Mode) block
        * ]<      -- Shift block to left
        * ]>      -- Shift block to right
        * ]#      -- Comment selection
        * ]u      -- Uncomment selection
        * ]c      -- Select current/previous class
        * ]d      -- Select current/previous function
        * ]-UP    -- Jump to previous line with the same/lower indentation
        * ]-DOWN  -- Jump to next line with the same/lower indentation"""""""""""
* [python_ifold](http://www.vim.org/scripts/script.php?script_id=2002): Improved version of python_fold. Uses folding expression for python code. 

* python_setting: Other python settings.

* [pythoncomplete](http://www.vim.org/scripts/script.php?script_id=1542): Python Omni Completion.

* [sessionman](http://www.vim.org/scripts/script.php?script_id=2010): Vim session manager.

* [snipMate](http://www.vim.org/scripts/script.php?script_id=2540) @[github](https://github.com/msanders/snipmate.vim): TextMate-style snippets for Vim
    * shortkeys:
        * type the triggering press TAB to bring out the code snippet.

* [surround](http://www.vim.org/scripts/script.php?script_id=1697) @[github](https://github.com/tpope/vim-surround/): Delete/change/add parentheses/quotes/XML-tags/much more with ease.

* [taglist](http://www.vim.org/scripts/script.php?script_id=273): Source code browser (supports C/C++, java, perl, python, tcl, sql, php, etc).
    * shortkeys:
        * F8 to toggle the taglist window.

* [vcscommand](http://www.vim.org/scripts/script.php?script_id=90) @[git](http://repo.or.cz/r/vcscommand.git): CVS/SVN/SVK/git/hg/bzr integration plugin

* [vim-gf-python](https://github.com/mkomitee/vim-gf-python) @[github](https://drakeguan@github.com/drakeguan/vim-gf-python.git): Goto File for Python.
    * shortkeys:
        * `gf`: open in the same window ("goto file")
        * `<C-W>f`: open in a new window
        * `<C-W><C-V>f`: open in a new vertical window
        * `<C-W>gf`: open in a new tabpage

* [vim-latex](http://vim-latex.sourceforge.net/): Latex support.

* [vim-pep8](https://github.com/nvie/vim-pep8): Vim filetype plugin for running PEP8 on Python files.
    * requirements:
        * [pep8](http://pypi.python.org/pypi/pep8)
    * shortkeys:
        * F6 to run pep8 on the opened .py file.


Other good references
---------------------

* http://amix.dk/vim/vimrc.html
* http://spf13.com/post/perfect-vimrc-vim-config-file
* http://amix.dk/vim/vimrc.html
* https://github.com/carlhuda/janus
* https://github.com/akitaonrails/vimfiles
