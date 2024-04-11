vim.cmd("set autoindent")
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set number")
vim.cmd("set whichwrap+=<,>,h,l,[,]")
vim.g.mapleader = " "
vim.cmd("inoremap <C-h> <Left>")
vim.cmd("inoremap <C-j> <Down>")
vim.cmd("inoremap <C-k> <Up>")
vim.cmd("inoremap <C-l> <Right>")
vim.cmd("nnoremap <S-j> 5j")
vim.cmd("nnoremap <S-k> 5k")
vim.cmd("set cursorline")
vim.cmd("set showmatch")
vim.cmd("set cursorcolumn")
vim.cmd("set clipboard+=unnamedplus")
vim.cmd("set relativenumber")
vim.cmd("nnoremap <Up> <C-y>")
vim.cmd("nnoremap <Down> <C-e>")
vim.cmd("nnoremap <C-q> :bprevious<CR>")
vim.cmd("nnoremap <C-e> :bnext<CR>")
