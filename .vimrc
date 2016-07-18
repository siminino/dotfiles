"Default settings
set guifont=Monaco:h13

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set number

set clipboard=unnamed

"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/victor.areas/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/victor.areas/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'klen/python-mode'
"NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'Valloric/YouCompleteMe' 
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'juanedi/predawn.vim'

" JS
NeoBundle 'wookiehangover/jshint.vim'
"NeoBundle 'Shutnik/jshint2.vim'
NeoBundle 'ternjs/tern_for_vim'
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}

" Go
NeoBundle 'fatih/vim-go'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" NerdTree
map <D-e> :NERDTreeToggle<CR>

" Color
colo predawn

" Aliases
function! Ipdb()
    let trace = expand("import ipdb; ipdb.set_trace()")
    execute "normal o".trace
endfunction
nmap <D-i> :call Ipdb()<C-M>

nmap <D-s> :w<C-M>

" Python Mode
let g:pymode_folding = 0
let g:pymode_doc = 0
let g:pymode_lint_ignore = "E501"
let g:pymode_rope_completion = 0
let g:pymode_breakpoint = 0
let g:pymode_rope_goto_definition_bind = ''

nmap <leader>q :PymodeLint <C-M>
nmap <leader>a :PymodeLintAuto <C-M>

" YouCompleteMe
nnoremap <D-y> :YcmCompleter GoTo<CR>
let g:ycm_goto_buffer_command = 'new-or-existing-tab'

" Nerd Commenter
map <leader>c<space> <plug>NERDCommenterComment
map <leader>cc <plug>NERDCommenterToggle
