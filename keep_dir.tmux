#!/usr/bin/env bash

# see https://woss.name/articles/tmux-new-windows-in-current-directory/

# Set the current working directory based on the current pane's current
# working directory (if set; if not, use the pane's starting directory)
# when creating # new windows and splits.
tmux bind-key c new-window -c '#{pane_current_path}'
tmux bind-key '"' split-window -c '#{pane_current_path}'
tmux bind-key % split-window -h -c '#{pane_current_path}'

tmux bind-key S command-prompt "new-session -A -c '#{pane_current_path}' -s '%%'"
