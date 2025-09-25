return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    event = { "BufReadPost", "BufNewFile" },
    opts = {
	ensure_installed = {
	    "c", "cpp", "lua",  "query", "json", "javascript", "bash", "toml" 
	},
	sync_install = true,
	auto_install = true,
	highlight = {
	    enable = true,
	    additional_vim_regex_highlighting = true,
	},
    },
    config = function(_, opts)
	require("nvim-treesitter.configs").setup(opts)
    end,
}

