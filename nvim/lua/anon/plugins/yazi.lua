return {
    "mikavilpas/yazi.nvim",
    version = "*", 
    event = "VeryLazy",
    dependencies = {
	{ "nvim-lua/plenary.nvim", lazy = true },
    },
    keys = {
	{
	    "<c-f>",
	    "<cmd>Yazi<cr>",
	    desc = "Open yazi at the current file",
	},
    },
    opts = {
	open_for_directories = false,
	keymaps = {
	    show_help = "<f1>",
	},
	yazi_floating_window_border = "none",
    },
}
