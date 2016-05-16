#!/bin/bash
# This file lists custom shell commands

alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"

# Find a file with a pattern in name:
function find_file() {
  find . -type f -iname '*'"$*"'*' -ls ;
}
# Find a file with pattern $1 in name and Execute $2 on it:
function find_execute() {
  find . -type f -iname '*'"${1:-}"'*' -exec "${2:-file}" {} \; ;
}

function gh {
  open "https://github.com/mdsol/$1"
}

function gh. {
  gh "$(basename "$PWD")"
}

function proj {
  projdir="/Users/mpolun/mdsol"
  projname="$1"
  projpath="$projdir/$projname"
  if [ -d "$projpath" ]; then
    cd "$projpath" || exit
  else
    cd "$projdir" || exit
    git clone "git@github.com:mdsol/$projname"
    cd "$projname" || exit
  fi
}

function _complete_proj {
  local current=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "$(ls /users/mpolun/mdsol)" -- "$current") )
}
complete -F _complete_proj proj

function max {
  projdir="/Users/mpolun/personal"
  projname="$1"
  projpath="$projdir/$projname"
  if [ -d "$projpath" ]; then
    cd "$projpath" || exit
  else
    cd "$projdir" || exit
    git clone "git@gh-personal:maxpolun/$projname"
    cd "$projname" || exit
  fi
}

function _complete_max {
  local current=${COMP_WORDS[COMP_CWORD]}
  COMPREPLY=( $(compgen -W "$(ls /users/mpolun/personal)" -- "$current") )
}
complete -F _complete_max max

function git-origin-personal {
  project=$(basename \`pwd\`)
  email="orrerey@gmail.com"
  git config --local user.email $email
  git remote add origin "git@gh-personal:maxpolun/${project}.git"
}
