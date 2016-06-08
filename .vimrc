"" ~./vim/janus/vim/vimrc
""
""
"" Janus setup
""


" Define paths
if has('win32') || has('win64') || has('win32unix')
  let g:janus_path = expand("~/.vim/janus/vim")
  let g:janus_vim_path = expand("~/.vim/janus/vim")
else
  let g:janus_path = escape(fnamemodify(resolve(expand("<sfile>:p")), ":h"), ' ')
  let g:janus_vim_path = escape(fnamemodify(resolve(expand("<sfile>:p" . "vim")), ":h"), ' ')
endif
let g:janus_custom_path = expand("~/.janus")

" Source janus's core
exe 'source ' . g:janus_vim_path . '/core/before/plugin/janus.vim'

" You should note that groups will be processed by Pathogen in reverse
" order they were added.
call janus#add_group("tools")
call janus#add_group("langs")
call janus#add_group("colors")



" Disable plugins prior to loading pathogen
" Disable trailing-whitespace from janus in favor of better whitespace
exe 'source ' . g:janus_vim_path . '/core/plugins.vim'
let g:pathogen_disabled = []
"call add(g:pathogen_disabled, 'vim-trailing-whitespace')
"call add(g:pathogen_disabled, 'gundo')
"
""
"" Customisations
""
if filereadable(expand("~/.vimrc.before"))
  source ~/.vimrc.before
endif

" Added by Jonas
"colorscheme phoenix
" autocmd vimenter * NERDTree
"set clipboard=unnamedplus
":ca qq qa!
":ca xx xa
"call matchadd('ColorColumn', '\%81v', 100)
"let g:markdown_fenced_languages = ['html', 'vim', 'ruby', 'javascript', 'python', 'bash=sh']

" autostart NERDTree
"autocmd vimenter * NERDTree
" autostart NERDTree unless file is specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" autoexit NERDTree if last tab
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" autostrip whitespace on save via better-whitespace
"autocmd BufWritePre * StripWhitespace


" set textwidth=80
"set nocompatible
"syntax enable
"set encoding=utf-8
"set showcmd
"filetype plugin indent on
"set history=10000
"set noswapfile
"set ruler
"set autoread
"set autoindent
"set backspace=2
"set hidden
"set nowrap
"set tabstop=2 shiftwidth=2
"set expandtab
"set backspace=indent,eol,start
"set hlsearch
"set incsearch
"set ignorecase
"set smartcase
"set splitbelow
"set splitright

""
"" Pathogen setup
""

" Load all groups, custom dir, and janus core
call janus#load_pathogen()
" .vimrc.after is loaded after the plugins have loaded

" Remap line move to free up Ctrl-j/k
"nnoremap <S-J> :m+<CR>==
"nnoremap <S-K> :m-2<CR>==
" Remap switch to right/left pane
" skipping J/K to avoid overriding line move
"nnoremap <S-L> <C-W><C-L>
"nnoremap <S-H> <C-W><C-H>
"nnoremap <S-J> <C-W><C-J>
"nnoremap <S-K> <C-W><C-K>
"nnoremap <F6> :NERDTreeToggle<cr>
"nnoremap <F7> :UndotreeToggle<cr>
