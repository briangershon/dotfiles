README
======

These are Brian Gershon's personal dotfiles for Linux and OSX.

## Installation

The latest are at [http://github.com/briangershon/dotfiles](http://github.com/briangershon/dotfiles)

For Linux, I install these on Linux via my [linux-desktop-ansible](https://github.com/briangershon/linux-desktop-ansible).

For OSX, I manually symlink the following files/folders into `~` with a `.` prefix: `vim`, `vimrc`, `tmux.conf`, `bash_profile`, `bash_rc`, `gitconfig`.

Custom bash scripts related to a specific machine or that are private can be placed in `./bashrc_private` folder.

On first install of Vim, run `vim/sync-bundles.sh` to bring down all the bundles.

## Inspirations

* [http://dotfiles.github.io/](http://dotfiles.github.io/)
