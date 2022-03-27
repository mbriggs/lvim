return {
	formatters = {
		{
			command = "prettierd",
			filetypes = { "javascript", "typescript", "typescriptreact", "css", "scss", "html", "json" },
		},
		{ command = "cmake_format", filetypes = { "make" } },
		{ command = "rufo", filetypes = { "ruby" } },
		{ command = "shfmt", filetypes = { "bash" } },
		{ command = "sqlformat", filetypes = { "sql" } },
		{ command = "stylua", filetypes = { "lua" } },
	},
	linters = {
		{ command = "shellcheck" },
		{ command = "codespell" },
		{ command = "eslint_d" },
		{ command = "hadolint" },
		{ command = "proselint" },
		{ command = "stylelint" },
		{ command = "golangci_lint" },
	},
	code_actions = {
		{ command = "eslint_d" },
		{ command = "refactoring" },
		{ command = "shellcheck" },
	},
}
