lvim.plugins = {
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	"f-person/git-blame.nvim",
	{
		"jinh0/eyeliner.nvim",
		config = function()
			require("eyeliner").setup({
				highlight_on_key = true,
			})
		end,
	},
	"mfussenegger/nvim-dap-python",
	"nvim-neotest/neotest",
	"nvim-neotest/neotest-python",
}
