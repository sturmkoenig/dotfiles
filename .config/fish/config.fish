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
alias nrs='node run serve'
alias ms='mob start 15 --ourDtadRoom1337'
alias awsDev='aws sso login --profile dev && aws2-wrap --export --profile dev'
alias awsProd='aws sso login --profile prod && aws2-wrap --export --profile prod'

set -gx EDITOR nvim

function code
  open -a "Visual Studio Code.app" $argv
end

# Created by `pipx` on 2024-06-26 10:00:23
set PATH $PATH /Users/linuslauer/.local/bin

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin $PATH /Users/linuslauer/.ghcup/bin # ghcup-env

pyenv init - | source
