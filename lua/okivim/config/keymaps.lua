-- ------------------------------
-- Global Keymaps
-- ------------------------------
vim.keymap.set("n", "<leader>,,", "<C-^>", { desc = "Jump to alternate file" })
vim.keymap.set("n", "<leader>,", vim.cmd.bfirst, { desc = "First buffer" })
vim.keymap.set("n", "<leader>.", vim.cmd.blast, { desc = "Last buffer" })
vim.keymap.set("n", "<Tab>", vim.cmd.bnext, { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious, { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bls", vim.cmd.ls, { desc = "List buffers" })
vim.keymap.set("n", "<leader>o", "o<Esc>k", { desc = "Insert empty line below" })
vim.keymap.set("n", "<leader>v", "0v$h", { desc = "Select current line" })
vim.keymap.set("n", "<leader>vy", "0v$hy", { desc = "Copy current line" })
vim.keymap.set("n", "<leader>x", vim.cmd.bdelete, { desc = "Close buffer" })
vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select entire file" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy selection" })
vim.keymap.set("n", "<leader>yy", '"+yy', { desc = "Copy line" })
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete (keep clipboard)" })
vim.keymap.set("v", "<", "<gv", { desc = "Indent left (keep selection)" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right (keep selection)" })
vim.keymap.set("n", "<leader>dy", vim.diagnostic.open_float, { desc = "Show diagnostics" })
vim.keymap.set("n", "<leader>f", "/", { desc = "Search forward" })

-- ------------------------------
-- Telescope Keymaps
-- ------------------------------
vim.keymap.set("n", "<leader><Space>", "<cmd>Telescope commands<CR>", { desc = "Command palette" })
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Live grep (search text in project)" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Find buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Help tags" })

-- ------------------------------
-- Oil Keymaps
-- ------------------------------
vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Oil: open parent directory" })

-- ------------------------------
-- Gitsigns Keymaps
-- ------------------------------
vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", {
  desc = "Gitsigns: Preview hunks in popup"
})
vim.keymap.set("n", "<leader>gs", ":Gitsigns stage_hunk<CR>", {
  desc = "Gitsigns: Stage hunk"
})
vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<CR>", {
  desc = "Gitsigns: Reset hunk"
})
vim.keymap.set("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", {
  desc = "Gitsigns: Toggle current line blame"
})
vim.keymap.set("n", "<leader>gi", ":Gitsigns show_commit<CR>", {
  desc = "Gitsigns: Show info about the commit"
})
vim.keymap.set("n", "<leader>gd", ":Gitsigns diffthis<CR>", {
  desc = "Gitsigns: Diff against HEAD"
})
vim.keymap.set("n", "<leader>gn", ":Gitsigns toggle_numhl<CR>", {
  desc = "Gitsigns: Diff against HEAD"
})
vim.keymap.set("n", "<leader>gl", ":Gitsigns toggle_linehl<CR>", {
  desc = "Gitsigns: Diff against HEAD"
})

-- ------------------------------
-- Aerial Keymaps
-- ------------------------------
vim.keymap.set("n", "<leader>o", "<cmd>AerialToggle!<cr>", { desc = "Toggle Aerial Outline" })
