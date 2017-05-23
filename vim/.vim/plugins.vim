call plug#begin('~/.vim/plugged')

" UI
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'nanotech/jellybeans.vim'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'gregsexton/MatchTag'
Plug 'yuttie/comfortable-motion.vim'

" Autocompletion
Plug 'kien/ctrlp.vim'
Plug 'Shougo/neocomplcache'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf', { 'dir': '~/go/src/github.com/junegunn/fzf', 'do': 'go install github.com/junegunn/fzf/src/fzf' }

" Automatic Helpers
Plug 'scrooloose/syntastic'
Plug 'vim-scripts/IndexedSearch'
Plug 'Raimondi/delimitMate'
Plug 'ervandew/supertab'
Plug 'vim-scripts/sudo.vim'
Plug 'godlygeek/tabular'
Plug 'terryma/vim-multiple-cursors'

" Languages
" Git
Plug 'tpope/vim-fugitive'
" Go
Plug 'fatih/vim-go'
" Markdown
Plug 'plasticboy/vim-markdown'
" CSV
Plug 'chrisbra/csv.vim'


call plug#end()
