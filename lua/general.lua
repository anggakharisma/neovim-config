vim.g.mapleader = ','
vim.o.background = "dark" -- or "light" for light mode
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

vim.cmd("set textwidth=80")

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


require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
