" show command candidate
set wildmenu
set wildmode=full

" attach colors to text
:syntax on

" show row number
set number

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" !! write plugins here !!

Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'airblade/vim-gitgutter'
Plugin 'scrooloose/nerdtree'
Plugin 'w0rp/ale'
Plugin 'vim-airline/vim-airline'
Plugin 'thinca/vim-quickrun'
Plugin 'epeli/slimux'
Plugin 'posva/vim-vue'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

nnoremap <silent><C-\> :NERDTreeToggle<CR>
nnoremap <silent><C-w> :Gwrite<CR>
nnoremap <silent><C-e> :Gcommit<CR>
nnoremap <silent><C-p> :QuickRun<CR>
map <C-c><C-c> :SlimuxREPLSendLine<CR>j
vmap <C-c><C-c> :SlimuxREPLSendSelection<CR>


" python path
let g:python3_host_prog = '/Users/tomoyuki/.pyenv/shims/python'

" Linter
let g:ale_linters = {
    \ 'python': ['flake8'],
    \ 'html': [],
    \ 'css': ['stylelint'],
    \ 'javascript': ['eslint'],
    \ 'vue': ['eslint']
    \ }

let g:ale_linter_aliases = {'vue': 'css'}

" Fixer
let g:ale_fixers = {
    \ 'python': ['autopep8', 'black', 'isort'],
    \ }

" 各ツールの実行オプションを変更してPythonパスを固定
let g:ale_python_flake8_executable = g:python3_host_prog
let g:ale_python_flake8_options = '-m flake8'
let g:ale_python_autopep8_executable = g:python3_host_prog
let g:ale_python_autopep8_options = '-m autopep8'
let g:ale_python_isort_executable = g:python3_host_prog
let g:ale_python_isort_options = '-m isort'
let g:ale_python_black_executable = g:python3_host_prog
let g:ale_python_black_options = '-m black'

" ファイル保存時に自動的にFixするオプション
let g:ale_fix_on_save = 1
let g:ale_sign_error = '!!'
let g:ale_sign_warning = '--'


