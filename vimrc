set nocompatible               " be iMproved
filetype plugin indent on

nnoremap <silent> <buffer> <leader>i :JavaImport<cr>
nnoremap <silent> <buffer> <leader>d :JavaDocSearch<cr>
nnoremap <silent> <buffer> <cr> :JavaSearchContext<cr>
syntax enable
set background=dark

"all the defaults
set softtabstop=4
set shiftwidth=4
set tabstop=4
set expandtab
set nu
set nobackup
set noswapfile
set nowb
set autoindent
set smartindent
set smartcase
set incsearch
set hlsearch
set ruler
set showcmd
set laststatus=2
set guitablabel=%N/\ %t\ %M
set cmdheight=1

"colorscheme :)
syntax on

"all the shortcuts
noremap ,f <Esc>:FufFileWithCurrentBufferDir<CR>
noremap ,v <Esc>:vsp<CR>
noremap ,s <Esc>:sp<CR>
noremap ,n <Esc>:tabn<CR>
noremap ,p <Esc>:tabp<CR>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'solarized'
Bundle 'desert-warm-256'
colorscheme desert
Bundle 'bling/vim-airline'

" non github repos
Bundle 'git://git.wincent.com/command-t.git'

"removes trailing spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()

filetype plugin indent on     " required!
