#!/usr/bin/env sh

set -e

LOCAL_BIN="$(realpath "`dirname "$0"`/../.local/bin")"
HOME_LOCAL_BIN="$HOME/.local/bin"

if [ -d "$HOME_LOCAL_BIN" ]; then
  echo "$HOME_LOCAL_BIN exists"
else
  echo "$HOME_LOCAL_BIN not exists"
  exit 1
fi

if [ -n "$(echo "$PATH" | grep "$HOME_LOCAL_BIN")" ]; then
  echo "$HOME_LOCAL_BIN is in your PATH"
else
  echo "$HOME_LOCAL_BIN is not in your PATH"
  exit 1
fi

for local_bin in $LOCAL_BIN/*; do
  home_local_bin="$HOME_LOCAL_BIN/`basename "$local_bin" .sh`"

  echo "Symlink $local_bin to $home_local_bin"
  ln -sfT "$local_bin" "$home_local_bin"
done
