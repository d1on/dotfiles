set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

    " Plugins
        " General Vim
            Plugin 'scrooloose/nerdtree'
            Plugin 'scrooloose/nerdcommenter'
            Plugin 'tpope/vim-fugitive'
            Plugin 'Valloric/YouCompleteMe'
            "Plugin 'Command-T'
            "Plugin 'loremipsum'
            "Plugin 'majutsushi/tagbar'
            "Plugin 'taglist.vim'
            Plugin 'surround.vim'
            Plugin 'ack.vim'
            Plugin 'repeat.vim'
            Plugin 'vim-addon-mw-utils'
            "Plugin 'EasyMotion'
            Plugin 'Lokaltog/vim-easymotion'
            Plugin 'snipMate'
            "Plugin 'snipmate-snippets'
            Plugin 'YankRing.vim'
            "Plugin 'mutewinter/vim-indent-guides'
            "Plugin 'rosenfeld/conque-term'
            Plugin 'kien/ctrlp.vim'
            Plugin 'scrooloose/syntastic'
            "Plugin 'sjl/clam.vim'
            "Plugin 'peterhoeg/vim-tmux'
            "Plugin 'benmills/vimux'
            "Plugin 'Lokaltog/vim-powerline'
            "Plugin 'mattn/gist-vim'
            "Plugin 'mattn/webapi-vim'
            "Plugin 'SearchComplete'
            "Plugin 'TaskList.vim'
            "Plugin 'mru.vim'
        " General Vim end
    
        " Color Schemes
            Plugin 'altercation/vim-colors-solarized'
"            Plugin 'cschlueter/vim-ir_black'
"            Plugin 'Zenburn'
"            Plugin 'werks.vim'
        " Color Schemes end
        " Coffeescript 
            Plugin 'kchmck/vim-coffee-script'
        " Coffeescript end 
        " Python
            "Plugin 'pythoncomplete'
            "Plugin 'nvie/vim-pyunit'
            "Plugin 'Pydiction'
            "Plugin 'alfredodeza/pytest.vim'
            "Plugin 'fs111/pydoc.vim'
            "Plugin 'nvie/vim-pep9'
            "Plugin 'nvie/vim-pyflakes'
            "Plugin 'olethanh/Vim-nosecompiler'
            "Plugin 'rope-vim'
            "Plugin 'klen/python-mode'
        " Python end
    
        " Web (generic)
            Plugin 'mattn/emmet-vim'
            "Plugin 'HTML-AutoCloseTag'
            "Plugin 'juvenn/mustache.vim'
"            Plugin 'groenewege/vim-less'
            "Plugin 'Rykka/colorv.vim'
            "Plugin 'gregsexton/MatchTag'
            "Plugin 'wavded/vim-stylus'
            "Plugin 'JavaScript-Indent'
            "Plugin 'tangledhelix/vim-octopress'
"            Plugin 'tpope/vim-haml'
        " Web (generic) end
    
        " Javascript / node / coffeescript 
            Plugin 'mohitleo9/vim-fidget'
            "Plugin 'pangloss/vim-javascript'
            "Plugin 'itspriddle/vim-jquery'
            "Plugin 'digitaltoad/vim-jade'
            "Plugin 'leshill/vim-json'
            "Plugin 'kchmck/vim-coffee-script'
            "Plugin 'walm/jshint.vim'
            "Plugin 'mmalecki/vim-node.js'
            "Plugin 'lambdalisue/nodeunit.vim'
        " Javascript / node /coffeescript end
    
        " C# / .Niet
    
        " C# / .Niet end
        
        " Java
        "
        " Java end

        " Scala
"            Plugin 'derekwyatt/vim-scala'
        " Scala End
    
        " Misc
            "Plugin 'vim-scripts/nginx.vim'
            "Plugin 'uguu-org/vim-matrix-screensaver'
        " Misc end


        " Dash 
            Plugin 'rizzatti/funcoo.vim'
            Plugin 'rizzatti/dash.vim'
        " Dash end
   
        " Unused (for now)
            "Plugin 'bash-support.vim'
            "Plugin 'SuperTab'
            "Plugin 'dickeytk/status.vim'
            "Plugin 'snipMate'
            "Plugin 'tpope/vim-haml'
            "Plugin 'kana/vim-smartinput'
            "Plugin 'sjl/gundo.vim'
            "Plugin 'int3/vim-taglist-plus'
            "Plugin 'reinh/vim-makegreen'
            "Plugin 'flomotlik/vim-livereload'
        " Unused (for now) end
    " Plugins end

call vundle#end()
" ==========================================================
" Shortcuts
" ==========================================================
let mapleader=","             " change the leader to be a comma vs slash

" sudo write this
cmap W! w !sudo tee % >/dev/null

" Reload Vimrc
map <silent> <leader>V :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" open/close the quickfix window
nmap <leader>c :copen<CR>
nmap <leader>cc :cclose<CR>

" ctrl-jklm to navigate between split buffers
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" and lets make these all work in insert mode too ( <C-O> makes next cmd
"  happen as if in command mode )
imap <C-W> <C-O><C-W>

" Load the Gundo window
map <leader>g :GundoToggle<CR>

" ==========================================================
" Basic Settings
" ==========================================================
syntax on                     " syntax highlighing
filetype on                   " try to detect filetypes
filetype plugin indent on     " enable loading indent file for filetype
set number                    " Display line numbers
set title                     " show title in console title bar
set wildmenu                  " Menu completion in command mode on <Tab>
set wildmode=full             " <Tab> cycles between all matching choices.

" don't bell or blink
set noerrorbells
set vb t_vb=

" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

" Set working directory to directory of file being edited
nnoremap <leader>. :lcd %:p:h<CR>

""" Moving Around/Editing
set cursorline              " have a line indicate the cursor location
set ruler                   " show the cursor position all the time
set nostartofline           " Avoid moving cursor to BOL when jumping around
set virtualedit=block       " Let cursor move past the last char in <C-v> mode
set scrolloff=3             " Keep 3 context lines above and below the cursor
set backspace=2             " Allow backspacing over autoindent, EOL, and BOL
set showmatch               " Briefly jump to a paren once it's balanced
set wrap                    " Wrap text
set linebreak               " don't wrap textin the middle of a word
set autoindent              " always set autoindenting on
set smartindent             " use smart indent if there is no indent file
set tabstop=4               " <tab> inserts 4 spaces
set shiftwidth=4            " an indent level is 4 spaces wide.
set softtabstop=4           " <BS> over an autoindent deletes both spaces.
set expandtab               " Use spaces, not tabs, for autoindent/tab key.
set shiftround              " rounds indent to a multiple of shiftwidth
set formatoptions=tcroql    " Setting text and comment formatting to auto
set textwidth=79            " Lines are automatically wrapped after 120 columns
set linespace=3             " The spacing between lines is a little roomier

"""" Reading/Writing
set autowrite               " Stop complaining about unsaved buffers
set autowriteall            " I'm serious...
set noautoread              " Don't automatically re-read changed files.
set modeline                " Allow vim options to be embedded in files;
set modelines=5             " they must be within the first or last 5 lines.
set nofoldenable            " Disable folding, because recently `zO` has been the command I use most frequently

"""" Messages, Info, Status
set ls=2                    " allways show status line
set vb t_vb=                " Disable all bells.  I hate ringing/flashing.
set showcmd                 " Show incomplete normal mode commands as I type.
set report=0                " : commands always print changed line count.
set shortmess+=a            " Use [+]/[RO]/[w] for modified/readonly/written.
set ruler                   " Show some info, even without statuslines.
set laststatus=2            " Always show statusline, even if only 1 window.

""" Searching and Patterns
set ignorecase              " Default to using case insensitive searches,
set smartcase               " unless uppercase letters are used in the regex.
set hlsearch                " Highlight searches by default.
set incsearch               " Incrementally search while typing a /regex

" Paste from system clipboard
map <leader>p "+p

" Quit window on <leader>q
nnoremap <leader>q :q<CR>

" hide matches on <leader>space (rather than searching for something like " 'asdf')
nnoremap <leader><space> :nohlsearch<cr>

" Remove trailing whitespace on <leader>S
nnoremap <leader>S :%s/\s\+$//<cr>:let @/=''<CR>

" Select the item in the list with enter
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Cycle through open buffers with Control + Spacebar
map <C-space> :bn <CR>
map <C-M-space> :bp <CR>

" I bet 90% of vim users have the following two lines in their .vimrc...
set background=dark
colorscheme solarized

" Don't create swapfiles
set noswapfile

" Allow for undo even after closing and re-opening a file
if exists("+undofile")
  " undofile - This allows you to use undos after exiting and restarting
  " This, like swap and backups, uses .vim-undo first, then ~/.vim/undo
  " :help undo-persistence
  " This is only present in 7.3+
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=./.vim-undo//
  set undodir+=~/.vim/undo//
  set undofile
endif

" Make diffs *really* obvious
hi DiffText gui=underline guibg=red guifg=black

" syntastic: show errors from all linters at once
let g:syntastic_aggregate_errors = 1


" Set CtrlP to search by filename rather than path
let g:ctrlp_by_filename = 0

" Preview Markdown files with QuickLook
map <Leader>v :write<cr>:sil !/usr/bin/qlmanage -p % > /dev/null &<cr>:redraw!<cr>
set guifont=Sauce\ Code\ Powerline\ Semibold:h12

set expandtab               " Use spaces, not tabs, for autoindent/tab key.

" old settings
syntax enable
set nocompatible
set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set encoding=utf-8
set scrolloff=3
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
" Remove search highlighting iwth ,<space>
noremap <leader>. :noh<cr>
" Match braces with <tab>
noremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=79
set formatoptions=qrn1
" Show invisible characters
"set list
"set listchars=tab:▸\ ,eol:¬

"nnoremap ; :

" Save on losing focus
au FocusLost * :wa

" Dash Search https://vim-doc.heroku.com/view?https://raw.github.com/rizzatti/dash.vim/master/doc/dash.txt
:nmap <silent> <leader>d <Plug>DashSearch

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl

if has("gui_running")
  " remove scroll bars and tool bar
  set guioptions-=r
  set guioptions-=L
  set guioptions-=T
  " expand width in fullscreen
  set fuoptions=maxvert,maxhorz
  " hide tab bar
  "set showtabline=0
  set colorcolumn=80
  set undofile
  set relativenumber
  set guioptions-=T
  set t_Co=256
  set background=dark
  set guifont=Source\ Code\ Pro:h12
  colorscheme solarized
  set nonu
else
  " remove scroll bars and tool bar
  set guioptions-=r
  set guioptions-=L
  set guioptions-=T
  " hide tab bar
  "set showtabline=0
  set colorcolumn=80
  set undofile
  set relativenumber
  set guioptions-=T
  set t_Co=256
  set background=dark
  set guifont=Source\ Code\ Pro:h12
  colorscheme solarized
  set nonu
endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
" => Moving around, tabs and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map space to / (search) and c-space to ? (backgwards search)
map <space> /
map <c-space> ?
map <silent> <leader><cr> :noh<cr>
"
" Swap ; and :  Convenient.
nnoremap ; :
nnoremap : ;
" remap Ack toggle
noremap <leader>a :Ack<space>
" remap NERDTreeToggle
noremap <leader><space> :NERDTreeToggle<cr>
"let g:EasyMotion_leader_key = '<leader>''<space>'
inoremap kj <Esc>
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v]\ [%p%%]\ [LEN=%L] 

" Open an new vertical split and switch over to it
nnoremap <leader>w <C-w>v,C-w>l
" Indent Python in the Google way.

setlocal indentexpr=GetGooglePythonIndent(v:lnum)

let s:maxoff = 50 " maximum number of lines to look backwards.

function! GetGooglePythonIndent(lnum)

  " Indent inside parens.
  " Align with the open paren unless it is at the end of the line.
  " E.g.
  "   open_paren_not_at_EOL(100,
  "                         (200,
  "                          300),
  "                         400)
  "   open_paren_at_EOL(
  "       100, 200, 300, 400)
  call cursor(a:lnum, 1)
  let [par_line, par_col] = searchpairpos('(\|{\|\[', '', ')\|}\|\]', 'bW',
        \ "line('.') < " . (a:lnum - s:maxoff) . " ? dummy :"
        \ . " synIDattr(synID(line('.'), col('.'), 1), 'name')"
        \ . " =~ '\\(Comment\\|String\\)$'")
  if par_line > 0
    call cursor(par_line, 1)
    if par_col != col("$") - 1
      return par_col
    endif
  endif

  " Delegate the rest to the original function.
  return GetPythonIndent(a:lnum)

endfunction

let pyindent_nested_paren="&sw*2"
let pyindent_open_paren="&sw*2"

" Swallow FocusLost error when leaving buffer
autocmd BufLeave,FocusLost silent! wall

" ctrlp settings
" exclude files/dirs
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll|pyc|swo|swn|so|swp|un\~|sw.)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }
" use external tool
"let g:ctrlp_user_command = 'find %s -type f' 
