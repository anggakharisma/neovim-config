require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
      }
    end
  }

  use 'hrsh7th/cmp-nvim-lsp-signature-help'
  use 'lewis6991/gitsigns.nvim'


  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  use 'tpope/vim-fugitive'

  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'
  use 'mfussenegger/nvim-jdtls'

  use 'numToStr/Comment.nvim'
  use "lukas-reineke/lsp-format.nvim"

  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

  use "windwp/nvim-autopairs"

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  use "lukas-reineke/indent-blankline.nvim"

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },

    use 'NvChad/nvim-colorizer.lua'
  }
  use 'windwp/nvim-ts-autotag'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
end)

require("nvim-tree").setup({
  update_cwd = true,
})

require("colorizer").setup()
require 'bufferline'.setup({
  options = {
    separator_style = "thick",
    offsets = { { filetype = "NvimTree", text = "Directory", text_align = "center" } },
  },
})
require('Comment').setup()
require('lsp-format').setup()
require('nvim-autopairs').setup()
require('gitsigns').setup()

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#013d4f gui=nocombine]]

require("indent_blankline").setup {
  space_char_blankline = " ",
  char_highlight_list = {
    "IndentBlanklineIndent1"
  }
}

local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
