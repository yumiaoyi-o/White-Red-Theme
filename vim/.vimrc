set number
syntax on

" Enable true color support
if has('termguicolors')
    " Needed for tmux/screen
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

" White & Red Theme
set background=light
colorscheme whitered
