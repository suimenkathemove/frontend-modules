#!/bin/bash

DEV_PATH="$HOME/development"
# EDIT THIS
SCOPE_PATH="$DEV_PATH/suimenkathemove"

# EDIT THIS
PROJECT_NAME="frontend-modules"

cd "$SCOPE_PATH/$PROJECT_NAME" || exit

if tmux has-session -t "$PROJECT_NAME"; then
  tmux attach-session -t "$PROJECT_NAME"
else
  # EDIT THIS
  tmux new-session -s "$PROJECT_NAME" -d

  tmux attach-session -t "$PROJECT_NAME"
fi
