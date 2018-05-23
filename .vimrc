" From Perl Best Practices, Appendix C
set backspace=indent,eol,start "Make backspaces delete sensibly

set tabstop=2 "Indentation levels every two columns
set expandtab "Convert all tabs typed to spaces
set shiftwidth=2 "Indent/outdent by two columns
set shiftround "Indent/outdent to nearest tabstop

set matchpairs+=<:> "Allow % to bounce between angles too

set paste "Paste text without indenting successive lines

"line numbers
set number

"auto indent to previous line when you hit enter
set autoindent

"my preferred color scheme
colorscheme elflord

"tab = 2 spaces for everything but python
set softtabstop=2

au BufRead,BufNewFile *.py set tabstop=4
au BufRead,BufNewFile *.py set softtabstop=4
au BufRead,BufNewFile *.py set shiftwidth=4

"Perl - have things in braces auto indent
autocmd FileType perl set smartindent

"make searches case insensitive unless they contain upper-case letters
set ignorecase
set smartcase

"turning off auto comment after hitting enter at the end of a comment
set formatoptions-=cro
