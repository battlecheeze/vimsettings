" set number of lines (vertical line) and columns (horizontal line)
" for .gvimrc settings only
" set windows equally CTRL + W + =
" set lines=45 columns=170
" this only works at gnome as it can resize automatically
" for .vimrc gnome terminal settings only
"set lines=45 columns=90
" vim -o <file1.blah> <file2.blah> << horizontal split
" vim -O <file1.blah> <file2.blah> << vertical split
" For syntastic and powerline
" display the current mode, filename, file status, ruler, etc
set laststatus=2
" set indentation
" insert space characters whenever the tab key is pressed
set expandtab
" copy the previous identation from the previous line
set autoindent
" automatically inserts one extra level of identation
set smartindent
" number of space characters inserted for identation
set shiftwidth=2
" set the number of columns occupied by a tab character
set tabstop=2
" turn on the option to highlight search results
set hlsearch
" set syntax on
syntax on
" set line numbering
set number
" Set unicode in vim
set encoding=utf-8
set nocompatible
" to see what's in the buffer
set hidden

" resize windows during window split << do research on this
" set winheight=40
" set winminheight=5
" set winwidth=85
" set winminwidth=10

" Open urls in a vim  on a browser, point cursor to the url and type gx in
" normal mode
let g:netrw_browsex_viewer= "firefox"

" Quick open html file on a browser
nnoremap <F12>f :exe '! firefox % &'<CR> 
nnoremap <F12>c :exe '! chromium % &'<CR>
nnoremap <F12>o :exe '! google-chrome % &'<CR>

" SuperTab should be installed to work check the repositories
"Avoid needing to press Ctrl-X then Ctrl-O to invoke the popup completion menu
let g:SuperTabDefaultCompletionType = "context"


" run everytime pathogen 
" easy access to the plugins
execute pathogen#infect()

" Turn on Omni Completion
filetype plugin indent on

" turn on syntax completion for all
set omnifunc=syntaxcomplete#Complete

" automatically starts NERDTree
autocmd vimenter * NERDTree

"Open a NerdTree automatically when vim starts up if no files where specified

autocmd StdinReadPre * let s:std_in =1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Close vim if the only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" remap <CTRL> X + <CTRL> O to <CTRL> <SPACE> for code completion
inoremap <C-Space> <C-x><C-o>
inoremap <C-@> <C-x><C-o>

" syntastic settings
let g:airline#extensions#syntastic#enabled=1
" install powerline fonts at github
let g:airline_powerline_fonts = 1

" airline symbols
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"let g:airline_section_warning (syntastic, whitespace)
" highlight errors automatically when a file is open
let g:syntastic_check_on_open = 1
let g:syntastic_aylways_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
" statusline flag for syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
"set highlighting error synstastic
highlight SyntasticError guibg=#cc3333
highlight SyntasticStyleError guibg=#1a1a1a
" set highlighting warning syntastic
highlight SyntasticWarning guibg=#191919
highlight SyntasticStyleWarning guibg=#737373
" set syntastic location list height whenever there's an error
let g:syntastic_loc_list_height = 7
