vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "m", 'ko<esc>j')

vim.keymap.set("n", "<c-p>", ':vsp<enter>' )
vim.keymap.set("n", "<c-l>", ':bot sp<enter>')

vim.keymap.set("n", "<c-t>", ':bot terminal<enter>')

vim.keymap.set("n", "<c-q>", ':q<enter>' )

vim.keymap.set("n", "<c-j>", ':wincmd j <enter>')
vim.keymap.set("n", "<c-k>", ':wincmd k <enter>')
vim.keymap.set("n", "<c-l>", ':wincmd l <enter>')

