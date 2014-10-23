README
======

These are Brian Gershon's personal dotfiles for Linux and OSX.

## Installation

The latest are at [http://github.com/briangershon/dotfiles](http://github.com/briangershon/dotfiles)

For Linux:

* I install these on Linux via my [linux-desktop-ansible](https://github.com/briangershon/linux-desktop-ansible).

For OSX:

* I manually symlink the following files/folders into `~` with a `.` prefix: `vim`, `vimrc`, `tmux.conf`, `bash_profile`, `bash_rc`, `gitconfig`. For example `ln -s ~/dotfiles/vim .vim`

* I install MacVim via <http://code.google.com/p/macvim/#Download> and copy mvim shell helper into `/usr/local/bin` and then symlink `vim` to `mvim` so that Vim can be opened up in either GUI or terminal mode.  Since I'm using a newer python from Homebrew, I have to setup an alias via my .bashrc so the YouCompleteMe Vim bundle works ok without a "Python quit unexpectedly" error:

    alias vim="DYLD_FORCE_FLAT_NAMESPACE=1 DYLD_INSERT_LIBRARIES=/usr/local/Cellar/python/2.7.8_1/Frameworks/Python.framework/Versions/2.7/lib/libpython2.7.dylib vim"

    alias mvim="DYLD_FORCE_FLAT_NAMESPACE=1 DYLD_INSERT_LIBRARIES=/usr/local/Cellar/python/2.7.8_1/Frameworks/Python.framework/Versions/2.7/lib/libpython2.7.dylib mvim"

* `brew install the_silver_searcher` for use Ag in CtrlP Vim plugin.

* `brew install reattach-to-user-namespace` for tmux and OSX Yosemite support

Then:

Custom bash scripts related to a specific machine or that are private can be placed in `./bashrc_private` folder.

You need a global install of node and npm for "tern" Vim plugin. `brew install node`

On first install of Vim, run `vim/sync-bundles.sh` to bring down all the bundles.

Then compile dependencies for YouCompleteMe bundle.

Since I'm using a new python installed from Homebrew, I need to compile YouCompleteMe under the system Python. Plus add a line in .vimrc to point to the correct version of Python for YouCompleteMe to avoid "The ycmd server SHUT DOWN" errors: `let g:ycm_path_to_python_interpreter = '/usr/bin/python'`

    cd ~/.vim/bundle/YouCompleteMe

    cmake -G "Unix Makefiles" -DPYTHON_LIBRARY=/usr/local/opt/python/Frameworks/Python.framework/Versions/2.7/lib/libpython2.7.dylib -DPYTHON_INCLUDE_DIR=/usr/local/opt/python/Frameworks/Python.framework/Versions/2.7/Headers . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp

    ./install.sh

## Inspirations

* [http://dotfiles.github.io/](http://dotfiles.github.io/)

* ["Equipping Vim for JavaScript"](http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/)
