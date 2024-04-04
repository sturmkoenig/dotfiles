if status is-interactive
    # Commands to run in interactive sessions can go here
end
fish_vi_key_bindings

alias v=nvim
alias lzy=lazygit
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
alias lzycfg='lzy --git-dir $HOME/.cfg/ --work-tree $HOME'
alias vcfg='v ~/.config/nvim/'
alias fishcfg='v ~/.config/fish/config.fish'


function code
  open -a "Visual Studio Code.app" $argv
end
