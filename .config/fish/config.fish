if status is-interactive
    # Commands to run in interactive sessions can go here
end
fish_vi_key_bindings

alias v=nvim
alias lzy=lazygit
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'


function vcode
  open -a "Visual Studio Code.app" $argv
end
