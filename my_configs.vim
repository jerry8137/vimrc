" Start NERDTree and put the cursor back in the other window
autocmd VimEnter * NERDTree | wincmd p

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif

" Enable mouse mode. 
set mouse=a

" Enable line number.
set number
set relativenumber

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" NERDTree auto refresh
autocmd BufWritePost * NERDTreeFocus | execute 'normal R' | wincmd p

set background=dark
colorscheme peaksea
" colorscheme dracula

