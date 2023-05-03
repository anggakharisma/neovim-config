local function map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- escape on normal mode
map('i', 'kk', '<Esc>')

-- Move around splits
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')

map('n', '<leader>s', ':w<CR>')
map('n', '<leader>w', ':w<CR>')
map('n', '<C-q>', ':q!<CR>')

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>') -- open/close
map('n', '<leader>f', ':NvimTreeRefresh<CR>') -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>') -- search file

vim.cmd('nnoremap <M-j>    :resize -2<CR>')
vim.cmd('nnoremap <M-k>    :resize +2<CR>')
vim.cmd('nnoremap <M-h>    :vertical resize -2<CR>')
vim.cmd('nnoremap <M-l>    :vertical resize +2<CR>')

vim.cmd("nnoremap  <silent>   <tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bnext<CR>")
vim.cmd("nnoremap  <silent> <s-tab>  :if &modifiable && !&readonly && &modified <CR> :write<CR> :endif<CR>:bprevious<CR>")
