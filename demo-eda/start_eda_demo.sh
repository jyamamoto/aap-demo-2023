#!/usr/bin/env bash

SESSION="ansible-rulebook-environment"

cd /root/demo-eda/
echo "Creating tmux EDA session" 
tmux new-session -d -s ${SESSION}
tmux rename-window ansible-rulebook-environment
#tmux select-pane -T ansible-rulebook
#tmux split-window -v
#tmux select-pane -T cli
echo "Starting ansible-rulebook web check"
tmux send-keys -t %0 'ansible-rulebook -r url-check-example.yml -i inventory_web.yml --print-events' ^M
