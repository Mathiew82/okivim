-- ------------------------------
-- Global Keymaps
-- ------------------------------
vim.g.mapleader = " " -- Set Space as the leader key

-- netrw-specific mappings (only inside netrw buffers)
vim.api.nvim_create_autocmd("FileType", {
  pattern = "netrw",
  callback = function()
    local opts = { buffer = true, silent = true }
    vim.keymap.set("n", "<leader>-", "%", opts) -- Create file (netrw)
    vim.keymap.set("n", "<leader>=", "d", opts) -- Create directory (netrw)
  end,
})

vim.keymap.set("n", "<leader>ee", vim.cmd.Ex)          -- Open netrw (file explorer)
vim.keymap.set("n", "<leader>,,", "<C-^>")             -- Jump to alternate file (previous buffer)

vim.keymap.set("n", "<leader>,", vim.cmd.bfirst)       -- Go to first buffer
vim.keymap.set("n", "<leader>.", vim.cmd.blast)        -- Go to last buffer
vim.keymap.set("n", "<Tab>", vim.cmd.bnext)            -- Next buffer
vim.keymap.set("n", "<S-Tab>", vim.cmd.bprevious)      -- Previous buffer
vim.keymap.set("n", "<leader>ls", vim.cmd.ls)          -- Show buffers list

vim.keymap.set("n", "<leader>o", "o<Esc>k")            -- Insert an empty line below without leaving Normal mode
vim.keymap.set("n", "<leader>x", vim.cmd.bdelete)      -- Close the current buffer

vim.keymap.set("n", "<leader>a", "ggVG")               -- Select the entire file
vim.keymap.set("v", "<leader>y", '"+y')                -- Copy selection to system clipboard
vim.keymap.set("n", "<leader>yy", '"+yy')              -- Copy current line to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>d", '"_d')       -- Delete without overwriting clipboard

vim.keymap.set("n", "<leader>dy", vim.diagnostic.open_float) -- Show diagnostics under the cursor

vim.keymap.set("n", "<leader>f", "/")                  -- Start forward search
-- Search navigation:
--   n     = next match
--   N     = previous match
--   <Esc> = exit search
--   :noh  = clear search highlight

-- ------------------------------
-- Telescope Keymaps
-- ------------------------------
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>") -- Find files
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")  -- Live grep (search text in project)
vim.keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")    -- List open buffers
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")  -- Search help tags
