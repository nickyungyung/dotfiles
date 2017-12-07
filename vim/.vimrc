"===[ General ]===
set nocompatible
filetype plugin on
filetype indent on
syntax on

"===[ Plugin ]===
execute pathogen#infect()

" Dragvisuals
runtime plugin/dragvisuals.vim
vmap     <expr> <left>  DVB_Drag('left')
vmap     <expr> <right> DVB_Drag('right')
vmap     <expr> <down>  DVB_Drag('down')
vmap     <expr> <up>    DVB_Drag('up')
vmap     <expr> <D>     DVB_Duplicate()
vmap     <expr> <C-D>   DVB_Duplicate()

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeStatusLine="%{matchstr(getline('.'),'\\s\\zs\\w\\(.*\\)')}"

noremap  <c-E> :NERDTreeToggle<cr>
noremap! <c-E> :NERDTreeToggle<cr>

" YouCompleteMe
let g:ycm_min_num_of_chars_for_completion = 3
let g:ycm_max_num_candidates = 25

let g:ycm_filetype_blacklist = {
    \ 'tagbar': 1,
    \ 'qf': 1,
    \ 'notes': 1,
    \ 'markdown': 1,
    \ 'unite': 1,
    \ 'text': 1,
    \ 'vimwiki': 1,
    \ 'pandoc': 1,
    \ 'infolog': 1,
    \ 'mail': 1,
    \ 'html': 1,
    \ 'gitconfig': 1,
    \}

let g:ycm_error_symbol = '>'
let g:ycm_warning_symbol = '>'
let g:ycm_enable_diagnostic_highlighting = 0

let g:ycm_global_ycm_extra_conf = "/home/alan/.vim/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0
let g:ycm_filepath_completion_use_working_dir = 1
let g:ycm_extra_conf_vim_data = ['&filetype']
let g:ycm_python_binary_path = '/usr/bin/python3'

nnoremap <leader>0      :let g:ycm_auto_trigger=0<cr>
nnoremap <leader>1      :let g:ycm_auto_trigger=1<cr>

"===[ Color scheme ]===
colorscheme onedark

"hi YcmErrorSection cterm=underline ctermfg=196
"hi YcmWarningSection cterm=underline ctermfg=196

"===[ UI/UX ]===
set mouse=a
set cursorline
set incsearch
set number
set relativenumber
set noshowmatch

set history=500
set hidden
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"===[ Statusline ]===
set laststatus=2
set statusline=
set statusline+=%#StatusLineGit#
set statusline+=%{StatusLineGit()}
set statusline+=%#User{1}#
set statusline+=\ %{HasPaste()}%r%f%h
set statusline+=%=
set statusline+=%{GetCwd()}
set statusline+=\ %y
set statusline+=\ %l,\%-2c
set statusline+=\ \|%3p%%

function! HasPaste()
    if &paste
        return 'PASTE MODE'
    endif
    return ''
endfunction

function! GetCwd()
    let cwd=getcwd()
    let cwd=substitute(cwd, '/home/.\{-}/', '~/', '')
    let cwd=substitute(cwd, '[^~].*\(.\{25\}$\)\@=', '/...', '')
    let cwd=substitute(cwd, '\.\.\.[^/]*', '...', '')
    return cwd
endfunction

function! GitBranch()
    return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatusLineGit()
    let l:branchname=GitBranch()
    return strlen(l:branchname)>0?'  '.l:branchname.' ':''
endfunction

"===[ Tab, indent, wrap ]===
set autoindent
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smartindent

exec "set listchars=tab:\u2015\u2015,trail:\uB7"
set list

set formatoptions+=t
set wrap
set textwidth=80
set colorcolumn=81

"===[ Regex ]===
set magic
set ignorecase
set smartcase

"===[ Files, backups and undo ]===
set fileformat=unix
set fileencoding=utf8
set encoding=utf8
set nowritebackup
set noswapfile

" Trim trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

"===[ File explorer (netrw) ]===
set path+=**
set wildmenu
set helpheight=35

let g:netrw_banner=0
let g:netrw_liststyle=3
let g:netrw_browse_split=1
let g:netrw_altv=1
let g:netrw_winsize=25
let g:netrw_sort_by='time'
let g:netrw_sort_direction='reverse'

"===[ Remap ]===
let mapleader="-"
noremap ; :
noremap : ;

" Homerow keys
noremap H 0
noremap J L
noremap K H
noremap L $

noremap $ J
noremap 0 K

" Unset defaults
inoremap jk         <esc>
inoremap kj         <esc>
inoremap JK         <esc>
inoremap KJ         <esc>

" Undo habits
"inoremap <esc>      <nop>
"inoremap <up>       <nop>
"inoremap <down>     <nop>
"inoremap <left>     <nop>
"inoremap <right>    <nop>
"nnoremap <up>       <nop>
"nnoremap <down>     <nop>
"nnoremap <left>     <nop>
"nnoremap <right>    <nop>

" Fix tmux
map     <esc>OA     <up>
map     <esc>OB     <down>
map     <esc>OD     <left>
map     <esc>OC     <right>
map!    <esc>OA     <up>
map!    <esc>OB     <down>
map!    <esc>OD     <left>
map!    <esc>OC     <right>
map!    <esc>[3~    <del>

" Swap undo
noremap    U   <c-R>
noremap <c-R>     U

" Shortcuts
noremap <space>     :setlocal hlsearch!<cr>
noremap <tab>       :setlocal wrap!<cr>
noremap <c-w>'      :vsp<cr>
noremap <c-w>"      :sp<cr>
noremap <c-w><c-h>  <c-w>9<
noremap <c-w><c-j>  <c-w>9-
noremap <c-w><c-k>  <c-w>9+
noremap <c-w><c-l>  <c-w>9>

nnoremap <cr>       o<esc>
nnoremap <c-s>      :w<cr>

nnoremap <leader>ec :vsplit /home/alan/.vim/vimrc<cr>
nnoremap <leader>sc :source /home/alan/.vim/vimrc<cr>

nnoremap <F9> :call EchoHighlightName()<cr>

function! EchoHighlightName()
    echo "hi: " . synIDattr(synID(line("."),col("."),1),"name")
        \ . " \| trans: " . synIDattr(synID(line("."),col("."),0),"name")
        \ . " \| lo: " . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name")
endfunction

"===[ Abbrevations ]===
" Common typos
iabbrev fro         for
iabbrev adn         and
iabbrev swithc      switch
iabbrev swihtc      switch
iabbrev siwthc      switch
iabbrev csae        case
iabbrev caes        case