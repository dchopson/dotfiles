"execute pathogen#infect()

" ======================
" General Settings
" ======================
syntax on
filetype plugin indent on
filetype plugin on
set number
set nobackup
set noswapfile
" Yanks go on clipboard instead.
set clipboard+=unnamed
set mouse=a
set ttymouse=xterm2
set noundofile
set guifont=Monaco

" ======================
" Formatting Settings
" ======================
set autoindent
set smarttab
set nowrap  " Line wrapping off
set expandtab
set nocp incsearch
set cf
set autowrite
set laststatus=2
set shiftwidth=2
set tabstop=2
set showtabline=2

" ======================
" Remappings
" ======================
" Shortcut command entry
nnoremap ; :
" Shortcut pane traversal
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
nnoremap <leader>l :nohls<CR><leader>l
"nnoremap <C-_> :set cursorline! <CR>
"nnoremap <C-|> :set cursorcolumn!<CR>

" ======================
" Git
" ======================
noremap <silent> <leader>gs :Gstatus<CR>
noremap <silent> <leader>gc :Gcommit<CR>
noremap <silent> <leader>gb :Gblame<CR>
noremap <silent> <leader>gd :Gdiff<CR>
noremap <silent> <leader>ga :Gwrite<CR>
noremap <silent> <leader>gr :Gread<CR>
noremap <silent> <leader>gl :Glog<CR>:cw<CR>

" ======================
" White Space
" ======================
set list
set listchars=eol:■,tab:▸●,trail:●,nbsp:●,extends:▸,precedes:◀
highlight SpecialKey term=standout ctermfg=yellow guifg=yellow

" ======================
" Filetype Rules
" ======================
au BufNewFile,BufRead  *.ui, set filetype=ruby
au BufNewFile,BufRead  Fudgefile, set filetype=ruby
au BufNewFile,BufRead  Guardfile, set filetype=ruby
au BufNewFile,BufRead  Vagrantfile, set filetype=ruby
au BufNewFile,BufRead  Berksfile, set filetype=ruby
au BufNewFile,BufRead  Procfile, set filetype=ruby

" ======================
" NerdTree
" ======================
noremap <silent> <leader>oo :NERDTreeFind<CR>
noremap <silent> <leader>o  :NERDTreeToggle<CR>

"=======================
" CtrlP
"=======================
noremap <leader>p :CtrlP<CR>
let g:ctrlp_show_hidden = 1

" ======================
" Powerline
" ======================
"set rtp+=/home/vagrant/powerline/powerline/bindings/vim
"set tabline=%!tabber#TabLine()

" ======================
" Tabber
" ======================
let g:tabber_divider_style = 'powerline'
let g:tabber_filename_style = 'filename'
let g:tabber_wrap_when_shifting = 1
nnoremap <silent> <leader><Leader> :TabberSelectLastActive<CR>
nnoremap <silent> <leader>tn       :TabberNew<CR>
nnoremap <silent> <leader>tm       :TabberMove<CR>
nnoremap <silent> <leader>tc       :tabclose<CR>
nnoremap <silent> <leader>tl       :TabberShiftLeft<CR>
nnoremap <silent> <leader>tr       :TabberShiftRight<CR>
nnoremap <silent> <leader>ts       :TabberSwap<CR>
nnoremap <silent> <leader>1        :tabnext 1<CR>
nnoremap <silent> <leader>2        :tabnext 2<CR>
nnoremap <silent> <leader>3        :tabnext 3<CR>
nnoremap <silent> <leader>4        :tabnext 4<CR>
nnoremap <silent> <leader>5        :tabnext 5<CR>
nnoremap <silent> <leader>6        :tabnext 6<CR>
nnoremap <silent> <leader>7        :tabnext 7<CR>
nnoremap <silent> <leader>8        :tabnext 8<CR>
nnoremap <silent> <leader>9        :tabnext 9<CR>

