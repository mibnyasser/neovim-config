return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				require("none-ls.diagnostics.eslint_d"),
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.black,
				-- null_ls.builtins.completion.spell,
				-- require("none-ls.diagnostics.eslint_d"), -- requires none-ls-extras.nvim
			},
		})

		-- null_ls.setup({
		-- 	sources = {
		-- 		null_ls.builtins.formatting.stylua,
		-- 		null_ls.builtins.formatting.eslint_d,
		-- 		null_ls.builtins.formatting.prettier,
		-- 		-- null_ls.builtins.diagnostics.ruff,
		-- 		null_ls.builtins.formatting.black,
		-- 		-- null_ls.builtins.diagnostics.yamllint,
		-- 		require("none-ls.diagnostics.eslint"),
		-- 	},
		-- })

		vim.keymap.set("n", "<leader>i", vim.lsp.buf.format, {})
	end,
}
