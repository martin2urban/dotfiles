"source ~/dotfiles/vim/packages.vim   is specified in vimrc file to source this file
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 00. Plugin management
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:PackInit() abort
  packadd minpac
  call minpac#init()

  call minpac#add('k-takata/minpac', {'type': 'opt'})
  call minpac#add('tmhedberg/SimpylFold')
  call minpac#add('sgur/vim-editorconfig')
  call minpac#add('tpope/vim-unimpaired')
  call minpac#add('preservim/nerdtree')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')
  call minpac#add('ryanoasis/vim-devicons')
  call minpac#add('junegunn/goyo.vim')
  call minpac#add('ctrlpvim/ctrlp.vim')
  call minpac#add('tpope/vim-surround')
  call minpac#add('mhinz/vim-grepper')
  call minpac#add('machakann/vim-highlightedyank')
  call minpac#add('lifepillar/vim-solarized8')
  call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
  call minpac#add('christoomey/vim-tmux-navigator')
  call minpac#add('christoomey/vim-tmux-runner')
  call minpac#add('thoughtbot/vim-rspec')
  call minpac#add('vim-scripts/indentpython.vim')
endfunction

command! PackUpdate call s:PackInit() | call minpac#update()
command! PackClean  call s:PackInit() | call minpac#clean()
command! PackStatus call s:PackInit() | call minpac#status()

"Commands:
":PackUpdate   - install/update all plugins
":PackClean    - remove unused plugins
":PackStatus   - show plugin status
