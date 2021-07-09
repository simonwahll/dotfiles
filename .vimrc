" Syntax highlighting
syntax on

" Line numbers
set number

" Tab width
set tabstop=4
set shiftwidth=4

" Enable slim cursor in insert mode and block cursor in normal mode.
" GNOME Terminal >= 3.16
if has("autocmd")
	au VimEnter,InsertLeave * silent execute '!echo -ne "\e[1 q"' | redraw!
	au InsertEnter,InsertChange *
		\ if v:insertmode == 'i' |
		\	silent execute '!echo -ne "\e[5 q"' | redraw! |
		\ elseif v:insertmode == 'r' |
		\	silent execute '!echo -ne "\e[3 q"' | redraw! |
		\ endif
	au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

" vim-plug
call plug#begin('~/.vim/plugged')

" Prettier
Plug 'prettier/vim-prettier', {	'do': 'npm install' }

" vim-javascript
Plug 'pangloss/vim-javascript'

" vim-jsx-pretty
Plug 'MaxMEllon/vim-jsx-pretty'

call plug#end()
