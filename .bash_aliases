#! /usr/bin/bash
#.aliases: functions and aliases

alias vi="vim"
alias la='ls -alh --color=tty'
alias ack5=acksearch
alias directorysize='du -h --max-depth=1 | sort -h'

alias        ..='cd ..'
alias       ...='cd ../..'
alias      ....='cd ../../..'
alias     .....='cd ../../../..'
alias    ......='cd ../../../../..'
alias   .......='cd ../../../../../..'
alias  ........='cd ../../../../../../..'
alias .........='cd ../../../../../../../..'
alias      cd..='cd ..'
alias     cd...='cd ../..'
alias    cd....='cd ../../..'

acksearch () {
    ack -A5 -B5 -i $1
}

cre () {
    git request-pull origin/master $(git config remote.origin.url)
}

function parse_git_branch
{
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return
    echo "${ref#refs/heads/} "
}

alias vid='vim `git diff origin/master --name-only`'

