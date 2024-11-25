-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set

--Gitsigns
map({ "n" }, "<leader>gn", "<cmd> Gitsigns next_hunk <cr>", { desc = "Next hunk" })
map({ "n" }, "<leader>gp", "<cmd> Gitsigns prev_hunk <cr>", { desc = "Previous hunk" })

--Comment
map({ "n" }, "<leader>/", "<cmd> gcc <cr>", { desc = "Comment line" })

--Buffers 
map({ "n" }, "<S-tab>", "<cmd> BufferLineCyclePrev <cr>", { desc = "Previous buffer" })
map({ "n" }, "<tab>", "<cmd> BufferLineCycleNext <cr>", { desc = "Next buffer" })

--Telescope 
map({ "n" }, "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find Files" })
map({ "n" }, "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Live Grep" })

-- Telescope with git
map({ "n" }, "<leader>gs", "<cmd> Telescope git_stash <cr>", { desc = "Git stash" })
map({ "n" }, "<leader>gt", "<cmd> Telescope git_status <cr>", { desc = "Git status" })
map({ "n" }, "<leader>gB", "<cmd> Telescope git_branches <cr>", { desc = "Git branches" })

-- Add a keymap to browse plugin files
map({ "n" }, "<leader>fp", function()
  require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
end, { desc = "Find Plugin File" })
