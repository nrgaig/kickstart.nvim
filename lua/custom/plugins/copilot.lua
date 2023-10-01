return{
	--add copilot for nvim-cmp
	"zbirenbaum/copilot-cmp",
	event = "InsertEnter",
	dependencies = {
		-- Copilot
		-- "github/copilot.vim",
		"zbirenbaum/copilot.lua",
		--     lazy = false,
		config = function ()
			require('copilot').setup({})
		end,

	},
	config = function ()
		require("copilot_cmp").setup()
		require("cmp").setup({
			sources = {
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
				{ name = 'copilot' },
				{ name = 'path' },
				{ name = 'buffer' },
			},
			window={
				completion={
					border = {'┌', '─', '┐', '│', '┘', '─', '└', '│'}
				}
			}
		})
	end
}
