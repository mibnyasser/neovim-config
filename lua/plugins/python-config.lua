-- Python formatter
return {
	{
		"psf/black",
		ft = "python",
		config = function()
			-- Automatically format file buffer when saving
			vim.api.nvim_create_autocmd({ "BufWritePre" }, {
				pattern = "*.py",
				callback = function()
					vim.cmd("Black")
				end,
			})
		end,
	},
	{
		"stsewd/isort.nvim",
		ft = "python",
		config = function()

			vim.api.nvim_create_autocmd({ "BufWritePre" }, {
				pattern = "*.py",
				callback = function()
					vim.cmd("IsortSync")
				end,
			})
		end,
	},
}
