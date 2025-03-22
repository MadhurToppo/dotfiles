#!/bin/sh
tmux new-session -s "dev" -c ~/workspace/journal -d
tmux new-window -c ~/workspace/ -d
tmux new-window -d
tmux attach-session -d
