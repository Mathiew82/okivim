-- ------------------------------
-- Global Keymaps
-- ------------------------------
vim.keymap.set("n", "<leader>,", vim.cmd.bfirst, { desc = "First buffer" })
vim.keymap.set("n", "<leader>.", vim.cmd.blast, { desc = "Last buffer" })
vim.keymap.set("n", "<Tab>", vim.cmd.bnext, { desc = "Next buffer" })
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious, { desc = "Previous buffer" })
vim.keymap.set("n", "<leader>bq", "<cmd>%bd|e#|bd#<CR>", { desc = "Close other buffers" })
vim.keymap.set("n", "<leader>bl", vim.cmd.ls, { desc = "Buffer list" })
vim.keymap.set("n", "<leader>alb", "o<Esc>k", { desc = "Insert empty line below" })
vim.keymap.set("n", "<leader>sl", "0v$h", { desc = "Select line (no newline)" })
vim.keymap.set("n", "<leader>yl", "0v$hy", { desc = "Copy line (no newline)" })
vim.keymap.set("n", "<leader>x", vim.cmd.bdelete, { desc = "Close buffer" })
vim.keymap.set("n", "<leader>a", "ggVG", { desc = "Select entire file" })
vim.keymap.set("v", "<leader>y", '"+y', { desc = "Copy selection" })
vim.keymap.set("n", "<leader>yy", '"+yy', { desc = "Copy line" })
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d', { desc = "Delete (keep clipboard)" })
vim.keymap.set("v", "<", "<gv", { desc = "Indent left (keep selection)" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right (keep selection)" })
vim.keymap.set("n", "<leader>dy", vim.diagnostic.open_float, { desc = "Show diagnostics" })
vim.keymap.set("n", "<leader>f", "/", { desc = "Search forward" })
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to the left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to the down window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to the up window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to the right window" })
vim.keymap.set("n", "<leader>w", "<C-w>s", { desc = "Split window" })
vim.keymap.set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>wq", "<C-w>q", { desc = "Quit a window" })

-- ------------------------------
-- Terminal
-- ------------------------------
vim.keymap.set("n", "<leader>t", function()
  vim.cmd("split | terminal")
  vim.cmd("startinsert")
end, { desc = "Split terminal" })
vim.keymap.set("n", "<leader>tv", function()
  vim.cmd("vsplit | terminal")
  vim.cmd("startinsert")
end, { desc = "Split terminal vertically" })

-- ------------------------------
-- Telescope Keymaps
-- ------------------------------
vim.keymap.set("n", "<leader><Space>", "<cmd>Telescope commands<CR>", { desc = "Telescope: Command palette" })
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Telescope: Find files" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Telescope: Live grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope: Find buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "Telescope: Help tags" })
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<CR>", { desc = "Telescope: Recent files" })
-- LSP pickers
vim.keymap.set("n", "<leader>ld", "<cmd>Telescope lsp_definitions<CR>", { desc = "Telescope: LSP definitions" })
vim.keymap.set("n", "<leader>lD", "<cmd>Telescope lsp_type_definitions<CR>", { desc = "Telescope: LSP type definitions" })
vim.keymap.set("n", "<leader>li", "<cmd>Telescope lsp_implementations<CR>", { desc = "Telescope: LSP implementations" })
vim.keymap.set("n", "<leader>lr", "<cmd>Telescope lsp_references<CR>", { desc = "Telescope: LSP references" })
vim.keymap.set("n", "<leader>ls", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "Telescope: LSP document symbols" })
vim.keymap.set("n", "<leader>lS", "<cmd>Telescope lsp_workspace_symbols<CR>",
  { desc = "Telescope: LSP workspace symbols" })

-- ------------------------------
-- Oil Keymaps
-- ------------------------------
vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Oil: Open parent directory" })

-- ------------------------------
-- Fugitive Keymaps
-- ------------------------------
vim.keymap.set("n", "<leader>G", "<cmd>Git<cr>", { desc = "Fugitive: Open git status" })
vim.keymap.set("n", "<leader>Gb", "<cmd>Git blame<cr>", { desc = "Fugitive: Open git blame" })

-- ------------------------------
-- Diffview Keymaps
-- ------------------------------
vim.keymap.set("n", "<leader>do", "<cmd>DiffviewOpen<cr>", { desc = "Diffview: Open" })
vim.keymap.set("n", "<leader>dH", "<cmd>DiffviewFileHistory %<cr>", { desc = "Diffview: File history" })
vim.keymap.set("n", "<leader>dc", "<cmd>DiffviewClose<cr>", { desc = "Diffview: Close" })

-- ------------------------------
-- Gitsigns Keymaps
-- ------------------------------
vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Gitsigns: Preview hunks in popup" })
vim.keymap.set("n", "<leader>gs", "<cmd>Gitsigns stage_hunk<CR>", { desc = "Gitsigns: Stage hunk" })
vim.keymap.set("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Gitsigns: Reset hunk" })
vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns toggle_current_line_blame<CR>",
  { desc = "Gitsigns: Toggle current line blame" })
vim.keymap.set("n", "<leader>gi", "<cmd>Gitsigns show_commit<CR>", { desc = "Gitsigns: Show info about the commit" })
vim.keymap.set("n", "<leader>gd", "<cmd>Gitsigns diffthis<CR>", { desc = "Gitsigns: Diff against HEAD" })
vim.keymap.set("n", "<leader>gn", "<cmd>Gitsigns toggle_numhl<CR>", { desc = "Gitsigns: Toggle number highlighting" })
vim.keymap.set("n", "<leader>gl", "<cmd>Gitsigns toggle_linehl<CR>", { desc = "Gitsigns: Toggle line highlighting" })

-- ------------------------------
-- Aerial Keymaps
-- ------------------------------
vim.keymap.set("n", "<leader>o", "<cmd>AerialToggle!<cr>", { desc = "Aerial: Toggle outline" })
