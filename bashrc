
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export GIT_EDITOR="vim"

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
