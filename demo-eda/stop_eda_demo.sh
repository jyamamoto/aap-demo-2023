#!/usr/bin/env bash

SESSION="ansible-rulebook-environment"
echo "Kill tmux EDA session"
tmux kill-session -t ${SESSION}:0
