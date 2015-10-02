# Reload .tmux.conf file with C-b r
bind R source-file ~/.tmux.conf

# Rebind C-a as activation instead of C-b
set -g prefix C-a
unbind C-b
bind C-a send-prefix

# Use | for horizontal split instead of %
unbind %
bind | split-window -h
bind - split-window -v

# Use vim-style directions to select panes
bind h select-pane -L
bind j select-pane -D
bind k select-pane -U
bind l select-pane -R

# Have tmux accept and use more colors
set -g default-terminal "screen-256color"

# Better statusline colors for Solarized
set -g status-bg colour0
set -g status-fg colour6

# vim-style copying
set-window-option -g mode-keys vi
bind-key -t vi-copy 'v' begin-selection
bind-key -t vi-copy 'y' copy-selection

# Start windows and panes at 1, not 0
set -g base-index 1
set -g pane-base-index 1

# Add the seconds field to the time
# set -g status-right "#[fg=white]%H:%M:%S[default]'"
