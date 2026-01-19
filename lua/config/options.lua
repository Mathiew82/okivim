vim.opt.number = true             -- Show line numbers
vim.opt.relativenumber = true     -- Show relative line numbers

vim.opt.tabstop = 2               -- A tab equals 2 spaces
vim.opt.shiftwidth = 2            -- Indentation size when using >>
vim.opt.expandtab = true          -- Convert tabs to spaces

vim.opt.smartindent = true        -- Smart automatic indentation
vim.opt.clipboard = "unnamedplus" -- Enable system clipboard

vim.opt.swapfile = false          -- Disable swap files (less I/O)
vim.opt.backup = false            -- Do not create backup files
vim.opt.undofile = true           -- Persistent undo across sessions

vim.opt.updatetime = 250          -- Reduce refresh time (snappy)

vim.opt.termguicolors = true      -- Enable 24-bit colors
vim.opt.scrolloff = 8             -- Keep 8 lines visible around cursor
vim.opt.signcolumn = "yes"        -- Always show sign column

vim.opt.foldmethod = "syntax"     -- Create folds based on syntax highlighting
vim.opt.foldlevelstart = 99       -- Start with all folds open

vim.opt.path:append("**")
vim.opt.suffixesadd:append({ ".ts", ".tsx", ".js", ".jsx", ".json", ".mjs", ".cjs" })
