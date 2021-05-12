"sourct $VIMRUNTIME/vimrc_example.vim
"source $VIMRUNTIME/mswin.vim
"==SET $HOME FOR VIMWIKI AND NERDTREE
"let $HOME = $USERPROFILE
" set beneath to VIMdb folder on Window10
"let $HOME = "C:/Users/martin/TestWiki"
"let $HOME = "H:/GoogleDrive_phibase1/VIMdb/"
"cd $HOME
"set foldlevel=99 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   Filename: .vimrc                                                         "
" Maintainer: Michael J. Smalley <michaeljsmalley@gmail.com>                 "
"        adapted: by Martin Urban
"        URL: http://github.com/martin2urban/dotfiles-1                     "
"                                                                            "
"                                                                            "
" Sections:                                                                  "
"   01. General ................. General Vim behavior                       "
"   02. Events .................. General autocmd events                     "
"   03. Theme/Colors ............ Colors, fonts, etc.                        "
"   04. Vim UI .................. User interface behavior                    "
"   05. Text Formatting/Layout .. Text, tab, indentation related             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PACKAGE MANAGMENT
packadd minpac
call minpac#init()
"for trick beneath https://github.com/dhruvasagar/dotfiles/blob/master/vim/vimrc
let g:vim_home = get(g:, 'vim_home', expand('~/dotfiles/vim/'))
exec 'source' g:vim_home.'/packages.vim'
" Load all vim configs {{{1
let config_list = [
      \ 'config.vim',
      \ 'autocmd.vim',
      \ 'commands.vim',
      \ 'mappings.vim',
      \]
"for files in config_list
"  for f in glob(g:vim_home.files, 1, 1)
"    exec 'source' f
"  endfor
"endfor

" Set at the end to work around 'exrc'
set secure

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 02. Events                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on " filetype detection[ON] plugin[ON] indent[ON]

" In Makefiles DO NOT use spaces instead of tabs
autocmd FileType make setlocal noexpandtab
" In Ruby files, use 2 spaces instead of 4 for tabs
autocmd FileType ruby setlocal sw=2 ts=2 sts=2


" Highlight characters that go over 80 columns
"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 04. Vim UI                                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number                " show line numbers
set cul                   " highlight current line
set laststatus=2          " last window always has a statusline
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set showmatch
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 05. Text Formatting/Layout                                                 "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set autoindent            " auto-indent
set tabstop=4             " tab spacing
set softtabstop=4         " unify
set shiftwidth=4          " indent/outdent by 4 columns
set shiftround            " always indent/outdent to the nearest tabstop
set expandtab             " use spaces instead of tabs
set smarttab              " use tabs at the start of a line, spaces elsewhere
set nowrap                " don't wrap text

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 06. Martin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"MU from neovim
set shortmess=I 


set mouse=a
set splitright
let mapleader = ","
map <Leader>nt :NERDTree<CR>
"map <Leader>t :vert sp \| terminal <CR> \|<C-w>l   "from neovim
map <Leader>ev :e $MYVIMRC<CR>
map <Leader>so :source $MYVIMRC<CR>
"
" simpler write: contol-Esc 
" writes from insert mode and is back in insertmode j
"inoremap <c-w> <c-o>:w<cr>

set background=light
"colorscheme solarized8




"for vim-grepper
let g:grepper = {}
let g:grepper.tools = ['grep', 'git', 'rg']
" Search for the current word
nnoremap <Leader>* :Grepper -cword -noprompt<CR>
" Search for the current selection
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" Terminal 
highlight! link TermCursor Cursor
highlight! TermCursorNC guibg=red guifg=white ctermbg=1 ctermfg=15

cabbrev grep GrepperGrep

" plugin-editorconfig  by sgur
"When working on multiple codebases, you may encounter different conventions
"for indentation size, indentation style, character encodings, and so on. The
".editorconfig file has become a de-facto standard for specifying settings, scoped
"by filetype and directory. This format is designed to be editor-agnostic, and
"you can make Vim understand these files by installing a plugin.
"call minpac#add('sgur/vim-editorconfig')

"======================================================================================
"======FROM OFFICE Windows settings
"======================================================================================
set autochdir 

set wrap "soft wrap which does not change text but simply displays it on mulitiple lines
set linebreak
set nolist " list disables linebreak, list shows non-printing charaters

:iab h1 -----
:iab h2 **********************************************************
:iab h3 ~~~~~~~~~~~~~~


" Underline the current line with dashes in normal mode
nnoremap <F5> yypv$hr*
nnoremap <F6> yypv$hr=
nnoremap <F7> yypv$hr-

" Underline the current line with dashes in insert mode

inoremap <F5> <Esc>yypv$hr*yykP2jo<Esc>
inoremap <F6> <Esc>yypv$hr=yykP2jo<Esc>
inoremap <F7> <Esc>yypv$hr-yykP2jo<Esc>


"set clipboard=unnamed  "binds: noremp p"+p
" easy way to get back to normal mode   
inoremap jj <Esc>  

  


" Make command line two lines high
set ch=2

" Don't update the display while executing macrosI
set lazyredraw                                             

" Show the current mode
set showmode
" Allow the cursor to go in to "invalid" places
"set virtualedit=all
" Make the command-line completion better
" Add the unnamed register to the clipboard
set clipboard+=unnamed
"save when going to anouther buffer or tab
au FocusLost * :wa
"avoid the annoing "no write since last change" message
set hidden

"undofile tells Vim to create <FILENAME>.un~ files whenever you edit a file. These files contain undo information so you can undo previous actions even after you close and reopen a file.
set undofile
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch
"allows block selecton, rectangular selections can be mad
"set virtualedit=all    
    





"TwiddleCase function allows to visually select text then press~ to convert
"the text to UPPER CASE, then to lower case, then to Title case. Keep pressing
"~ until you get the case you want!
function! TwiddleCase(str)
  if a:str ==# toupper(a:str)
    let result = tolower(a:str)
  elseif a:str ==# tolower(a:str)
    let result = substitute(a:str,'\(\<\w\+\>\)', '\u\1', 'g')
  else
    let result = toupper(a:str)
  endif
  return result
endfunction
vnoremap ~ ygv"=TwiddleCase(@")<CR>Pgv



"from www.vimbits.com, MU 13/12/2012         
"reselect visual block after indent/outdent
vnoremap < <gv
vnoremap > >gv

"force saving files that require root permissions
cmap w!! %!sudo tee > /dev/null %

"clear search highlights using leader, this is: ',,'
noremap <silent><Leader>, :nohls<CR>

"automatically reload vimrc when it's saved, doesnt work in Windows
"au BufWritePost .vimrc so $MYVIMRC<CR> 
"for linux: au BufWritePost .vimrc so ~/.vimrc

"keep serch pattern at the center of the screen
nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <silent> g# g#zz             


"Easier increment/decrement
nnoremap + <C-a>
nnoremap - <C-x>


"updated open files when changed externally
set autoread


noremap j gj


"match ErrorMsg /2014/
match ErrorMsg /\*...\*/
"set foldmethod=marker
"Enable folding with the spacebar
nnoremap <space> za
"remove some of the folding complexity using plugin tmhedberg/SimpylFold
let g:SimpylFold_docstring_preview=1


"  VIMWIKI for notes using Markdown 
" vimwiki with markdown support
"call minpac#add('vimwiki/vimwiki')
"call minpac#add('mattn/calendar-vim')
"map <Leader>c :call ToggleCalendar()<CR>
"autocmd FileType vimwiki map <Leader>d :VimwikiMakeDiaryNote
"let g:vimwiki_list = [{'path': '$HOME/VIMdb/vimwiki/', 'syntax': 'default', 'ext': '.wiki'},
"                     \{'path': '$HOME/VIMdb/personalWiki/', 'syntax': 'default', 'ext': '.wiki'}   
"                     \]


"while for encrypted files, swap-, undo- backup- file es are also encrypted,
"text in memory is not encrypted. The viminfo file is also not encrypted and
"should not be used.
set viminfo=

"easier jumping between split vim windows
noremap <C-l> <C-W>l
noremap <C-h> <C-W>h

set number relativenumber
"map Goy distractin free writing
"nnoremap <Leader>g :Goyo<CR>

let g:NERDTreeDirArrowExpandable = '+' 
let g:NERDTreeDirArrowCollapsible = '-'
scriptencoding utf-8
set encoding=utf-8
let g:webdevicons_enable =0

"for TMUX
"automatically rebalance windows on vim resize
autocmd Vimresized * :wincmd =
"zoom a vim pane, <c-w>= to re-balance
nnoremap <leader>- :wincmd _<cr> :wincmd \|<cr>
nnoremap <leader>= : wincmd =<cr>

"for full stack development, yuc an use this au command for each filetype
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

call minpac#add('vim-scripts/indentpython.vim')

"Flagging unnecessary whitespace
"highlight BadWhitespace ctermbg=red guibg=red

"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8
"call minpac#add('Valloric/YouCompleteMe')
let g:ycm_autoclose_preview_window_after_completion=1 
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

highlight Visual ctermbg=Black ctermfg=White
highlight Folded ctermbg=8 
highlight CursorLine cterm=None  
hi Search ctermbg=red
hi Search ctermfg=white
set nocursorline
"settings for rspec & tmux-runner-vim
"map <Leader>t :call RunCurrentSpecFile()<CR> 
"map <Leader>s :call RunNearestSpec()<CR> 
"map <Leader>l :call RunLastSpec()<CR> 
"map <Leader>a :call RunAllSpecs()<CR>

noremap <Leader>r :VtrSendLinesToRunner<CR>
nnoremap <Leader>p :VtrAttachToPane<CR>
nnoremap <Leader>s :VtrSendCommand<CR>
nnoremap <Leader>f :VtrFocusRunner<CR>

nnoremap <Leader>n :!python3 %<CR>




