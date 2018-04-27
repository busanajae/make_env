:syntax on
:autocmd FileType * set formatoptions=tcql nocindent comments&
:autocmd FileType c,cpp set formatoptions=croql cindent comments=sr:/*,mb:*,ex:*/,://
:set number
:set autoindent
:set autowrite
:set shiftwidth=4
:set hlsearch
:set incsearch
:set textwidth=70
:ab #d #define
:ab #i #include
:ab #b /****************************************
:ab #e <Space>****************************************/
:ab #l /**/
