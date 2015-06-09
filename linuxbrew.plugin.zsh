if [[ "$OSTYPE" == linux-gnu && -d "$HOME/.linuxbrew" ]]; then
  path[1,0]="$HOME/.linuxbrew/bin"
  manpath[1,0]="$HOME/.linuxbrew/share/man"

  export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"

  if [[ -e /usr/bin/pkg-config ]]; then
    export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$(/usr/bin/pkg-config --variable pc_path pkg-config)"
  fi
fi
