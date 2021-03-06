syntax on
"set gfn=Monospace\ 11

set t_Co=256
set background=dark
" color wombat256mod
hi Number                ctermfg=73                cterm=none                guifg=#e5786d        gui=none
execute pathogen#infect()
" NERDTree
let NERDTreeChDirMode = 1
map <silent> <leader>f :NERDTreeToggle<CR>

" Tabs!
" Spaces
set expandtab
set shiftwidth=2
set tabstop=2

" Show line numbers
set number

" Place backups in tmp directory (not working directory)
set backupdir=~/tmp

" Display right margin at column #80
" set colorcolumn=80
" hi ColorColumn ctermbg=236 guibg=#383838
" Change background color
" hi Normal ctermfg=252 ctermbg=234 cterm=none guifg=#e3e0d7 guibg=#242424 gui=none
" hi LineNr ctermfg=241 ctermbg=234 cterm=none guifg=#857b6f guibg=#242424 gui=none

set list listchars=tab:→\ ,trail:·

" Supposedly sets yank to use the system clipboard as its default register,
" but I have yet to see this work
set clipboard+=unnamed

filetype plugin indent on

" Custom filetypes
au BufNewFile,BufRead *.md set ft=markdown

" Use Unix fileformat regardless of the format of the current file
set ff=unix

" use python/perl regexp syntax
nnoremap / /\v
vnoremap / /\v

" Faster split resizing (+,-) and navigation. Thanks Adam!
if bufwinnr(1)
  map + <C-w>+
  map - <C-w>-
  map <C-J> <C-w>j
  map <C-K> <C-w>k
  map <C-H> <C-w>h
  map <C-L> <c-w>l
"  map <C-w> <C-o><C-w>
end

" Nerdtree Tabs
" map <Leader>n <plug>NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 1

" -------------------------
" Project-specific settings

" au BufRead,BufNewFile ~/Development/example/* set tabstop=4 softtabstop=4 expandtab

" vim-jsbeautify
  map <c-f> :call JsBeautify()<cr>
" syntastic
let g:syntastic_javascript_checkers = ['jshint']
