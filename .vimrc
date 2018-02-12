execute pathogen#infect()

inoremap <C-Space> <C-x><C-u>
inoremap <C-@> <C-Space>

" disable auto-indentation when pasting using ctrl+shift+v in insert mode
set paste

" YouCompleteMe configuration
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
filetype on

" eclim configuration
filetype plugin indent on

" gitgutter configuration
let g:gitgutter_realtime = 1
let g:gitgutter_eager = 1
let updatetime = 250

" ctrlp.vim configuration
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" up and down motion
let g:ctrlp_prompt_mappings = {
	\ 'PrtSelectMove("j")':   ['<c-j>', '<c-n>'],
	\ 'PrtSelectMove("k")':   ['<c-k>', '<c-p>'],
	\ 'PrtHistory(-1)':       ['<down>'],
	\ 'PrtHistory(1)':        ['<up>'],
	\ }

" vim-javacomplete2 configuration
"autocmd FileType java setlocal omnifunc=javacomplete#Complete
"let g:JavaComplete_JavaCompiler="/usr/lib/jvm/java-8-openjdk-amd64/bin/javac"

" vim-airline configuration
set laststatus=2
set t_Co=256
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline_theme = 'base16_chalk'

syn on
set nu
set autoindent
set tabstop=4
set shiftwidth=4
set wildmenu
set ignorecase

set nowrap

" make wrapped lines leftovers appear indented also
set breakindent

" show the cursor at the beginning of the tab character instead of at the end
" of it (note: there is a space at the end of this command)
set list lcs=tab:\ \ 

" treat a wrapped line as multiple separate lines
map j gj
map k gk

" make the current line appear in bold
" set cul
" hi CursorLine cterm=BOLD

" disable syntax highlighting for selected text
hi Visual cterm=none ctermbg=white ctermfg=black

" a shotcut to select the next word
noremap <silent> <C-l> <C-c>wevb
