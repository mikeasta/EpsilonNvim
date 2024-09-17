-- GENERAL
vim.opt.wrap = true       
vim.opt.breakindent = true  
vim.opt.encoding = "utf-8" 
vim.opt.cursorline = true  

-- Search
vim.opt.ignorecase = true              
vim.opt.smartcase = true               -- Respect case if there are upper case letters in pattern
vim.opt.hlsearch = true                -- Hightlights found pattern
vim.opt.incsearch = true               -- Interactive Search

-- Mouse
vim.opt.mouse = "a"        -- Mouse control
vim.opt.mousefocus = true

-- Tabulation
vim.opt.tabstop = 2        -- Spaces in tabs
vim.opt.shiftwidth = 2     -- (?)
vim.opt.expandtab = true   -- Turn tab symbol to space symbols

-- Line Numbers
vim.opt.number = true          -- Row indices
vim.opt.relativenumber = true  -- Relative distance from current row to others
vim.wo.number = true           -- Row indices
vim.wo.relativenumber = true   -- Relative distance from current row to others

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Clipboard
vim.opt.clipboard = "unnamedplus"  -- Shared clipboard

-- Shorter messages
vim.opt.shortmess:append("c")

-- Nvim-Tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true


	
