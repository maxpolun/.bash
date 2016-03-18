# This is for non-secure variables and config. Any secrets go in variables.sh, which is gitignored

export CLICOLOR='xterm-color'
export PAGER=less

export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

export EDITOR='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl -w'
export HOME_SERVER="maxpolun@ddns.net"

export NODE_REPL_HISTORY_FILE=$HOME/.node_history
export ANDROID_HOME="$HOME/android-sdk-macosx"

export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh

# warn on bash < 4: some of these features require bash 4+
if [ ${BASH_VERSINFO[0]} -lt 4 ]
  then
    echo 'warning some features require bash4+'
fi

# Display matches for ambiguous patterns at first tab press
bind "set show-all-if-ambiguous on"

# Save multi-line commands as one command
shopt -s cmdhist

# Avoid duplicate entries
HISTCONTROL="erasedups:ignoreboth"

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history"

# Correct spelling errors during tab-completion
shopt -s dirspell
