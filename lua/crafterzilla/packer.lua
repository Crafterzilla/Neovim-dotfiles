-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ('folke/tokyonight.nvim')
  -- use ({
	-- 'rose-pine/neovim',
	-- as = 'rose-pine',
	-- config = function()
		-- vim.cmd('colorscheme rose-pine')

	-- end
  -- })

--  use ({'Mofiqul/vscode.nvim',
--	as = 'vscode',
--	config = function()
--		vim.cmd('colorscheme vscode')
--	end
--  })

 use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
 use('nvim-treesitter/playground')
 use('theprimeagen/harpoon')
 use('mbbill/undotree')
 use('tpope/vim-fugitive')

 use {
	 'VonHeikemen/lsp-zero.nvim',
--	 branch = 'v1.x',
	 requires = {
		 -- LSP Support
		 {'neovim/nvim-lspconfig'},
		 {
			 'williamboman/mason.nvim',
			 run = function() pcall(vim.cmd, 'MasonUpdate') end
		 },
		 {'williamboman/mason-lspconfig.nvim'},

		 -- Autocompletion
		 {'hrsh7th/nvim-cmp'},
		 {'hrsh7th/cmp-buffer'},
		 {'hrsh7th/cmp-path'},
		 {'saadparwaiz1/cmp_luasnip'},
		 {'hrsh7th/cmp-nvim-lsp'},
		 {'hrsh7th/cmp-nvim-lua'},

		 -- Snippets
		 {'L3MON4D3/LuaSnip'},
		 {'rafamadriz/friendly-snippets'},
	 }
 }

 use {
     "windwp/nvim-autopairs",
     config = function() require("nvim-autopairs").setup {} end
 }

 use {
     'nvim-lualine/lualine.nvim',
     requires = { 'nvim-tree/nvim-web-devicons', opt = true }
 }

 -- use('vim-airline/vim-airline')
 use('tpope/vim-commentary')
 -- use('preservim/nerdtree')

 -- use {'francoiscabrol/ranger.vim',
 --    requires = {'rbgrouleff/bclose.vim'}
 -- }
 use('iberianpig/ranger-explorer.vim')
 use('rbgrouleff/bclose.vim')
 -- use('kevinhwang91/rnvimr')

 use('xiyaowong/transparent.nvim')
 use('mfussenegger/nvim-dap')
 use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
 use ('CRAG666/code_runner.nvim')
 use('stevearc/vim-arduino')
end)
