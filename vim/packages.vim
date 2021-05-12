"source ~/.vim/packages.vim   is specified in vimrc file to source this file
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 00. Plugin management                                                                "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
command! PackUpdate packadd minpac | source $MYVIMRC | redraw | call minpac#update()
command! PackClean packadd minpac | source $MYVIMRC | redraw | call minpac#clean()

if !exists('*minpac#init')
      finish
  endif

call minpac#init()

call minpac#add('tmhedberg/SimpylFold')
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('sgur/vim-editorconfig')
call minpac#add('tpope/vim-unimpaired')
call minpac#add('preservim/nerdtree')
call minpac#add('bling/vim-airline')
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('ryanoasis/vim-devicons')
"call minpac#add('tsony-tsonev/nerdtree-git-plugin')
call minpac#add('junegunn/goyo.vim')
call minpac#add('ctrlpvim/ctrlp.vim')
call minpac#add ('sgur/vim-editorconfig')
call minpac#add ('tpope/vim-surround')


" vim-grepper allows to run grep asynchronoulsy
call minpac#add('mhinz/vim-grepper')   
call minpac#add('machakann/vim-highlightedyank')
call minpac#add('lifepillar/vim-solarized8')
"call minpac#add('dense-analysis/ale')
call minpac#add('tpope/vim-scriptease', {'type': 'opt'})
"https://thoughtbot.com/upcase/videos/tmux-navigation
call minpac#add('christoomey/vim-tmux-navigator')
call minpac#add('christoomey/vim-tmux-runner')
call minpac#add('thoughtbot/vim-rspec')
"call minpac#add('python-mode/python-mode')


"Commdands:
":PackUpdate
":PackClean
