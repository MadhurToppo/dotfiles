#!/bin/sh
tmux new-session -s "dev" -d
tmux source-file ~/.config/tmux/tmux.conf
tmux attach-session -d
