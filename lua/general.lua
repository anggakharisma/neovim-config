vim.g.mapleader = ','

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.o.updatetime = 300
vim.incsearch = false
vim.wo.signcolumn = 'no'

vim.cmd('set autoindent expandtab tabstop=2 shiftwidth=2')
vim.cmd('set autoindent')
vim.cmd('set number relativenumber')
vim.cmd('set nu rnu')

vim.cmd('set completeopt=menu,menuone,noselect')
vim.cmd('set undofile')
vim.cmd('set undodir=~/.vim/undodir')
vim.cmd('set cursorline')
vim.cmd('highlight LineNr term=bold cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE')

vim.cmd('hi cursorline guibg=#252e47')
vim.cmd('hi NonText guifg=bg')
vim.cmd('hi Visual guibg=#252e47 guifg=NONE')
vim.cmd('hi TelescopeMatching guibg=#60ff60 guifg=black')
vim.cmd('hi TelescopeSelection guibg=#60ff60 guifg=black')
vim.cmd('hi Pmenu guibg=NONE guifg=NONE')
vim.cmd('hi PmenuSel guibg=#60ff60 guifg=black')
vim.cmd('hi PmenuSbar guibg=#60ff60 guifg=black')
vim.cmd('hi PmenuThumb guibg=#60ff60 guifg=black')
