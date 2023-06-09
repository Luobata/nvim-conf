" System Type {{{
let s:Gui = has('gui_running')
if has('mac') || has('macunix')
	let s:OS = 'mac'
elseif has('win32') || has('win64') || has('win32unix')
	let s:OS = 'windows'
else
	let s:OS = 'linux'
endif
"}}}
"INIT{{{
set nu
set sc
set fileencodings=utf-8,gbk,ucs-bom,cp936
set encoding=utf-8
if version > 603
        set helplang=cn
    endif
    set fdm=marker
"Enable syntax hl
syntax on
"mapleader
let mapleader = ","
let g:mapleader = ","
" Sets how many lines of history VIM has to remember
set history=700
" Set to auto read when a file is changed from the outside
set autoread
set modelines=1
"}}}

" Init Vundle {{{
set nocompatible               " be iMproved
filetype off                   " required!

if s:OS == 'windows'
    set rtp+=$HOME/.vim/bundle/vundle/
else
    set rtp+=$HOME/.vim/bundle/vundle/
endif
let g:vundle_default_git_proto = 'git'
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
"}}}
" Bundles {{{

 "My Bundles here:

 "original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
 "vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'
 "non github repos
"Bundle 'git://git.wincent.com/command-t.git'

Bundle 'xitianfz/custom_vimconf'
Bundle 'SearchComplete'
Bundle 'AutoTag'
Bundle 'tpope/vim-git'
Bundle 'matchit.zip'
Bundle 'scrooloose/nerdcommenter'
Bundle 'sudo.vim'
Bundle 'tpope/vim-surround'
Bundle 'Lokaltog/vim-powerline'
Bundle '2072/PHP-Indenting-for-VIm'
Bundle 'applescript.vim'
Bundle 'vim-scripts/nginx.vim'
Bundle 'elzr/vim-json'
" Bundle 'kchmck/vim-coffee-script'
Bundle 'tpope/vim-git'
Bundle 'octol/vim-cpp-enhanced-highlight'
Bundle 'SyntaxAttr.vim'
Bundle 'shawncplus/phpcomplete.vim'
Bundle 'tpope/vim-unimpaired.git'
Bundle 'vim-scripts/vcscommand.vim'
Bundle 'vim-scripts/ctags.vim'
" Bundle 'Valloric/YouCompleteMe'
Bundle 'posva/vim-vue'
Bundle 'majutsushi/tagbar'
Bundle 'ternjs/tern_for_vim'
Bundle 'digitaltoad/vim-pug'
Bundle 'vim-scripts/vim-stylus'
"Bundle 'pangloss/vim-javascript'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
" Bundle 'leafgarland/typescript-vim'
"Bundle 'prettier/vim-prettier'


"PDV--phpDocumentor-for-Vim{{{
Bundle 'PDV--phpDocumentor-for-Vim'
noremap <leader>cd :call PhpDocSingle()<CR>
"}}}
"Conque-Shell{{{
Bundle 'Conque-Shell'
noremap <F3> :ConqueTerm bash
"}}}
"kien/ctrlp.vim{{{
Bundle 'kien/ctrlp.vim'
let g:ctrlp_working_path_mode = 0
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_user_command = "find %s -type f \! \\( -path '*/.svn/*' -or -path '*/.git/*' -or -path '*/node_modules/*' -or -name '*.rrd' -or -name '*.pyc' -or -name '*.pyo' \\)"
"}}}
"molokai{{{
Bundle 'molokai'
set t_Co=256
colo molokai
let g:molokai_original = 1
"}}}
"Shougo/neocomplcache{{{
" Bundle 'Shougo/neocomplcache'
" set completeopt-=preview
" let g:neocomplcache_enable_at_startup = 1
" let g:neocomplcache_enable_smart_case = 1
" let g:neocomplcache_enable_camel_case_completion = 1
" let g:neocomplcache_enable_underbar_completion = 1
" let g:neocomplcache_caching_limit_file_size = 50000000
" let g:neocomplcache_min_syntax_length = 2
" "<CR>: close popup and save indent.
" inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" "<TAB>: completion. NO USE with snipmate
" inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" "<C-h>, <BS>: close popup and delete backword char.
" inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
" inoremap <expr><C-Y>  neocomplcache#close_popup()
" inoremap <expr><C-e>  neocomplcache#cancel_popup()
"let g:neocomplcache_enable_auto_select = 1
"}}}
"scrooloose/nerdtree{{{
"Bundle 'scrooloose/nerdtree'
let g:NERDChristmasTree = 1
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeMinimalUI = 1
let g:NERDShowBookMarks = 1
let g:NERDTreeIgnore = ['\.pyc$']
noremap <F2> :NERDTreeToggle<cr>
"}}}
"scrooloose/syntastic{{{
" Bundle 'scrooloose/syntastic'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_enable_tsc_checker = 0
"let g:syntastic_aggregate_errors = 1
let g:syntastic_mode_map = { 'mode': 'active',
            \ 'active_filetypes': [],
            \ 'passive_filetypes': ['python'] }
"}}}
"mattn/emmet-vim{{{
Bundle 'mattn/emmet-vim'
let g:user_zen_settings = { 'lang': "zh-CN" }
"}}}
"taglist{{{
Bundle 'taglist.vim'
noremap <F3> :TlistToggle<cr>
"}}}
"tpope/vim-fugitive{{{
Bundle 'tpope/vim-fugitive'
noremap <leader>g :Gstatus<cr><c-w>_
"}}}
"Lokaltog/vim-easymotion"{{{
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = ';'
let g:EasyMotion_smartcase = 1
let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
"map <Leader><leader>h <Plug>(easymotion-linebackward)
"map <Leader><Leader>j <Plug>(easymotion-j)
"map <Leader><Leader>k <Plug>(easymotion-k)
"map <Leader><leader>l <Plug>(easymotion-lineforward)
" 重复上一次操作, 类似repeat插件, 很强大
map <Leader><leader>. <Plug>(easymotion-repeat)
"}}}
"klen/python-mode"{{{
Bundle 'klen/python-mode'
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_goto_definition_cmd = 'e'
let g:pymode_lint_cwindow = 0
let g:pymode_lint_ignore = "C901"
"}}}
"}}}
" End Vundle {{{
filetype plugin indent on     " required!
"}}}
"
" Load Custom{{{
if filereadable(expand('~/.vim/custom.vim'))
    so ~/.vim/custom.vim
endif
if filereadable(expand('.custom.vim'))
    so .custom.vim
endif
"}}}

" Custom Maps {{{
noremap <leader>q <C-W>c
noremap <leader>w :w!<cr>
noremap <F4> <C-W>_
inoremap <F4> <C-W>_
noremap <F5> :make!<cr>
noremap <leader>s :sh<cr>
noremap \| :ls<cr>
" Fast editing of the .vimrc
if s:OS == 'windows'
	map <leader>e :e! $VIM/_vimrc<cr>
else
	map <leader>e :e! ~/.vimrc<cr>
endif
vnoremap <silent> * :call VisualSearch('f')<CR>
vnoremap <silent> # :call VisualSearch('b')<CR>
vnoremap <silent> gv :call VisualSearch('gv')<CR>
map <leader>vg :vimgrep //j **/*.*<left><left><left><left><left><left><left><left><left>
map <leader>pp :setlocal paste!<cr>
map <leader>bb :cd ..<cr>
"}}}
" User Interface {{{
" Set 7 lines to the curors - when moving vertical..
set so=7
set wildmenu "Turn on WiLd menu
set ruler "Always show current position
set hid "Change buffer - without saving
" Set backspace config
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
" set ignorecase "Ignore case when searching
set smartcase
set hlsearch "Highlight search things
set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros
set magic "Set magic on, for regular expressions
set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink
" No sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
"}}}
" Colors and Fonts {{{
" Set font according to system
if s:OS == "mac"
	set gfn=Menlo:h14
	set shell=/bin/bash
    if s:Gui
        set guioptions-=T
        set guioptions-=L
        set guioptions-=r
    endif
elseif s:OS == "windows"
	set gfn=Yahei_Consolas_Hybrid:h12:cGB2312
    let &termencoding=&encoding
    set fileencodings=utf-8,gbk,ucs-bom,cp936
    source $VIMRUNTIME/vimrc_example.vim
    source $VIMRUNTIME/mswin.vim
    behave mswin
    if s:Gui
        set guioptions-=T
        set guioptions-=r
        set guioptions-=b
        set guioptions-=l
        set guioptions-=L
        au GUIEnter * simalt ~x
    endif
elseif s:OS == "linux"
	set gfn=Monospace\ 10
	set shell=/bin/bash
endif
set ffs=unix,dos,mac "Default file types
"}}}
" Files, backups and undo {{{
" Turn backup off, since most stuff is in SVN, git anyway...
set nobackup
set nowb
set noswapfile
"}}}
" Text, tab and indent related {{{
set expandtab
set shiftwidth=4
set tabstop=4
set smarttab
set ai "Auto indent
set si "Smart indet
set wrap "Wrap lines
"}}}
" Visual mode related {{{
function! CmdLine(str)
	exe "menu Foo.Bar :" . a:str
	emenu Foo.Bar
	unmenu Foo
endfunction
" From an idea by Michael Naumann
function! VisualSearch(direction) range
	let l:saved_reg = @"
	execute "normal! vgvy"

	let l:pattern = escape(@", '\\/.*$^~[]')
	let l:pattern = substitute(l:pattern, "\n$", "", "")

	if a:direction == 'b'
		execute "normal ?" . l:pattern . "^M"
	elseif a:direction == 'gv'
		call CmdLine("vimgrep " . '/'. l:pattern . '/j' . ' **/*.')
	elseif a:direction == 'f'
		execute "normal /" . l:pattern . "^M"
	endif

	let @/ = l:pattern
	let @" = l:saved_reg
endfunction
"}}}
" Command mode related {{{
" Smart mappings on the command line
cno $h e ~/
cno $d e ~/Desktop/
cno $j e ./
cno $c e <C-\>eCurrentFileDir("e")<cr>
" $q is super useful when browsing on the command line
cno $q <C-\>eDeleteTillSlash()<cr>
" Bash like keys for the command line
cnoremap <C-A>          <Home>
cnoremap <C-E>          <End>
cnoremap <C-K>          <C-U>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>
func! Cwd()
	let cwd = getcwd()
	return "e " . cwd
endfunc
func! DeleteTillSlash()
	let g:cmd = getcmdline()
	if s:OS == "linux" || s:OS == "mac"
		let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*", "\\1", "")
	else
		let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\]\\).*", "\\1", "")
	endif
	if g:cmd == g:cmd_edited
		if s:OS == "linux" || s:OS == "mac"
			let g:cmd_edited = substitute(g:cmd, "\\(.*\[/\]\\).*/", "\\1", "")
		else
			let g:cmd_edited = substitute(g:cmd, "\\(.*\[\\\\\]\\).*\[\\\\\]", "\\1", "")
		endif
	endif  
	return g:cmd_edited
endfunc
func! CurrentFileDir(cmd)
	return a:cmd . " " . expand("%:p:h") . "/"
endfunc
"}}}
" Moving around, tabs and buffers {{{
" Map space to / (search) and c-space to ? (backgwards search)
map <silent> <leader><cr> :noh<cr>
" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
map <C-g> <C-W>_
" Close the current buffer
map <leader>bd :Bclose<cr>
" Close all the buffers
map <leader>ba :1,300 bd!<cr>
" Tab configuration
map <leader>tn :tabnew<cr>
map <leader>te :tabedit\ 
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove\ 
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
	let l:currentBufNum = bufnr("%")
	let l:alternateBufNum = bufnr("#")

	if buflisted(l:alternateBufNum)
		buffer #
	else
		bnext
	endif

	if bufnr("%") == l:currentBufNum
		new
	endif

	if buflisted(l:currentBufNum)
		execute("bdelete! ".l:currentBufNum)
	endif
endfunction
" Specify the behavior when switching between buffers
try
	set switchbuf=usetab
	"set stal=2
catch
endtry
"}}}
" Statusline {{{
" Always hide the statusline
set laststatus=2
" Format the statusline
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ Line:\ %l/%L:%c
function! CurDir()
	let curdir = substitute(getcwd(), '/Users/amir/', "~/", "g")
	return curdir
endfunction
function! HasPaste()
	if &paste
		return 'PASTE MODE  '
	else
		return ''
	endif
endfunction
"}}}
" Editing mappings {{{
"Remap VIM 0
map 0 ^
"Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z
if s:OS == "mac"
	nmap <D-j> <M-j>
	nmap <D-k> <M-k>
	vmap <D-j> <M-j>
	vmap <D-k> <M-k>
endif
"Delete trailing white space, useful for Python ;)
func! DeleteTrailingWS()
	exe "normal mz"
	%s/\s\+$//ge
	exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
set guitablabel=%t
"}}}
" Cope {{{
" Do :help cope if you are unsure what cope is. It's super useful!
 map <leader>vc :botright cope<cr>
 map <leader>vn :cn<cr>
 map <leader>vp :cp<cr>
 map <leader>vq :ccl<cr>
"}}}

" Filetype Specified {{{
""""""""""""""""""""""""""""""
" => PHP section
""""""""""""""""""""""""""""""
autocmd FileType php inoremap <buffer> {<cr> {<cr>}<esc>O
autocmd FileType php noremap <buffer> <leader>ep i<?php  ?><esc>hhi
autocmd FileType php noremap <buffer> <leader>eP i<?php<cr>?><esc>O<esc>==i
autocmd FileType php noremap <buffer> <leader>ee i<?php echo ; ?><esc>hhhi
autocmd FileType php setlocal cindent 
autocmd FileType php setlocal makeprg=php\ %
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
autocmd BufRead,BufNewFile *.ctp set filetype=php.html
let g:php_folding = 1
let g:php_strict_blocks = 1
let g:php_sql_query = 1
let g:php_htmlInStrings = 1
let g:php_baseLib = 1
let g:php_special_vars = 1
let g:php_special_functions = 1
let g:php_alt_assignByReference = 1
let g:php_smart_members = 1

let g:php_nested_functions = 1
let g:php_fold_heredoc = 1
""""""""""""""""""""""""""""""
" => CSS section
""""""""""""""""""""""""""""""
autocmd FileType css inoremap <buffer> {<cr> {<esc>o}<esc>O
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS

""""""""""""""""""""""""""""""
" => Python section
""""""""""""""""""""""""""""""

au FileType python setlocal makeprg=ipython\ %

let python_highlight_all = 1

au BufNewFile,BufRead *.jinja set syntax=htmljinja
au BufNewFile,BufRead *.mako set ft=mako

au FileType python highlight OverLength ctermbg=red ctermfg=white guibg=#592929
au FileType python match OverLength /\%80v.\+/

""""""""""""""""""""""""""""""
" => C section
"""""""""""""""""""""""""""""""
autocmd FileType C inoremap <buffer> {<cr> {<esc>o}<esc>O
autocmd FileType C setlocal makeprg=gcc\ -o\ a\ % \&\& ./a

""""""""""""""""""""""""""""""
" => JavaScript section
"""""""""""""""""""""""""""""""
au FileType javascript inoremap <buffer> {<cr> {<esc>o}<esc>O
" au FileType javascript call JavaScriptFold2()
au FileType javascript setl fen
au FileType javascript setl nocindent

au FileType javascript imap <c-t> AJS.log();<esc>hi
au FileType javascript imap <c-a> alert();<esc>hi

function! JavaScriptFold()
	setl foldmethod=syntax
	setl foldlevelstart=1
	syn region foldBraces start=/{/ end=/}/ transparent fold keepend extend

	function! FoldText()
		return substitute(getline(v:foldstart), '{.*', '{...}', '')
	endfunction
	setl foldtext=FoldText()
endfunction

function! JavaScriptFold2()
	setl foldmethod=syntax
	setl foldlevelstart=1
	syntax region foldBraces start=/{/ end=/}/ transparent fold keepend extend
endfunction

""""""""""""""""""""""""""""""
" => ActionScript section
"""""""""""""""""""""""""""""""
au BufNewFile,BufRead *.as set filetype=actionscript

""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
set grepprg=/bin/grep\ -nH
"}}}
" vim:fdm=marker
set listchars=tab:\:\ ,trail:~,extends:>,precedes:<,nbsp:\.
set foldmethod=indent

set tags=/Users/batayao/luobata/www-sohu/settled-platform-admin/tags
set tags=/Users/batayao/luobata/libs/canvas-editor/tags

" tagbar
nmap <F8> :TagbarToggle<CR>

map gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
" 触发不全快捷键
let g:ycm_key_list_select_completion = ['<TAB>', '<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<S-TAB>', '<c-p>', '<Up>']
let g:ycm_auto_trigger = 1
" 最小自动触发补全的字符大小设置为 3
let g:ycm_min_num_of_chars_for_completion = 3
" YCM的previw窗口比较恼人，还是关闭比较好
set completeopt-=preview

" 高亮行尾多余空格
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$/

let g:vim_markdown_fenced_languages = ['js=javascript']

" Bundle prettier/vim-prettier
let g:prettier#autoformat = 0
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md PrettierAsync
" autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue Prettier
let g:prettier#config#tab_width = 2
let g:prettier#config#trailing_comma = 'all'
let g:prettier#config#bracket_spacing = 'true'
let g:prettier#config#single_quote = 'true'
let g:prettier#config#parser = 'babylon'

" Bundle ts-typescript
" let g:typescript_compiler_binary = 'tsc'
" let g:typescript_compiler_options = ''
" autocmd FileType typescript :set makeprg=tsc

" autocmd FileType javascript set formatprg=prettier-eslint\ --stdin
" autocmd BufWritePre *.js :normal gggqG

" Bundle 'posva/vim-vue'
autocmd FileType vue syntax sync fromstart


" Bundle 'neovim/nvim-lspconfig'

lua require('init')

" These commands will navigate through buffers in order regardless of which mode you are using
" e.g. if you change the order of buffers :bnext and :bprevious will not respect the custom ordering
nnoremap <silent><A-l> :BufferLineCycleNext<CR>
nnoremap <silent><A-h> :BufferLineCyclePrev<CR>

" These commands will move the current buffer backwards or forwards in the bufferline
nnoremap <silent><A-j> :BufferLineMoveNext<CR>
nnoremap <silent><A-k> :BufferLineMovePrev<CR>

" These commands will sort buffers by directory, language, or a custom criteria
"nnoremap <silent>be :BufferLineSortByExtension<CR>
"nnoremap <silent>bd :BufferLineSortByDirectory<CR>
nnoremap <silent><mymap> :lua require'bufferline'.sort_buffers_by(function (buf_a, buf_b) return buf_a.id < buf_b.id end)<CR>



nnoremap <silent><leader>1 <Cmd>BufferLineGoToBuffer 1<CR>
nnoremap <silent><leader>2 <Cmd>BufferLineGoToBuffer 2<CR>
nnoremap <silent><leader>3 <Cmd>BufferLineGoToBuffer 3<CR>
nnoremap <silent><leader>4 <Cmd>BufferLineGoToBuffer 4<CR>
nnoremap <silent><leader>5 <Cmd>BufferLineGoToBuffer 5<CR>
nnoremap <silent><leader>6 <Cmd>BufferLineGoToBuffer 6<CR>
nnoremap <silent><leader>7 <Cmd>BufferLineGoToBuffer 7<CR>
nnoremap <silent><leader>8 <Cmd>BufferLineGoToBuffer 8<CR>
nnoremap <silent><leader>9 <Cmd>BufferLineGoToBuffer 9<CR>
nnoremap <silent><leader>$ <Cmd>BufferLineGoToBuffer -1<CR>




noremap <F2> :NvimTreeToggle<cr>

nnoremap <space> /
noremap <c-space> ?

