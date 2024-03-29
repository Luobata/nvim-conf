-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
MACOSX_DEPLOYMENT_TARGET="13.5.2"
vim.cmd [[packadd packer.nvim]]



return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Simple plugins can be specified as strings
  use '9mm/vim-closer'

  -- Lazy loading:
  -- Load on specific commands
  use {'tpope/vim-dispatch', opt = true, cmd = {'Dispatch', 'Make', 'Focus', 'Start'}}

  -- Load on an autocommand event
  use {'andymass/vim-matchup', event = 'VimEnter'}

  -- Load on a combination of conditions: specific filetypes or commands
  -- Also run code after load (see the "config" key)
  use {
    'w0rp/ale',
    ft = {'sh', 'zsh', 'bash', 'c', 'cpp', 'cmake', 'html', 'markdown', 'racket', 'vim', 'tex'},
    cmd = 'ALEEnable',
    config = 'vim.cmd[[ALEEnable]]'
  }

  -- Plugins can have dependencies on other plugins
  use {
    'haorenW1025/completion-nvim',
    opt = true,
    requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}}
  }

  -- Plugins can also depend on rocks from luarocks.org:
  use {
    'my/supercoolplugin',
    rocks = {'lpeg', {'lua-cjson', version = '2.1.0'}}
  }

  -- You can specify rocks in isolation
  use_rocks 'penlight'
  use_rocks {'lua-resty-http', 'lpeg'}

  -- Local plugins can be included
  use '~/projects/personal/hover.nvim'

  -- Plugins can have post-install/update hooks
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}

  -- Post-install/update hook with neovim command
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

  -- Post-install/update hook with call of vimscript function with argument
  use { 'glacambre/firenvim', run = function() vim.fn['firenvim#install'](0) end }

  use 'nvim-tree/nvim-web-devicons'
  require'nvim-web-devicons'.get_icons()
  -- Use specific branch, dependency and run lua file after load
  use {
    'glepnir/galaxyline.nvim', branch = 'main', config = function() require'plugins/statusline' end,
    requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- Use dependency and run lua function after load
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  -- You can specify multiple plugins in a single call
  use {'tjdevries/colorbuddy.vim', {'nvim-treesitter/nvim-treesitter', opt = true}}

  -- You can alias plugin names
  use {'dracula/vim', as = 'dracula'}

  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  --use 'williamboman/nvim-lsp-installer'

  use { "williamboman/mason.nvim" }
  use { "williamboman/mason-lspconfig.nvim" }

  require("mason").setup()

  use 'neovide/neovide'

  --use 'vim-lualine/lualine.nvim'

  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'

  use "nvim-lua/plenary.nvim"

  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

  use {
      'kyazdani42/nvim-tree.lua',
      requires = 'kyazdani42/nvim-web-devicons'
  }

  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.5',
      -- or                            , branch = '0.1.x',
      requires = { {'nvim-lua/plenary.nvim'} }
  }

  --use({ "jose-elias-alvarez/null-ls.nvim", requires = "nvim-lua/plenary.nvim" })

  --use('MunifTanjim/prettier.nvim')

require("plugins/lsp");
require("plugins/neovide");
require("plugins/cmp");
require("plugins/buffer-line");
require("plugins/lua-line");
require("plugins/telescope");
--require("plugins/null-ls");

end)
