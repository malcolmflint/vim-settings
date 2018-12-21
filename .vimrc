syntax on

set number
set cindent
set tabstop=4
set et
set shiftwidth=4
set tags=~/mytags

colorscheme koehler

nmap ,m :make<cr>
nmap ,e :Explore<cr>
nmap ,s :split<cr>
nmap ,v :vsplit<cr>
nmap :wsh :w<cr>:sh<cr>

command Diff execute 'w !git diff --no-index % -'

execute pathogen#infect()
filetype plugin indent on
autocmd BufWritePost *.py call Flake8()
