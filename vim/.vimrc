" reference: https://qiita.com/ysuzuki19/items/17988627d85adb88a322
set encoding=utf-8
scriptencoding utf-8

syntax on

set expandtab
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set shiftwidth=4

set number

" delete uncessary spaces
"autocmd BufWritePre * :%s/\s\+$//ge

set incsearch
set ignorecase
set smartcase
set hlsearch

nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

set wildmenu

" set paste
if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"
    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction
  inoremap <special> <expr> <Esc>[200~ XTermPasteBegin{""}
  endif

" activate backspace
set backspace=indent,eol,start

" visualize tab, space etc.
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%

" markdown-preview setting
nnoremap <silent> ;;p :MarkdownPreview<CR>

" vim-plug
call plug#begin()
Plug 'dart-lang/dart-vim-plugin'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug'] }
call plug#end()

