-- Setup Lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

-- Plugin installation
lazy = require("lazy")
lazy.setup({
	-- External utilities installer
	{ "williamboman/mason.nvim" },
	{ "williamboman/mason-lspconfig.nvim" },

	-- (?)
	{ "nvim-treesitter/nvim-treesitter" },

	-- Language Server Protocol
	{ "neovim/nvim-lspconfig" },

	-- Autocomplete
	{ "hrsh7th/cmp-nvim-lsp" },
	{ "hrsh7th/cmp-buffer" },
	{ "hrsh7th/cmp-path" },
	{ "hrsh7th/cmp-cmdline" },
	{ "hrsh7th/nvim-cmp" },

	-- Appearance
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},

	-- Bottom status-bar
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	-- File Search
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.6",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- Comments
	{
		"numToStr/Comment.nvim",
		lazy = false,
	},

	-- Start screen dashboard
	{
		"nvimdev/dashboard-nvim",
		event = "VimEnter",
		dependencies = { { "nvim-tree/nvim-web-devicons" } },
	},

	-- Navigation tree
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},

	-- Color highlight
	{ "norcalli/nvim-colorizer.lua" },

	-- TODO Comments
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},

	-- Reduce hotkeys delay
	{ "max397574/better-escape.nvim" },

	-- Buffer line
	{ "akinsho/bufferline.nvim", version = "*", dependencies = "nvim-tree/nvim-web-devicons" },

	-- Code analysis
	{ "dense-analysis/ale" },

	-- Highlight other uses of the word under cursor
	{ "RRethy/vim-illuminate" },

	-- Code troubleshooting
	{
		"folke/trouble.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},

	-- Multiple terminals
	{ "akinsho/toggleterm.nvim", version = "*", config = true },

	-- Help with keymaps
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
	},

	-- Automatic brackets, quotes, etc.
	{ "echasnovski/mini.nvim", version = false },
	{ "echasnovski/mini.move", version = false },
	{ "echasnovski/mini.pairs", version = false },

	-- Auto Save
	{
		"okuuva/auto-save.nvim",
		cmd = "ASToggle", -- optional for lazy loading on command
		event = { "InsertLeave", "TextChanged" },
	},

	-- Code Formatter
	{
		"stevearc/conform.nvim",
		event = "BufWritePre",
	},

	-- Code runner
	{ "CRAG666/code_runner.nvim", config = true },

	-- Terminal
	{
		"CRAG666/betterTerm.nvim",
		opts = {
			position = "bot",
			size = 15,
		},
	},
})
