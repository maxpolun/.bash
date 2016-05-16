#!/bin/bash
# source all files

dotbash_path="$HOME/.bash"

source $dotbash_path/variables.sh
source $dotbash_path/config.sh
source $dotbash_path/path.sh
source $dotbash_path/commands.sh
source $dotbash_path/aliases.sh

# Run twolfson/sexy-bash-prompt
source $HOME/.bash_prompt
