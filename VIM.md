VIM
===

These are Vim configs compiled by Brian Gershon [@brianfive](http://www.twitter.com/brianfive) from various sources.

Inspired to switch to Vim at PyCon 2010 by Python colleagues using Vim as their primary editor.

Get the latest from [http://github.com/briangershon/dotfiles](http://github.com/briangershon/dotfiles)

My Current Favorite Sources of Vim Configuration Ideas
------------------------------------------------------
* Drew Neil [VimCasts.org](http://www.vimcasts.org/) [http://github.com/nelstrom/dotfiles](http://github.com/nelstrom/dotfiles)

* Clayton Parker [@claytron](http://www.twitter.com/claytron) for his initial configs with a focus on Python [http://github.com/claytron/dotfiles](http://github.com/claytron/dotfiles)

* Aaron Vanderlip [@AaronVanderlip](http://www.twitter.com/AaronVanderlip)

* Godefroid Chapelle [@__gotcha](http://www.twitter.com/__gotcha) [https://svn.plone.org/svn/collective/vimplone/branches/plippers-vim](https://svn.plone.org/svn/collective/vimplone/branches/plippers-vim)

How I'm Using
-------------
0. I'm using MacVim 7.2 that I compiled myself to include a newer version
   of Python to support the pyflakes.vim extension.

   (Plus compile Ruby since plugins like FuzzyFinder use Ruby)

   Which version is your MacVim currently using?

   In MacVim, type this:

        :python import sys; print sys.version

   If less than Python 2.5, you need to custom compile.

   On SnowLeopard, this is how I compiled it:

    * Read Building MacVim (from: http://code.google.com/p/macvim/wiki/Building)
        * Make sure xcodebuild is symlinked from /usr/bin to xcodebuilddebuild in /Developer/usr/bin
        * Clone the MacVim.git repo: git clone git://repo.or.cz/MacVim.git vim7
        * Configure and build Vim:
        $ cd vim7/src
        $ ./configure --with-features=huge --enable-pythoninterp --enable-rubyinterp --enable-gui-macvim
        $ make
    * To try it: open MacVim/build/Release/MacVim.app

1. Clone repository
  * `$ git clone git@github.com:briangershon/dotfiles.git`

2. Create symlinks
  * `$ ln -s ~/dotfiles/vimrc ~/.vimrc`
  * `$ ln -s ~/dotfiles/vim ~/.vim`

How to use
----------
This section is only just beginning, starting to add helpful info as I add new things.

* See top of .vimrc for a list of common shortcuts.

* Navigation: I prefer using :b and :e to navigate buffers and files. `,x` brings up NERDTree which is nice too.

* Insert python debug line snippet: `pdb<tab>`

* Python (via python_fn.vim)
  * `[[`: Go to the beginning of block
  * `]]`: Go to the end of block
  * `]v`: Select the current block
  * `]<`: Shift the block to left
  * `]>`: Shift the block to right
  * **`]#`: Comment the selection**
  * **`]u`: Uncomment the selection**
  * `]c`: Select the current/previous class
  * `]f`: Select the current/previous function
  * `]`: Jump to the previous line with the same/lower indentation
  * `]`: Jump to the next line with the same/lower indentation

* Fast code navigation via Exuberant ctags (need to install ctags.sourceforce.net)
  * Rebuild ctags for a project in root of project directory (not in Vim): > `ctags -R *`
  * `ctrl-]` to follow a tag
  * `ctrl-t` to go back
  * `:tag ` to search by tag
  * `:stag ` to search by tag, then open in new window

* Searching with Ack, and navigating Quickfix List
  * search with Ack `,a`
  * To close/open QuickFix: `:cclose`  `:copen`
  * When in another window, to open next file in list use `:cn` First item in new file `:cnf`
  * To go to a specific line: `:cc 10`


