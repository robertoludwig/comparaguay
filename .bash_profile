
# Get Virtual Env
if [[ $VIRTUAL_ENV != "" ]]
    then
      venv="(${VIRTUAL_ENV##*/})"
fi

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="${venv} \[\033[32m\]\W/\[\033[35m\]\$(parse_git_branch)\[\033[00m\] $ "