# Setups dev env 

tmux -u new-session -s dev_env -d
tmux rename-window -t dev_env logs 
tmux send-keys -t dev_env 'avb' C-m
tmux send-keys -t dev_env 'make dev-web-https' C-m
tmux send-keys -t dev_env 'make show-logs' C-m
tmux split-window -h 
tmux send-keys -t dev_env 'avf' C-m
tmux send-keys -t dev_env 'yarn start' C-m
tmux resize-pane -R 50

tmux new-window -t dev_env
tmux rename-window -t dev_env shells 
tmux send-keys -t dev_env 'avb' C-m
tmux send-keys -t dev_env 'make backend-shell-https' C-m
tmux send-keys -t dev_env 'set -o vi' C-m
tmux split-window -h 
tmux send-keys -t dev_env 'avb' C-m
tmux split-window -v 
tmux send-keys -t dev_env 'avf' C-m
tmux resize-pane -R 50

tmux new-window -t dev_env
tmux rename-window -t dev_env infra 
tmux send-keys -t dev_env 'avi' C-m
tmux split-window -v 
tmux send-keys -t dev_env 'avi' C-m

tmux new-window -t dev_env
tmux rename-window -t dev_env int 
tmux send-keys -t dev_env 'avi' C-m

tmux new-window -t dev_env
tmux rename-window -t dev_env prod 

tmux new-window -t dev_env
tmux rename-window -t dev_env deploy 

tmux new-window -t dev_env
tmux rename-window -t dev_env deploy1 

tmux -u attach-session -t dev_env
