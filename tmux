# Reload Config File
bind r source-file ~/.tmux.conf

# Change Prefix Key to C-a
unbind C-b
set -g prefix C-a
bind C-a send-prefix

# Split Panes Using | and -
bind | split-window -h -c "#{pane_current_path}"
bind - split-window -v -c "#{pane_current_path}"
unbind '"'
unbind %
bind c new-window      -c "#{pane_current_path}"

# Shell, Style
set-option -g default-shell /bin/bash
set -g default-terminal "tmux-256color" 
#set-window-option -g status-fg colour255

# Enable Mouse Mode (tmux 2.1+)
set -g mouse on

# History
set -g history-limit 50000
