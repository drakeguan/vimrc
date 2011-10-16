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

* [OmniCppComplete](http://www.vim.org/scripts/script.php?script_id=1520) [github](https://github.com/vim-scripts/OmniCppComplete.git): C/C++ omni-completion with ctags database.

* [ack](http://www.vim.org/scripts/script.php?script_id=2572) [github](https://github.com/mileszs/ack.vim.git): A front for the Perl module App::Ack. Ack can be used as a replacement for 99% of the uses of grep.
    * commands:
        * :Ack, :AckAdd, :LAck, and :LAckAdd
    * shortcuts in quickfix:
        * o to open (same as enter)
        * go to preview file (open but maintain focus on ack.vim results)
        * t to open in new tab
        * T to open in new tab silently
        * q to close the quickfix window

* [AutoClose](http://www.vim.org/scripts/script.php?script_id=1849) [github](https://github.com/Townk/vim-autoclose): Inserts matching bracket, paren, brace or quote.

* [Conque Shell](http://www.vim.org/scripts/script.php?script_id=2771): Run interactive commands inside a Vim buffer.
    * requirements:
        * vim +python or +python3
        * python 2.3+
    * commands:
        * :ConqueTerm [bash|Powershell.exe|python|mysql -h localhost -u joe -p sock_collection]
        * :ConqueTermSplit <command> 
        * :ConqueTermVSplit <command> 
        * :ConqueTermTab <command> 
    * shortcuts in the shell:
        * <F9> to send a visual selection from any buffer to the shell.

* [matchit](http://www.vim.org/scripts/script.php?script_id=39) [github](https://github.com/vim-scripts/matchit.zip): Extended % matching for HTML, LaTeX, and many other languages. 

* nb-pylint: My colleague, nobirmd, developed for pylint integration. :call Pylint()

* [Nerd Commenter](http://www.vim.org/scripts/script.php?script_id=1218) [github](https://github.com/scrooloose/nerdcommenter.git): A plugin that allows for easy commenting of code for many filetypes. 
    * commands:
        * |NERDComInsertComment| Adds comment delimiters at the current cursor position and inserts between.  Disabled by default. 
    * commands with shortcuts:
        * [count]<leader>cc |NERDComComment| Comment out the current line or text selected in visual mode. 
        * [count]<leader>cn |NERDComNestedComment| Same as <leader>cc but forces nesting. 
        * [count]<leader>c<space> |NERDComToggleComment| Toggles the comment state of the selected line(s).
        * [count]<leader>cm |NERDComMinimalComment| Comments the given lines using only one set of multipart delimiters. 
        * [count]<leader>ci |NERDComInvertComment| Toggles the comment state of the selected line(s) individually. 
        * [count]<leader>cs |NERDComSexyComment| Comments out the selected lines ``sexily'' 
        * [count]<leader>cy |NERDComYankComment| Same as <leader>cc except that the commented line(s) are yanked first. 
        * <leader>c$ |NERDComEOLComment| Comments the current line from the cursor to the end of line. 
        * <leader>cA |NERDComAppendComment| Adds comment delimiters to the end of line and goes into insert mode between them. 
        * <leader>ca |NERDComAltDelim| Switches to the alternative set of delimiters. 
        * [count]<leader>cl 
        * [count]<leader>cb |NERDComAlignedComment| Same as |NERDComComment| except that the delimiters are aligned down the left side (<leader>cl) or both sides (<leader>cb). 
        * [count]<leader>cu |NERDComUncommentLine| Uncomments the selected line(s). 

* [Nerd Tree](http://www.vim.org/scripts/script.php?script_id=1658) [github](https://github.com/scrooloose/nerdtree): A tree explorer plugin for navigating the filesystem.
    * commands:
        * :NERDTree [<start-directory> | <bookmark>] to open the NerdTree.
        * :NERDTreeToggle [<start-directory> | <bookmark>]
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

* [pydoc](http://www.vim.org/scripts/script.php?script_id=910) [github](https://github.com/fs111/pydoc.vim): Python documentation view- and search-tool (uses pydoc).
    * commands:
        * :Pydoc re.compile

* python_fn
* python_ifold
* python_setting
* pythoncomplete

* [vim-surround](https://github.com/tpope/vim-surround/blob/master/doc/surround.txt): deal with pairs of surroundings.

* [xmledit](http://www.vim.org/scripts/script.php?script_id=301): XML/HTML tags will be completed automatically.

* [snipMate](http://www.vim.org/scripts/script.php?script_id=2540): TextMate-style snippets for Vim

* [VisIncr](http://www.vim.org/scripts/script.php?script_id=670): Produce increasing/decreasing columns of numbers, dates, or daynames.
  
* [Cute Error Marker](http://www.vim.org/scripts/script.php?script_id=2653): showing error and warning icons on line.
  
* [vim-latex](http://vim-latex.sourceforge.net/): Latex support.



Other good references
---------------------

* http://amix.dk/vim/vimrc.html
* http://spf13.com/post/perfect-vimrc-vim-config-file
