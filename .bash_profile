if [[ -f /opt/dev/dev.sh ]]; then source /opt/dev/dev.sh; fi

# Open TMUX session 'default' on terminal init
if command -v tmux &> /dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

force () {
  branch=${1}
  git push origin $branch --force-with-lease
}

# Custom command to interact with dot files
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias dus='dev down && dev up && dev s'
alias alias+='vim ~/.bash_profile'
alias web='dev cd web'
alias test='dev test'
alias kil='kill $(lsof -t -i :40020)'
alias r='source ~/.bashrc'
if [ -e /Users/nicholaslewanowicz/.nix-profile/etc/profile.d/nix.sh ]; then . /Users/nicholaslewanowicz/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
