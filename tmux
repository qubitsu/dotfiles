# Reload .tmux.conf file with C-b r
bind r source-file ~/.tmux.conf

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

# Better statusline colors for Solarized
set -g status-bg green
set -g status-fg black
