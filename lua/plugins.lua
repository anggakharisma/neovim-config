require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use 'hrsh7th/cmp-nvim-lsp-signature-help'

  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  use 'tpope/vim-fugitive'
  use 'airblade/vim-gitgutter'

  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  use 'numToStr/Comment.nvim'
  use "lukas-reineke/lsp-format.nvim"

  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }

  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

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
end)

require("nvim-tree").setup()
require("colorizer").setup()
require("bufferline").setup()
require('Comment').setup()
require('lsp-format').setup()

vim.cmd [[highlight IndentBlanklineIndent1 guifg=#6b6b6a gui=nocombine]]

require("indent_blankline").setup {
  space_char_blankline = " ",
  char_highlight_list = {
    "IndentBlanklineIndent1"
  }
}
