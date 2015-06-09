if [[ "$OSTYPE" == linux-gnu && -d "$HOME/.linuxbrew" ]]; then
  path[1,0]="$HOME/.linuxbrew/bin"
  manpath[1,0]="$HOME/.linuxbrew/share/man"
  infopath[1,0]="$HOME/.linuxbrew/share/info"
fi
