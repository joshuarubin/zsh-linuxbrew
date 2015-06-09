if [[ "$OSTYPE" == linux-gnu && -d "$HOME/.linuxbrew" ]]; then
  path[1,0]="$HOME/.linuxbrew/bin"
  manpath[1,0]="$HOME/.linuxbrew/share/man"

  if [[ -z "$INFOPATH" ]]; then
    INFOPATH="$HOME/.linuxbrew/share/info"
  else
    INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
  fi

  export INFOPATH
fi
