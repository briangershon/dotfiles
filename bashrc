if [[ "$OSTYPE" =~ ^darwin ]]; then
   export GIT_EDITOR="DYLD_FORCE_FLAT_NAMESPACE=1 DYLD_INSERT_LIBRARIES=/usr/local/Cellar/python/2.7.8_1/Frameworks/Python.framework/Versions/2.7/lib/libpython2.7.dylib vim"
else
   export GIT_EDITOR="vim"
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# Source all private files in ~/dotfiles/private/
function src() {
  local file
  for file in ~/dotfiles/bashrc_private/*; do
    source "$file"
  done
}

src
