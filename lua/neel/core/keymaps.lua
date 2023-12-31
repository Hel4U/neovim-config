vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

-- helper functions
local function save_buffer()
	vim.cmd("w")
end

-- general keymaps

keymap.set("i", "jj", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "x", '"_x"')

keymap.set("n", "C-a", "ggvG", { noremap = true })

keymap.set("n", "<leader><leader>", ":w<CR>", { noremap = true })
keymap.set("n", "<leader>q", ":q!<CR>", { noremap = true })
-- keymap.set("n", "<leader><leader><leader>", ":wq<CR>", { noremap = true })

keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- split window equal width
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabn<CR>") -- go to previous tab

-- plugins keymaps

-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>")

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- toogleterm
keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<cr>")

-- dap
keymap.set("n", "<leader>db", ":lua require'dap'.toggle_breakpoint()<CR>")
