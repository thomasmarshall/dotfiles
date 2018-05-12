if exists('*minpac#init')
  call minpac#init()
  call minpac#add('airblade/vim-gitgutter')
  call minpac#add('k-takata/minpac', {'type': 'opt'})
  call minpac#add('othree/html5.vim')
  call minpac#add('othree/yajs.vim')
  call minpac#add('pangloss/vim-javascript')
  call minpac#add('scrooloose/nerdtree')
  call minpac#add('thoughtbot/vim-rspec')
  call minpac#add('tpope/vim-commentary')
  call minpac#add('othree/es.next.syntax.vim')
  call minpac#add('junegunn/fzf.vim')
endif

command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()

syntax enable
filetype plugin indent on

color reset
color tom

set nowrap
set number
set backspace=indent,eol,start
set clipboard+=unnamed
set backupdir=/tmp
set directory=/tmp
set list listchars=tab:··,trail:·
set expandtab
set softtabstop=2
set shiftwidth=2
set shiftround
set incsearch
set hlsearch
set colorcolumn=80
set laststatus=2

let g:mapleader = ","

vmap \\ <Plug>Commentary
nmap \\ <Plug>CommentaryLine

if executable('rg')
  set grepprg=rg\ --color=never
endif

set rtp+=/usr/local/opt/fzf
map <C-p> :Files<CR>

function! HideStatusLine()
  set laststatus=0
endfunc

function! ShowStatusLine()
  set laststatus=2
endfunc

map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

let g:rspec_command = "!bin/rspec {spec}"

silent! source ~/.vimrc.local
