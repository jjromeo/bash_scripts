# Aliases
alias tat="tmux attach -t"
alias bashp="vim ~/.bash_profile"
alias bashr="vim ~/.bashrc"
alias bscripts="vim ~/.bash_scripts"
alias sb="source ~/.bash_profile"
alias ctb="ctags -R --languages=ruby --exclude=.git --exclude=log . $(bundle list --paths)"
alias vi="vim"
alias vrc="vi ~/.vimrc"
alias tconf="vi ~/.tmux.conf"
#Keep editor set (mainly for git text input)
export EDITOR="vim"
export PATH=$PATH:$(pwd)
# Set up jump
eval "$(jump shell)"
