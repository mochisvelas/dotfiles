"if empty(glob('~/.vim/autoload/plug.vim'))
"      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
"          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
"    endif

call plug#begin()
Plug 'vimwiki/vimwiki', {'branch': 'dev'}
Plug 'editorconfig/editorconfig-vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'OmniSharp/omnisharp-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()

source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/keys/mappings.vim


" vscode
"if exists('g:vscode')
"    source $HOME/.config/nvim/vscode/settings.vim
"endif


"Use markdown syntax instead of vimwiki syntax
let g:vimwiki_list = [{'path': '~/git/vimwiki/', 'syntax': 'markdown', 'ext': '.md',
    \ 'path_html': '~/git/vimwiki/mysite/'}]
let g:vimwiki_markdown_link_ext = 1
au BufRead,BufNewFile *.md set filetype=vimwiki
autocmd BufRead,BufNewFile *.wiki setlocal spell

let g:vimwiki_list = [{'path': '~/git/vimwiki/', 'path_html': '~/git/vimwiki/'}]

"set tab to navigate through coc completions
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

filetype plugin on
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" convert markdown to html
"g:vimwiki_customwiki2html=$HOME.'/.vim/autoload/vimwiki/customwiki2html.sh'
