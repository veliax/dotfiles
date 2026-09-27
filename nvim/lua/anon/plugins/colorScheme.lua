return {
    'projekt0n/github-nvim-theme',
    name = 'github-theme',
    lazy = false, 
    priority = 1000, 
    config = function()
	require('github-theme').setup({
	    specs = {
		github_dark= {
		    inactive = '#090909', 
		    bg1 = '#1e1e1e'
		},
	    },
	    groups = {
		all = {
		    StatusLine = { bg = 'none', fg = '#ffffff' },
		    StatusLineNC = { bg = 'none', fg = '#666666' },
		    LineNr = {fg = '#ffffff'}
		},
	    },
	})
	vim.cmd('colorscheme github_dark')
    end,
}
