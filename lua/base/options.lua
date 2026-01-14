vim.opt.number = true             -- Muestra números de línea
vim.opt.relativenumber = true     -- Muestra números relativos

vim.opt.tabstop = 2               -- Un tab equivale a 2 espacios
vim.opt.shiftwidth = 2            -- Tamaño de indentación al usar >>
vim.opt.expandtab = true          -- Convierte tabs en espacios

vim.opt.smartindent = true        -- Indentación automática inteligente
vim.opt.clipboard = "unnamedplus" -- Activar el clipboard

vim.opt.swapfile = false          -- Desactiva archivos swap (menos I/O)
vim.opt.backup = false            -- No crea archivos backup
vim.opt.undofile = true           -- Permite deshacer incluso tras cerrar

vim.opt.updatetime = 250          -- Reduce tiempo de refresco (snappy)

vim.opt.termguicolors = true      -- Activa colores 24 bits
vim.opt.scrolloff = 8             -- Mantiene 8 líneas visibles al mover cursor
vim.opt.signcolumn = "yes"        -- Columna fija para diagnósticos

vim.opt.foldmethod = "syntax"     -- Create folds based on syntax highlighting
vim.opt.foldlevelstart = 99       -- Start with all folds open
-- Folding:
--   za = toggle fold under cursor
--   zR = open all folds
--   zM = close all folds

