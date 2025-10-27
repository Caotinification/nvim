-- Sets options for the current buffer only (buffer-local)
vim.bo.tabstop = 2 -- 'ts': Number of spaces a tab visually occupies
vim.bo.shiftwidth = 2 -- 'sw': Number of spaces used for indentation (< and >)
vim.bo.softtabstop = 2 -- 'sts': Makes the <Tab> key insert spaces up to this width
vim.keymap.set('n', 'k', 'gk', { buffer = true, desc = 'Move up a display line' })
vim.keymap.set('n', 'j', 'gj', { buffer = true, desc = 'Move down a display line' })
