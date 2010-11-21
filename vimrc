filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
set nocompatible
set autoindent
set smartindent
set expandtab
set tabstop=4
set shiftwidth=4
set showmatch
set ruler
set incsearch
set nobackup
set textwidth=80
set wrap
set wrapmargin=4
set showcmd
set history=50
set hlsearch
set hidden
set visualbell
syntax on

" Autoloads .vimrc on save
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

let mapleader =","
nmap <leader>v :e $MYVIMRC<CR>

" Bubble single lines
" requires unimpaired.vim
nmap <C-UP> [e
nmap <C-DOWN> ]e

" Bubble multiple lines in visual mode
vmap <C-UP> [egv
vmap <C-DOWN> ]egv

" Sethortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Modify symbols used by set list
set listchars=tab:▸\ ,eol:¬

"" Invisible character colours
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
"" Print Date  at bottom of file with F2

:map <F2> GoDate: <Esc>:read !date<CR>kJ

if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

set t_Co=256
colorscheme sorcerer
" Get gap syntax and indentation working

" For GAP files
augroup gap
    au!
    autocmd BufRead,BufNewFile *.g,*.gi,*.gd source ~/.vim/gap.vim
    autocmd BufRead,BufNewFile *.g,*.gi,*.gd set filetype=gap comments=s:##\ \ ,m:##\ \ ,e:##\ \ b:#
    


" Use PAR to format comment lines starting with ##
    autocmd BufRead,BufNewFile *.g,*.gi,*.gd set formatprg="par w76p4s0j"
    autocmd BufWritePost,FileWritePost *.g,*.gi,*.gd set formatprg="par w76p4s0j"
augroup End

au! Syntax gap source /usr/share/vim/vimcurrent/syntax/gap.vim

" Remove menu and toolbar from gui
set guioptions-=m
set guioptions-=T

" Use ,n to switch buffer
nmap <leader>n :bn<CR>

" Use ,<space> to remove highlighting
nmap <leader><space> :noh<CR>

" Force use of hjkl in normal mode
nnoremap <up>       <nop>
nnoremap <down>     <nop>
nnoremap <left>     <nop>
nnoremap <right>    <nop>

"write date at Top of file in comment.
nmap <leader>D  gg:read !date<Esc><leader>c

" Call Status library change
call jeetlib#_UI_StatusLine_DefineSpecialHighlights()
if has("autocmd")
    au ColorScheme * call jeetlib#_UI_StatusLine_DefineSpecialHighlights()
endif
set statusline=%!jeetlib#_UI_StatusLine_Compose()
set laststatus=2
set cursorline
nmap <leader>c :set<space>cursorcolumn!<CR>
