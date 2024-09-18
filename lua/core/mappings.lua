vim.g.mapleader = " "

-- Navigation
vim.keymap.set({ "n", "v", "i" }, "<C-h>", "<Left>")
vim.keymap.set({ "n", "v", "i" }, "<C-j>", "<Down>")
vim.keymap.set({ "n", "v", "i" }, "<C-k>", "<Up>")
vim.keymap.set({ "n", "v", "i" }, "<C-l>", "<Right>")

-- Quit
vim.keymap.set("n", "<C-q>", "<cmd>:q<CR>")

-- Copy all text
vim.keymap.set("n", "<C-a>", "<cmd>%y+<CR>")

-- Saving a file via Ctrl+S
vim.keymap.set("i", "<C-s>", "<cmd>:w<CR>")
vim.keymap.set("n", "<C-s>", "<cmd>:w<CR>")

-- NvimTree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>tf", ":NvimTreeFocus<CR>")

-- BufferLine
vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>")
vim.keymap.set("n", "<S-Tab>", ":BufferLineCyclePrev<CR>")
-- vim.keymap.set("n", "<C-l>", ":BufferLineCloseOthers<CR>")

-- TodoList
vim.keymap.set("n", "<leader>nl", ":TodoTelescope<CR>")

-- ToggleTerm
vim.keymap.set("n", "<leader>s", ":ToggleTerm direction=float<CR>")

-- Code Runner
vim.keymap.set("n", "<leader>r", ":RunCode<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
vim.keymap.set("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })
