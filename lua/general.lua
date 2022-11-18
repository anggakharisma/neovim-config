vim.g.mapleader = ','

local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

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
vim.cmd('hi Pmenu guibg=NONE guifg=NONE')
vim.cmd('hi PmenuSel guibg=#60ff60 guifg=black')
vim.cmd('hi PmenuSbar guibg=#60ff60 guifg=black')
vim.cmd('hi PmenuThumb guibg=#60ff60 guifg=black')
vim.cmd('set completeopt=menu,menuone,noselect')
vim.cmd('set undofile')
vim.cmd('set undodir=~/.vim/undodir')
vim.cmd('highlight LineNr term=bold cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE')
vim.cmd('hi cursorline guibg=#252e47')
vim.cmd('set cursorline')
vim.cmd('hi NonText guifg=bg')


map('i', 'kk', '<Esc>')

-- Move around splits
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n', '<leader>s', ':w<CR>')

-- NvimTree
require("nvim-tree").setup()
map('n', '<C-n>', ':NvimTreeToggle<CR>')            -- open/close
map('n', '<leader>f', ':NvimTreeRefresh<CR>')       -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>')      -- search file

vim.cmd('hi TelescopeMatching guibg=#60ff60 guifg=black')
vim.cmd('hi TelescopeSelection guibg=#60ff60 guifg=black')
