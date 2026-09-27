return {
    {
	"neovim/nvim-lspconfig",
	dependencies = {
	    {
		"folke/lazydev.nvim",
		ft = "lua", -- only load on lua files
		opts = {
		    library = {
			-- See the configuration section for more details
			-- Load luvit types when the `vim.uv` word is found
			{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
		    },
		},
	    },

	    { -- optional cmp completion source for require statements and module annotations
		"hrsh7th/nvim-cmp",
		opts = function(_, opts)
		    opts.sources = opts.sources or {}
		    table.insert(opts.sources, {
			name = "lazydev",
			group_index = 0, -- set group index to 0 to skip loading LuaLS completions
		    })
		end,
	    },

	},
	config = function()
	    vim.lsp.enable({'lua_ls', 'pyright'})


	    vim.api.nvim_create_autocmd('LspAttach', {
		callback = function(ev)
		    local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
		    if client:supports_method('textDocument/completion') then
			vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger = true})
		    end
		end,
	    })

	    vim.opt.complete:append('o')
	    vim.opt.completeopt = {'menuone', 'noselect'}
	    vim.o.pumheight = 10
	end,
    }
}
