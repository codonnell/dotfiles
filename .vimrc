set nocompatible

filetype on
filetype plugin on
filetype indent on

syntax on

set hidden

" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
" Turns tabs into spaces
set expandtab
set smarttab

" Autocompletion in the command line
set wildmenu

" Sets search to ignore case when the search term is in lower case, but match
" case if there are upper case
set ignorecase
set smartcase
" Allows incremental searching
set incsearch
" Turn off search highlighting
set nohlsearch

" Keeps the cursor 10 lines from the top or bottom of the window
set scrolloff=10




" Hides the mouse when typing
set mousehide

" Removes menubar, toolbar, and scrollbar
" For some reason these need to be separate when launching gvim from gmrun
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
" Allows pasting into other programs
set guioptions+=a

" Shows the current mode
set showmode

" Always show a status line, even if there is only one window
set statusline=2

" Set the status line the way Derek Waytt likes it
set stl=%f\ %m\ %r\ Line:\ %l/%L[%p%%]\ Col:\ %c\ Buf:\ #%n\ [%b][0x%B]

" Puts vim in 256 color mode
set t_Co=256
colorscheme xoria256

" Enforces 80 character width
set textwidth=80




" ,ev (e[dit]v[imrc]) edits my vimrc file
nmap <silent> ,ev :e $MYVIMRC<cr>
" ,sv (s[ource]v[imrc]) sources my vimrc file
nmap <silent> ,sv :so $MYVIMRC<cr>

" Toggle paste mode
nmap ,p :set invpaste<cr>:set paste?<cr>

" Map CTRL-E to do what ',' used to do
nnoremap <c-e> ,
vnoremap <c-e> ,

" cd to the directory containing the file in the buffer
nmap  ,cd :lcd %:h<cr>




" window commands
" Move the cursor to the window left of the current one 
noremap <silent> ,h :wincmd h<cr> 
" Move the cursor to the window below the current one 
noremap <silent> ,j :wincmd j<cr> 
" Move the cursor to the window above the current one 
noremap <silent> ,k :wincmd k<cr> 
" Move the cursor to the window right of the current one 
noremap <silent> ,l :wincmd l<cr> 

" Close the window below this one 
noremap <silent> ,cj :wincmd j<cr>:close<cr> 
" Close the window above this one 
noremap <silent> ,ck :wincmd k<cr>:close<cr> 
" Close the window to the left of this one 
noremap <silent> ,ch :wincmd h<cr>:close<cr> 
" Close the window to the right of this one 
noremap <silent> ,cl :wincmd l<cr>:close<cr> 
" Close the current window 
noremap <silent> ,cc :close<cr>

" Resizing window commands
noremap <silent> ,rH  :vertical resize -10<cr>
noremap <silent> ,rJ :resize +10<cr>
noremap <silent> ,rK :resize -10<cr>
noremap <silent> ,rL :vertical resize +10<cr>
noremap <silent> ,rh :vertical resize -1<cr>
noremap <silent> ,rl :vertical resize +1<cr>
noremap <silent> ,rj :resize +1<cr>
noremap <silent> ,rk :resize -1<cr>
" Set window width to 80
noremap <silent> ,rr :vertical resize 80<cr>

" Move the current window to the right of the main Vim window
noremap <silent> ,ml <C-W>L
" Move the current window to the top of the main Vim window
noremap <silent> ,mk <C-W>K
" Move the current window to the left of the main Vim window
noremap <silent> ,mh <C-W>H
" Move the current window to the bottom of the main Vim window
noremap <silent> ,mj <C-W>J




"-----------------------------------------------------------------------------
" BufKill Plugin Settings
"-----------------------------------------------------------------------------
noremap <silent> ,bd :BD<cr>
noremap <silent> ,bu :BUN<cr>




"-----------------------------------------------------------------------------
" XPTemplate Plugin Settings
"-----------------------------------------------------------------------------
" Remove the padding around braces
let g:xptemplate_vars = "SParg=&author=Chris O'Donnell&email=christopher.p.odonnell@gmail.com"
" Turns off brace paredit braces
let g:xptemplate_brace_complete = ''




"-----------------------------------------------------------------------------
" Taglist Plugin Settings
"-----------------------------------------------------------------------------
" Display function name in status bar:
let g:ctags_statusline=1

" Automatically start script
let generate_tags=1

" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0

" Shorter commands to toggle Taglist display
map <F4> :TlistToggle<CR>

" Various Taglist diplay config:
let Tlist_Use_Right_Window = 0
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1




"-----------------------------------------------------------------------------
" LaTeX-Suite Plugin Settings
"-----------------------------------------------------------------------------
" Starting with Vim 7, the filetype of empty .tex files defaults to 'plaintex'
" instead of 'tex', which results in vim-latex not being loaded.  The following
" changes the default filetype back to 'tex':
let g:tex_flavor='latex'




"-----------------------------------------------------------------------------
" NERD Tree Plugin Settings (c/o Derek Wyatt)
"-----------------------------------------------------------------------------
" Toggle the NERD Tree on an off with F7
nmap <F7> :NERDTreeToggle<CR>

" Close the NERD Tree with Shift-F7
nmap <S-F7> :NERDTreeClose<CR>

" Store the bookmarks file in perforce
let NERDTreeBookmarksFile="~/.vim/NERDTreeBookmarks"

" Show the bookmarks table on startup
let NERDTreeShowBookmarks=1

" Don't display these kinds of files
let NERDTreeIgnore=[ '\.ncb$', '\.suo$', '\.vcproj\.RIMNET', '\.obj$',
            \ '\.ilk$', '^BuildLog.htm$', '\.pdb$', '\.idb$',
            \ '\.embed\.manifest$', '\.embed\.manifest.res$',
            \ '\.intermediate\.manifest$', '^mt.dep$' ]




"-----------------------------------------------------------------------------
" VimClojure Settings
"-----------------------------------------------------------------------------
let g:vimclojure#HighlightBuiltins=1
let g:vimclojure#ParenRainbow=1
let g:vimclojure#DynamicHighlighting=1
"let g:vimclojure#WantNailgun=1
"let g:vimclojure#NailgunClient="/home/chris/coding/clojure/vimclojure/ng"
