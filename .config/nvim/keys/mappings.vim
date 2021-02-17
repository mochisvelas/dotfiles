
" set ctl + h to go to previous vim tab
nnoremap <C-h> :tabprevious<CR>
" set ctl + j to go to next vim tab
nnoremap <C-l> :tabnext<CR>
" replace in all document
nnoremap S : %s//g<Left><Left>
" scrolling
noremap K <C-u>
noremap J <C-d>
" swap keys
noremap ; :
noremap : ;

"set tab to navigate through coc completions
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" Set , as the leader key
let mapleader = ","
