#!/zsh/sh
tmux new-session -d -s dev
tmux split-window -v -p 10
tmux select-pane -t 1
tmux attach-session -t dev
