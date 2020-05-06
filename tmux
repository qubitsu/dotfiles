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
# set -g default-terminal "screen-256color" # this broke syntax highlighting in tmux vim on Ubuntu
set -g default-terminal "xterm-256color" # this left vim with a weird background
# apply true color as an override to the xterm-256color parmeter set above
set-option -ga terminal-overrides ",xterm-256color:Tc"

# Better statusline colors for Solarized
set -g status-bg colour0
set -g status-fg colour6

# vim-style copying
set-window-option -g mode-keys vi
bind-key -T copy-mode-vi 'v' send-keys -X begin-selection
bind-key -T copy-mode-vi 'y' send-keys -X copy-selection

# Inhibit control characters when copying in gnome terminal
set-option -s set-clipboard off

# Start windows and panes at 1, not 0
set -g base-index 1
set -g pane-base-index 1

# Add the seconds field to the time
# set -g status-right "#[fg=white]%H:%M:%S[default]'"

#### COLOUR (Solarized dark)

# default statusbar colors
set-option -g status-style bg=black,fg=yellow

# default window title colors
set-option -g window-status-style fg=brightblue,bg=default #base0

# active window title colors
set-option -g window-status-current-style fg=brightred,bg=default #orange

# pane border
set-option -g pane-border-style fg=black #base02
set-option -g pane-active-border-style fg=brightgreen #base01

# message text
set-option -g message-style bg=black,fg=brightred

# pane number display
set-option -g display-panes-active-colour blue #blue
set-option -g display-panes-colour brightred #orange

# clock
set-window-option -g clock-mode-colour green #green

# bell
# set-window-option -g window-status-bell-style fg=black,bg=red #base02, red
