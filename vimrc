"平台判断
function! GetSystem()
    if (has("win32") || has("win95") || has("win64") || has("win16"))
        return "windows"
    elseif has("unix")
        return "linux"
    elseif has("mac")
        return "mac"
    endif
endfunction


autocmd! bufwritepost ~/.vimrc source %  "自动对.vimrc文件生效
"colorscheme desert     "配色

"syntax on "进行语法检验，颜色显示
syntax enable
if has('gui_running')
        set background=light
    else
        set background=dark
endif
let g:solarized_termcolors=256

set background=dark
colorscheme solarized 

set guifont=Consolas:h16 "设置字体大小
set hlsearch                  "高亮度反白
set backspace=2               "可随时用倒退键删除
set autoindent                 "自动缩排
set ruler                      "可显示最后一行的状态
set showmode                 "左下角那一行的状态
set nu                        "可以在每一行的最前面显示行号
"set bg=dark                   "显示不同的底色色调
set wrap                      "自动折行
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab                  "将tab替换为相应数量空格
set smartindent
set nobackup                "不生成备份文件
set encoding=utf8               "设置内部编码为utf8
set fileencoding=utf8            "当前编辑的文件编码
set fileencodings=uft8-bom,utf8,gbk,gb2312,big5   "打开支持编码的文件

map <F9> :NERDTreeToggle<CR>

"au FileType php call PHPFuncList()
"function PHPFuncList()
"       set dictionary-=/Users/zly/.vim/php-funclist.txt
"       set dictionary+=/Users/zly/.vim/php-funclist.txt
"       set complete-=k complete+=k
"endfunction




"php自动提示
"au FileType php setlocal dict+=/Users/zly/.vim/php-funclist.txt
"if !exists('g:AutoComplPop_Behavior')
"    let g:AutoComplPop_Behavior = {}
 "   let g:AutoComplPop_Behavior['php'] = []
  "  call add(g:AutoComplPop_Behavior['php'], {
   "            'command'   : "<C-x><C-o>",
    "           'pattern'   : printf('(->|::|$)k{%d,}$', 0),
     "          'repeat'    : 0,
      "      })
"endif

":inoremap ( ()<ESC>i
":inoremap ) <c-r>=ClosePair(')')<CR>
":inoremap { {}<ESC>i
":inoremap } <c-r>=ClosePair('}')<CR>
":inoremap [ []<ESC>i
":inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap < <><ESC>i
":inoremap > <c-r>=ClosePair('>')<CR>
"           
"function ClosePair(char)
"    if getline('.')[col('.') - 1] == a:char
"        return "<Right>"
"    else
"        return a:char
"    endif
"endfunction
"php自动提示结束

"let g:SuperTabDefaultCompletionType="context" "tab选择


"函数列表显示
let g:tagbar_ctags_bin = '/usr/local/bin/ctags'
let g:tagbar_width = 30
map <F10> :TagbarToggle<CR>
"map <F10> : TlistToggle <CR>

set tags+=/Users/zly/sourcecode/php-5.4.19/tags

"markdown
au BufRead,BufNewFile *.{md,mdown,mkd,mkdn,markdown,mdwn}   set filetype=md
let g:vim_markdown_folding_disabled=1


"注释
inoremap <C-P> <ESC>:call PhpDocSingle()<CR>i 
nnoremap <C-P> :call PhpDocSingle()<CR> 
vnoremap <C-P> :call PhpDocRange()<CR> 

let g:DoxygenToolkit_authorName="zlyjava"
"F1为添加文件头快捷键
au FileType php map <F2> :DoxAuthor<CR>
"F2为添加函数注释
au FileType php map <F3> :Dox<CR>



set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
Bundle 'mattn/emmet-vim'
"Bundle 'kevinw/pyflakes-vim'
"Bundle 'SirVer/ultisnips'  "超过snipmate
" vim-scripts repos
Bundle 'L9'
"Bundle 'PDV--phpDocumentor-for-Vim'
"Bundle 'a.vim'
Bundle 'The-NERD-Commenter'
Bundle 'DoxygenToolkit.vim'
"Bundle 'ctags.vim'
"Bundle 'FuzzyFinder'
"Bundle 'snipMate'
"Bundle 'functionlist.vim'
Bundle 'jsbeautify'
"Bundle 'DBGPavim'
"Bundle 'Tagbar'
"Bundle 'buffet.vim'
Bundle 'AutoComplPop'
"Bundle 'taglist.vim'
Bundle 'Tagbar'
Bundle 'c.vim'
"Bundle 'SuperTab'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
Bundle 'https://github.com/scrooloose/nerdtree.git'
Bundle 'https://github.com/plasticboy/vim-markdown.git'
"Bundle 'https://github.com/altercation/vim-colors-solarized.git'
" git repos on your local machine (ie. when working on your own plugin)
" Bundle 'file:///Users/gmarik/path/to/plugin'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..



