<C-l> in vim-tmux-navigator doesn't work due to conflicts with netwr <C-l> mapping

:verbose map <C-h>
:Lazy reload vim-tmux-navigator

vim-tmux-navigator conflicts with netrw <C-l> mapping. See https://github.com/christoomey/vim-tmux-navigator#netrw or add `let g:tmux_navigator_disable_netrw_workaround = 1` to suppress this warning.
