# rebind C-a as activation instead of C-b
set -g prefix C-a
unbind C-b
bind C-a send-prefix

# Use | for horizontal split instead of %
unbind %
bind | split-window -h
bind - split-window -v

