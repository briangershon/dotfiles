README
======

These are Brian Gershon's personal dotfiles for Linux and OSX.

## Installation

The latest are at [http://github.com/briangershon/dotfiles](http://github.com/briangershon/dotfiles)

For Linux:

* I install these on Linux via my [linux-desktop-ansible](https://github.com/briangershon/linux-desktop-ansible).

For OSX:

* I manually symlink the following files/folders into `~` with a `.` prefix: `vim`, `vimrc`, `tmux.conf`, `bash_profile`, `bash_rc`, `gitconfig`.

* I install MacVim via <http://code.google.com/p/macvim/#Download> and copy mvim shell helper into `/usr/local/bin` and then symlink `vim` to `mvim` so that Vim can be opened up in either GUI or terminal mode.  I renamed the vim in /usr/bin to remove it from the path.

* `brew install the_silver_searcher` for use Ag in CtrlP Vim plugin.

Then:

Custom bash scripts related to a specific machine or that are private can be placed in `./bashrc_private` folder.

You need a global install of node and npm for "tern" Vim plugin.

On first install of Vim, run `vim/sync-bundles.sh` to bring down all the bundles. Then `cd ~/.vim/bundle/YouCompleteMe; ./install.sh`

## Inspirations

* [http://dotfiles.github.io/](http://dotfiles.github.io/)

* ["Equipping Vim for JavaScript"](http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/)
