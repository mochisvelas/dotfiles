call plug#begin()
Plug 'vimwiki/vimwiki', {'branch': 'dev'}
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
call plug#end()

" Set , as the leader key
let mapleader = ","

" Use markdown syntax instead of vimwiki syntax
let g:vimwiki_list = [{'path': '~/git-enviroment/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_markdown_link_ext = 1
au BufRead,BufNewFile *.md set filetype=vimwiki
autocmd BufRead,BufNewFile *.wiki setlocal spell

"Set tab to 4 in assembly files
autocmd FileType asm setlocal tabstop=5

set nocompatible
filetype plugin on
syntax on
set visualbell
set number
set relativenumber
set incsearch
set smartindent
set rulerformat=%l,%v
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap S : %s//g<Left><Left>
noremap K <C-u>
noremap J <C-d>
noremap ; :
noremap : ;

function! s:check_back_space() abort
let col = col('.') - 1
return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
	\ pumvisible() ? "<C-n>" :
	\ <SID>check_back_space() ? "<TAB>" :
	\ coc#refresh()
inoremap <silent><expr> <S-TAB> pumvisible() ? "<C-p>" : "<C-h>"

colorscheme Monokai
