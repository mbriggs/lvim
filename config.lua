-- general
lvim.log.level = "warn"
lvim.colorscheme = "onedark"

vim.cmd([[
if !has('gui_running') && &term =~ '^\%(screen\|tmux\)'
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

syntax on
set termguicolors
]])

lvim.builtin.treesitter.indent.enable = false

lvim.format_on_save = true

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
lvim.keys.normal_mode["<CR>"] = ":nohlsearch<CR>:w<CR>"
-- H / L for start / end of line
lvim.keys.normal_mode["<s-h>"] = "^"
lvim.keys.normal_mode["<s-l>"] = "$"

lvim.keys.normal_mode["\\"] = ":NvimTreeToggle<cr>"

lvim.keys.normal_mode["<c-l>"] = ":BufferLineCycleNext<cr>"
lvim.keys.normal_mode["<c-h>"] = ":BufferLineCyclePrev<cr>"
-- tmux
lvim.keys.normal_mode["<c-w>h"] = ":TmuxNavigateLeft<cr>"
lvim.keys.normal_mode["<c-w>j"] = ":TmuxNavigateDown<cr>"
lvim.keys.normal_mode["<c-w>k"] = ":TmuxNavigateUp<cr>"
lvim.keys.normal_mode["<c-w>l"] = ":TmuxNavigateRight<cr>"

-- put current dir into command
lvim.keys.command_mode["%%"] = "<C-R>=expand('%:h').'/'<cr>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- we use protected-mode (pcall) just in case the plugin wasn't loaded yet.
local _, actions = pcall(require, "telescope.actions")
lvim.builtin.telescope.defaults.mappings = {
	-- for input mode
	i = {
		["<C-n>"] = actions.move_selection_next,
		["<C-p>"] = actions.move_selection_previous,
		["<C-j>"] = actions.cycle_history_next,
		["<C-k>"] = actions.cycle_history_prev,
	},
	-- for normal mode
	n = {
		["<C-n>"] = actions.move_selection_next,
		["<C-p>"] = actions.move_selection_previous,
	},
}

-- do not switch root
local nvimtree = lvim.builtin.nvimtree
nvimtree.setup.update_focused_file.update_cwd = false

local project = lvim.builtin.project
project.manual_mode = true

-- which-key

lvim.builtin.which_key.mappings[";"] = { [[<cmd>lua require("lsp_fixcurrent")()<cr>]], "QuickFix" }
lvim.builtin.which_key.mappings["<space>"] = { [[<cmd>Telescope oldfiles<cr>]], "Find Old File" }
lvim.builtin.which_key.mappings["<cr>"] = { [[<cmd>q<cr>]], "Close Window" }
lvim.builtin.which_key.mappings["-"] = { [[<cmd>only<cr>]], "Close other splits" }
lvim.builtin.which_key.mappings["'"] = { [[<cmd>vs<cr>]], "Split" }
lvim.builtin.which_key.mappings[","] = { [[<cmd>sp<cr>]], "Horizontal Split" }
lvim.builtin.which_key.mappings["."] = { [[<cmd>Telescope lsp_definitions<cr>]], "Go to Definition" }
lvim.builtin.which_key.mappings[">"] = { [[<cmd>Telescope lsp_references<cr>]], "Go to other references" }

lvim.builtin.which_key.mappings["b"]["d"] = { [[<cmd>BufDel<cr>]], "Delete Buffer" }
lvim.builtin.which_key.mappings["b"]["k"] = { [[<cmd>BufDel!<cr>]], "Kill Buffer" }

lvim.builtin.which_key.mappings["e"] = {
	name = "+Editor",
	e = { [[<cmd>NvimTreeToggle<cr>]] },
	m = { [[<cmd>Telescope marks<cr>]], "Marks" },
	h = { [[<cmd>Telescope help_tags<cr>]], "Help Tag" },
	[";"] = { [[<cmd>Telescope commands<cr>]], "Commands" },
	c = { [[<cmd>Telescope command_history<cr>]], "Previous Commands" },
	k = { [[<cmd>Telescope keymaps<cr>]], "Keymap" },
	q = { [[<cmd>Telescope quickfix<cr>]], "QuickFix" },
	o = { [[<cmd>Telescope quickfix<cr>]], "Vim Options" },
	w = { "<cmd>WinShift<cr>", "Move Window" },
	u = {
		name = "+Sudo",
		r = { "<cmd>SudaRead<cr>", "Read file with sudo" },
		w = { "<cmd>SudaWrite<cr>", "Write file with sudo" },
	},
	s = { "<cmd>Sort<cr>", "Sort" },
	t = { ':s/"\\(\\w\\) \\(\\w\\)"/\\1", "\\2/g<cr>', "Split word string" },
}

lvim.builtin.which_key.mappings["t"] = {
	name = "+Test",
	t = { "<cmd>TestNearest<cr>", "Test Nearest" },
	f = { "<cmd>TestFile<cr>", "Test File" },
	a = { "<cmd>TestSuite<cr>", "Test Suite" },
	[";"] = { "<cmd>TestLast<cr>", "Rerun Last Test" },
	["."] = { "<cmd>TestVisit<cr>", "Visit Test" },
}

lvim.builtin.which_key.mappings["x"] = {
	name = "+Trouble",
	x = { "<cmd>TroubleClose<cr>", "Close" },
	f = { "<cmd>TroubleToggle definitions<cr>", "Definitions" },
	w = { "<cmd>TroubleToggle workspace_diagnostics<cr>", "Workspace Diagnostics" },
	d = { "<cmd>TroubleToggle document_diagnostics<cr>", "Document Diagnostics" },
	r = { "<cmd>TroubleToggle references<cr>", "References" },
	q = { "<cmd>TroubleToggle quickfix<cr>", "QuickFix" },
	l = { "<cmd>TroubleToggle loclist<cr>", "Location List" },
	t = { "<cmd>TodoTrouble<cr>", "TODOs" },
}

lvim.builtin.which_key.mappings["q"] = {
	name = "+Quit",
	q = { "<cmd>:qa<cr>", "Quit" },
	c = { "<cmd>:q!<cr>", "Close" },
	k = { "<cmd>:qa!<cr>", "Quit without saving" },
	s = { "<cmd>:wa | qa!<cr>", "Quit and save" },
}

lvim.builtin.dashboard.active = false
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

-- generic LSP settings

-- ---@usage disable automatic installation of servers
-- lvim.lsp.automatic_servers_installation = false

-- ---@usage Select which servers should be configured manually. Requires `:LvimCacheReset` to take effect.
-- See the full default list `:lua print(vim.inspect(lvim.lsp.override))`
-- vim.list_extend(lvim.lsp.override, { "pyright" })

-- ---@usage setup a server -- see: https://www.lunarvim.org/languages/#overriding-the-default-configuration
-- local opts = {} -- check the lspconfig documentation for a list of all possible options
-- require("lvim.lsp.manager").setup("pylsp", opts)

-- -- you can set a custom on_attach function that will be used for all the language servers
-- -- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end

-- set formatters, this will override the language server formatting capabilities (if it exists)
local formatters = require("lvim.lsp.null-ls.formatters")

formatters.setup({
	{
		command = "prettierd",
		filetypes = { "javascript", "typescript", "typescriptreact", "css", "scss", "html", "json" },
	},
	{ command = "cmake_format", filetypes = { "make" } },
	{ command = "rufo", filetypes = { "ruby" } },
	{ command = "shfmt", filetypes = { "bash" } },
	{ command = "sqlformat", filetypes = { "sql" } },
	{ command = "stylua", filetypes = { "lua" } },
})

-- set additional linters
local linters = require("lvim.lsp.null-ls.linters")
linters.setup({
	{ command = "shellcheck" },
	{ command = "codespell" },
	{ command = "eslint_d" },
	{ command = "hadolint" },
	{ command = "proselint" },
	{ command = "stylelint" },
	{ command = "golangci_lint" },
})

local code_actions = require("lvim.lsp.null-ls.code_actions")
code_actions.setup({
	{ command = "eslint_d" },
	{ command = "refactoring" },
	{ command = "shellcheck" },
})

-- Autocommands
lvim.autocommands.custom_groups = {
	{ "BufRead,BufNewFile", "*.gohtml", "set ft=html" },
	{ "BufRead,BufNewFile", ".envrc*", "set ft=bash" },
	{ "BufNewFile,BufRead", "*.go", "setlocal noet ts=4 sw=4 sts=4" },
}

lvim.plugins = require("mb.plugins")
