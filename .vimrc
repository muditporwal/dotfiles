" Plugins will be downloaded under the specified directory.
# call plug#begin('~/.vim/plugged')
# " Declare the list of plugins.
# Plug 'tpope/vim-sensible'
# Plug 'gruvbox-community/gruvbox'
# Plug 'junegunn/seoul256.vim'
# Plug 'junegunn/limelight.vim'
# Plug 'junegunn/goyo.vim'
# Plug 'itchyny/lightline.vim'
# Plug 'godlygeek/tabular'
# Plug 'plasticboy/vim-markdown'
# Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }
# " List ends here. Plugins become visible to Vim after this call.
# call plug#end()


""""""""""""""""""""""""""""""""""""""""
" ColorScheme
" let g:seoul256_background = 233
" colo seoul256
" set background=dark

" Set the color scheme to use Gruvbox.
 colorscheme gruvbox
 let  g:gruvbox_contrast_dark = 'hard'
""""""""""""""""""""""""""""""""""""""""
" Plugin lightline 
set noshowmode
""""""""""""""""""""""""""""""""""""""""
" Plugin markdown
" Disable auto fold
let g:vim_markdown_folding_disabled = 1

" table of contents autofit
let g:vim_markdown_toc_autofit = 1

""""""""""""""""""""""""""""""""""""""""
" Plugin markdown preview
" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0


" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 1

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {}
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '${name}'

""""""""""""""""""""""""""""""""""""""""

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" Default: 0.5
let g:limelight_default_coefficient = 0.7

" Number of preceding/following paragraphs to include (default: 0)
let g:limelight_paragraph_span = 1

" Beginning/end of paragraph
"   When there's no empty line between the paragraphs
"   and each paragraph starts with indentation
let g:limelight_bop = '^\s'
let g:limelight_eop = '\ze\n^\s'

" Highlighting priority (default: 10)
"   Set it to -1 not to overrule hlsearch
let g:limelight_priority = -1



""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""
" Set Paste Unpaste AutoToggle 
" https://stackoverflow.com/questions/2514445/turning-off-auto-indent-when-pasting-text-into-vim
""""""""""""""""""""""""""""""""""""""""

set conceallevel=2
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!



"""""""""""""""""""""""""""""""""""""""""""
" Standard Changes

""""""""""""""""""""""""""""""""""""
" Line
""""""""""""""""""""""""""""""""""""
" show line numbers
set number

"""""""""""""""""""""""""""""""""""""
" Indents
"""""""""""""""""""""""""""""""""""""
" replace tabs with spaces
set expandtab

" 1 tab = 2 spaces
set tabstop=2 shiftwidth=2

" when deleting whitespace at the beginning of a line, delete 
" 1 tab worth of spaces (for us this is 2 spaces)
set smarttab

" when creating a new line, copy the indentation from the line above
set autoindent

"""""""""""""""""""""""""""""""""""""
" Search
"""""""""""""""""""""""""""""""""""""
" Ignore case when searching
set ignorecase
set smartcase

" highlight search results (after pressing Enter)
set hlsearch

" highlight all pattern matches WHILE typing the pattern
set incsearch

"""""""""""""""""""""""""""""""""""""
" Mix
"""""""""""""""""""""""""""""""""""""
" show the mathing brackets
set showmatch

" highlight current line
set cursorline


