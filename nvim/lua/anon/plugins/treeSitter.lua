return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    lazy = false,
    build = ":TSUpdate",
    config = function()
	require("nvim-treesitter").install({
	    "python",
	    "bash",
	    "json",
	    "yaml",
	    "toml",
	})

	vim.api.nvim_create_autocmd("FileType", {
	    callback = function(args)
		if vim.bo[args.buf].buftype ~= "" then
		    return
		end

		local lang = vim.treesitter.language.get_lang(args.match)
		if not lang then
		    return
		end

		local ok, added = pcall(vim.treesitter.language.add, lang)
		if ok and added then
		    vim.treesitter.start(args.buf, lang)
		end
	    end,
	})
    end,
}
