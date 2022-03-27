return {
	{
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = [[require'todo-comments'.setup{}]],
	},

	{
		"kevinhwang91/nvim-bqf",
		requires = {
			{ "junegunn/fzf", dir = "~/.fzf", run = "./install --all" },
			"junegunn/fzf.vim",
		},
		config = function()
			require("bqf").setup({
				auto_enable = true,
			})
		end,
	},

	{
		"folke/lsp-trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
		cmd = "TroubleToggle",
	},
}
