#!/bin/bash

# Select a directory using fdfind and fzf-tmux
selected_dir=$(fdfind --type d --hidden --exclude .git --exclude node_modules --exclude vendor | fzf-tmux)

# Check if a directory was selected
if [ -n "$selected_dir" ]; then
    # Extract the directory name to use as the session name
    session_name=$(basename "$selected_dir")

    echo "$session_name"

    # Create a new tmux session with the selected directory
    #tmux new-session -s "$session_name" -c "$selected_dir"
else
    echo "No directory selected."
fi
