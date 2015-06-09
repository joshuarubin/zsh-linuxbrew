if [[ "$OSTYPE" == linux-gnu && -d "$HOME/.linuxbrew" ]]; then
  path[1,0]="$HOME/.linuxbrew/bin"
  manpath[1,0]="$HOME/.linuxbrew/share/man"

  brew_prefix="$HOME/.linuxbrew"

  export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

  if [[ -e /usr/bin/pkg-config ]]; then
    export PKG_CONFIG_PATH="$(/usr/bin/pkg-config --variable pc_path pkg-config):$PKG_CONFIG_PATH"
  fi

  if [[ -e $brew_prefix/bin/pkg-config ]]; then
    export PKG_CONFIG_PATH="$($brew_prefix/bin/pkg-config --variable pc_path pkg-config):$PKG_CONFIG_PATH"
  fi

  unset brew_prefix
fi
