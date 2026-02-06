" White & Red - Vim colorscheme
" Blood red gradient on light background - matching VS Code

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let g:colors_name = "whitered"

" Blood red gradient palette (matching VS Code):
" #3A1512 - very dark blood red (keywords)
" #4D1B16 - dark blood red (variables, operators)
" #6B221C - medium-dark blood red (strings, properties)
" #8A2922 - medium blood red (numbers, brackets)
" #AF2F28 - main red (functions)
" #777777 - gray (comments)
" #5E5E5E - medium gray (punctuation)

" Background and foreground
hi Normal       guifg=#1C1C1C guibg=#F4F4F4 ctermfg=234 ctermbg=255
hi NonText      guifg=#DADADA guibg=NONE ctermfg=253
hi EndOfBuffer  guifg=#DADADA guibg=NONE ctermfg=253

" Cursor and selection
hi Cursor       guifg=#F4F4F4 guibg=#AF2F28 ctermfg=255 ctermbg=124
hi CursorLine   guibg=#E8E8E8 ctermbg=254 cterm=NONE
hi CursorColumn guibg=#E8E8E8 ctermbg=254
hi Visual       guibg=#DADADA ctermbg=253

" Line numbers
hi LineNr       guifg=#777777 guibg=NONE ctermfg=243
hi CursorLineNr guifg=#303030 guibg=#E8E8E8 ctermfg=236 ctermbg=254 gui=bold cterm=bold

" Search
hi Search       guifg=#1C1C1C guibg=#DADADA ctermfg=234 ctermbg=253
hi IncSearch    guifg=#FFFFFF guibg=#AF2F28 ctermfg=231 ctermbg=124

" Status line
hi StatusLine   guifg=#303030 guibg=#EEEEEE ctermfg=236 ctermbg=255 gui=NONE cterm=NONE
hi StatusLineNC guifg=#5E5E5E guibg=#E8E8E8 ctermfg=59 ctermbg=254 gui=NONE cterm=NONE
hi VertSplit    guifg=#DADADA guibg=#DADADA ctermfg=253 ctermbg=253

" Popup menu
hi Pmenu        guifg=#303030 guibg=#FAFAFA ctermfg=236 ctermbg=255
hi PmenuSel     guifg=#FFFFFF guibg=#AF2F28 ctermfg=231 ctermbg=124
hi PmenuSbar    guibg=#E8E8E8 ctermbg=254
hi PmenuThumb   guibg=#777777 ctermbg=243

" Tabs
hi TabLine      guifg=#5E5E5E guibg=#E8E8E8 ctermfg=59 ctermbg=254 gui=NONE cterm=NONE
hi TabLineFill  guibg=#EEEEEE ctermbg=255 gui=NONE cterm=NONE
hi TabLineSel   guifg=#1C1C1C guibg=#FAFAFA ctermfg=234 ctermbg=255 gui=bold cterm=bold

" Syntax highlighting - Blood red gradient (matching VS Code)
" Comments - gray italic
hi Comment      guifg=#777777 ctermfg=243 gui=italic cterm=italic

" Keywords - very dark blood red, bold (like VS Code)
hi Statement    guifg=#3A1512 ctermfg=52 gui=bold cterm=bold
hi Conditional  guifg=#3A1512 ctermfg=52 gui=bold cterm=bold
hi Repeat       guifg=#3A1512 ctermfg=52 gui=bold cterm=bold
hi Label        guifg=#3A1512 ctermfg=52 gui=bold cterm=bold
hi Keyword      guifg=#3A1512 ctermfg=52 gui=bold cterm=bold
hi Exception    guifg=#3A1512 ctermfg=52 gui=bold cterm=bold
hi StorageClass guifg=#3A1512 ctermfg=52 gui=bold cterm=bold

" Strings - medium-dark blood red
hi String       guifg=#6B221C ctermfg=88
hi Character    guifg=#6B221C ctermfg=88

" Numbers - medium blood red
hi Number       guifg=#8A2922 ctermfg=124
hi Float        guifg=#8A2922 ctermfg=124
hi Constant     guifg=#8A2922 ctermfg=124
hi Boolean      guifg=#AF2F28 ctermfg=124 gui=bold cterm=bold

" Functions - main red (bright)
hi Function     guifg=#AF2F28 ctermfg=124

" Variables - dark blood red
hi Identifier   guifg=#4D1B16 ctermfg=52

" Operators - dark blood red
hi Operator     guifg=#4D1B16 ctermfg=52

" Types - very dark blood red
hi Type         guifg=#3A1512 ctermfg=52
hi Structure    guifg=#3A1512 ctermfg=52
hi Typedef      guifg=#3A1512 ctermfg=52

" Preprocessor - dark blood red
hi PreProc      guifg=#4D1B16 ctermfg=52
hi Include      guifg=#4D1B16 ctermfg=52
hi Define       guifg=#4D1B16 ctermfg=52
hi Macro        guifg=#6B221C ctermfg=88
hi PreCondit    guifg=#4D1B16 ctermfg=52

" Special - medium blood red
hi Special      guifg=#8A2922 ctermfg=124
hi SpecialChar  guifg=#6B221C ctermfg=88
hi Tag          guifg=#AF2F28 ctermfg=124
hi SpecialComment guifg=#8A2922 ctermfg=124 gui=italic cterm=italic
hi Debug        guifg=#AF2F28 ctermfg=124

" Delimiters/Punctuation - medium gray (matching VS Code JSON brackets)
hi Delimiter    guifg=#5E5E5E ctermfg=59

" Underlined
hi Underlined   guifg=#4D1B16 ctermfg=52 gui=underline cterm=underline

" Error and Todo
hi Error        guifg=#FFFFFF guibg=#AF2F28 ctermfg=231 ctermbg=124
hi Todo         guifg=#AF2F28 guibg=#EEEEEE ctermfg=124 ctermbg=255 gui=bold cterm=bold

" Matching brackets - medium blood red background
hi MatchParen   guifg=#1C1C1C guibg=#DADADA ctermfg=234 ctermbg=253 gui=bold cterm=bold

" Diff
hi DiffAdd      guibg=#E8E8E8 ctermbg=254
hi DiffChange   guibg=#EEEEEE ctermbg=255
hi DiffDelete   guifg=#AF2F28 guibg=#F4F4F4 ctermfg=124 ctermbg=255
hi DiffText     guibg=#DADADA ctermbg=253 gui=bold cterm=bold

" Messages
hi ErrorMsg     guifg=#FFFFFF guibg=#AF2F28 ctermfg=231 ctermbg=124
hi WarningMsg   guifg=#6B221C ctermfg=88
hi MoreMsg      guifg=#4D1B16 ctermfg=52
hi Question     guifg=#AF2F28 ctermfg=124

" Fold
hi Folded       guifg=#5E5E5E guibg=#E8E8E8 ctermfg=59 ctermbg=254
hi FoldColumn   guifg=#777777 guibg=#F1F1F1 ctermfg=243 ctermbg=255

" Spelling
hi SpellBad     guisp=#AF2F28 gui=undercurl ctermfg=124 cterm=underline
hi SpellCap     guisp=#6B221C gui=undercurl ctermfg=88 cterm=underline
hi SpellRare    guisp=#8A2922 gui=undercurl ctermfg=124 cterm=underline
hi SpellLocal   guisp=#4D1B16 gui=undercurl ctermfg=52 cterm=underline

" Terminal colors for Neovim
if has('nvim')
    let g:terminal_color_0  = '#1C1C1C'
    let g:terminal_color_1  = '#AF2F28'
    let g:terminal_color_2  = '#3A1512'
    let g:terminal_color_3  = '#6B221C'
    let g:terminal_color_4  = '#4D1B16'
    let g:terminal_color_5  = '#8A2922'
    let g:terminal_color_6  = '#5E5E5E'
    let g:terminal_color_7  = '#FAFAFA'
    let g:terminal_color_8  = '#303030'
    let g:terminal_color_9  = '#AF2F28'
    let g:terminal_color_10 = '#4D1B16'
    let g:terminal_color_11 = '#8A2922'
    let g:terminal_color_12 = '#6B221C'
    let g:terminal_color_13 = '#AF2F28'
    let g:terminal_color_14 = '#777777'
    let g:terminal_color_15 = '#FFFFFF'
endif
