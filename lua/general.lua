vim.g.mapleader = ','

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

vim.o.updatetime = 300
vim.incsearch = false

vim.g.nvim_tree_respect_buf_cwd = 1
vim.opt.completeopt = "menu,menuone,noselect"

vim.cmd('set autoindent expandtab tabstop=2 shiftwidth=2')
vim.cmd('set autoindent')
vim.cmd('set number relativenumber')
vim.cmd('set nu rnu')


vim.cmd('set undofile')
vim.cmd('set undodir=~/.vim/undodir')
vim.cmd('set cursorline')
vim.cmd('highlight LineNr term=bold cterm=NONE ctermfg=NONE ctermbg=NONE gui=NONE guifg=NONE guibg=NONE')


vim.cmd('hi cursorline guibg=#252e47')
vim.cmd('hi Visual guibg=#252e47 guifg=NONE')
vim.cmd('hi TelescopeMatching guibg=#60ff60 guifg=black')
vim.cmd('hi TelescopeSelection guibg=#60ff60 guifg=black')
vim.cmd('hi Pmenu guibg=NONE guifg=NONE')
vim.cmd('hi PmenuSel guibg=#60ff60 guifg=black')
vim.cmd('hi PmenuSbar guibg=#60ff60 guifg=black')
vim.cmd('hi PmenuThumb guibg=#60ff60 guifg=black')
vim.cmd('hi SignColumn guibg=NONE')

---vim.cmd("highlight NvimTreeNormal guibg=#000a0e")
vim.cmd("hi NonText guifg=NONE")
vim.cmd("hi DiffAdd guibg=NONE guifg=#60ff60")
vim.cmd("hi DiffChange guibg=NONE guifg=#60ff60")
vim.cmd("hi DiffDelete guibg=NONE guifg=red")

-- Fillchars
vim.opt.fillchars = {
  vert = " ",
  fold = "⠀",
  eob = " ", -- suppress ~ at EndOfBuffer
  --diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
  msgsep = "‾",
  foldopen = "▾",
  foldsep = "│",
  foldclose = "▸",
}

