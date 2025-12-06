-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set("n", "<c-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<c-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<c-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<c-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Buffers
vim.keymap.set("n", "[b", ":bprev<CR>", { desc = "Prev Buffer" })
vim.keymap.set("n", "]b", ":bnext<CR>", { desc = "Prev Buffer" })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete Buffer" })

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
    callback = function() vim.hl.on_yank() end,
})

-- vim: ts=2 sts=2 sw=2 et
