# This file is from: https://github.com/cjerdonek/tech-setup
# DO NOT EDIT THIS FILE DIRECTLY (unless updating in source control :)).

export EDITOR=nano

#------- virtualenvwrapper | start ------------#

# See here for more info:
# http://virtualenvwrapper.readthedocs.org/en/latest/install.html

# WORKON_HOME defaults to ~/.virtualenvs
export WORKON_HOME=$HOME/Dev/.virtualenvs

# We don't set PROJECT_HOME until we have a workflow using it that makes sense.

source /opt/local/Library/Frameworks/Python.framework/Versions/2.7/bin/virtualenvwrapper.sh

# Call virtualenvwrapper's "workon" if .venv exists.  This is from--
# https://gist.github.com/cjerdonek/7583644
check_virtualenv() {
    if [ -e .venv ]; then
        env=`cat .venv`
        echo "Found .venv in directory. Calling: workon ${env}"
        workon $env
    fi
}
# We wrap "cd" here instead of "builtin cd" because otherwise RVM's
# auto-activation from .ruby-version stopped working for some reason.
# TODO: study RVM to figure out why it stopped working.
# TODO: come up with a way to address the infinite-loop issue different from:
#   https://github.com/justinabrahms/jlilly-bashy-dotfiles/commit/04899f005397499e89da6d562b062545e70d7975#commitcomment-1526375
venv_cd () {
    cd "$@" && check_virtualenv
}
# Call check_virtualenv in case opening directly into a directory (e.g
# when opening a new tab in Terminal.app).
check_virtualenv

# Add the following to ~/.bash_aliases:
# alias cd="venv_cd"

#------- virtualenvwrapper | end --------------#

# Convenience function to set the title of a Terminal tab in Mac OS X.
# See: http://www.devdaily.com/blog/post/mac-os-x/change-title-bar-of-mac-os-x-terminal-window
settitle() {
    echo -n -e "\033]0;${1}\007"
}

# Git tab completion
# See: https://github.com/git/git/blob/master/contrib/completion/git-completion.bash
source ~/.git-completion.sh

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
