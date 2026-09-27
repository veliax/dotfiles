vim.keymap.set("n", " ", "", { noremap = true, silent = true })
vim.g.mapleader = " "

vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)

vim.keymap.set("n", "m", 'ko<esc>j')
vim.keymap.set("n", ",", vim.diagnostic.open_float)


vim.keymap.set("n", "<leader>tf",function() require('telescope.builtin').find_files() end)
vim.keymap.set("n", "<leader>tr",function() require('telescope.builtin').live_grep() end)
vim.keymap.set("n", "<leader>th",function() require('telescope.builtin').help_tags() end)
vim.keymap.set("n", "<leader>tb",function() require('telescope.builtin').buffers() end)
vim.keymap.set("n", "<leader>tg",function() require('telescope.builtin').git_files() end)


--[=[ 
Depreceated
vim.opt.langmap = [[l\;'\\;hjkl]]

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
--]=]
