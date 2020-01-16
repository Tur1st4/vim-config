" Configuração do Vundle e Plugins

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'Shougo/neocomplete.vim'
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
Plugin 'scrooloose/nerdtree'
Plugin 'ryanoasis/vim-devicons'
Plugin 'cj/vim-webdevicons'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'johngrib/vim-game-code-break'

syntax on

call vundle#end()
filetype plugin indent on

" Comandos para informações do autor

command Author echo "Author: Tur1st4 [ https://github.com/Tur1st4 ]"
command License echo "License: MIT License"

" Configuração do .vimrc
" Para funcionar o Ctrl+S (Salvar), adicione: tty -ixon no seu ~/.bashrc

set nu!
set mouse=a

vnoremap <C-a> ggVG
inoremap <C-r> <Esc>:wq<CR>
inoremap <C-s> <Esc>:w<CR>i
noremap <C-q> <Esc>:q<CR>

iabbrev bash #!/bin/bash

function! Shell()
	r ~/.vim/autocode/bash.tur1st4
endfunction

function! DiscordCommand()
	r ~/.vim/autocode/discord_command.tur1st4
endfunction

function! IgnoreJavaScript()
	r ~/.vim/autocode/git_js.tur1st4
endfunction

command SH call Shell()
autocmd BufNewFile *.sh call Shell()

command DC call DiscordCommand()
command IJS call IgnoreJavaScript()

" Definindo esquema de cor dracula

colorscheme dracula

" Configurações do NerdTree

autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd vimenter * wincmd p

let g:NERDTreeDirArrowExpandable = '✚'
let g:NERDTreeDirArrowCollapsible = '➜'

set encoding=utf8
let g:airline_powerline_fonts = 1
set guifont=FantasqueSansMono-Regular\ 13
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
let g:NERDTreeShowIgnoredStatus = 1
let g:webdevicons_enable_nerdtree = 1

if has('gui_running')
	set guifont=Monospace\ 13
endif
