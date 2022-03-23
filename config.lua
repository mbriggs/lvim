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

vim.opt.laststatus = 3

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

lvim.builtin.dashboard.active = true
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
	{ command = "prettierd", filetypes = { "javascript", "typescript", "css", "scss", "html", "json" } },
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

-- Autocommands
lvim.autocommands.custom_groups = {
	{ "BufRead,BufNewFile", "*.gohtml", "set ft=html" },
	{ "BufRead,BufNewFile", ".envrc*", "set ft=bash" },
	{ "BufNewFile,BufRead", "*.go", "setlocal noet ts=4 sw=4 sts=4" },
}

lvim.plugins = {
	{
		"navarasu/onedark.nvim",
	},

	-- TMUX
	{
		"christoomey/vim-tmux-navigator",
		config = function()
			local g = vim.g

			g.tmux_navigator_no_mappings = 1
			g.tmux_navigator_disable_when_zoomed = 1
		end,
	},
	"jgdavey/tslime.vim",
	{
		"ironhouzi/starlite-nvim",
		config = function()
			local a = vim.api

			a.nvim_set_keymap("n", "*", ":lua require('starlite').star()", { silent = true })
			a.nvim_set_keymap("n", "g*", ":lua require('starlite').g_star()", { silent = true })
			a.nvim_set_keymap("n", "#", ":lua require('starlite').hash()", { silent = true })
			a.nvim_set_keymap("n", "g#", ":lua require('starlite').g_hash()", { silent = true })
		end,
	},
	{
		"norcalli/nvim-colorizer.lua",
		config = function()
			require("colorizer").setup({
				"*", -- Highlight all files, but customize some others.
				css = { rgb_fn = true }, -- Enable parsing rgb(...) functions in css.
				html = { names = false }, -- Disable parsing "names" like Blue or Gray
			})
		end,
	},
	{
		"ojroques/nvim-bufdel",
		config = function()
			require("bufdel").setup({
				next = "alternate",
				quit = false,
			})
		end,
	},
	{
		"janko/vim-test",
		requires = "preservim/vimux",
		config = [[vim.g['test#strategy'] = 'vimux']],
	},
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
		"andymass/vim-matchup",
		config = function()
			require("nvim-treesitter.configs").setup({
				matchup = { enable = true },
			})
		end,
	},
	{
		"sindrets/winshift.nvim",
		config = function()
			require("winshift").setup({
				highlight_moving_win = true, -- Highlight the window being moved
				focused_hl_group = "Visual", -- The highlight group used for the moving window
				moving_win_options = {
					-- These are local options applied to the moving window while it's
					-- being moved. They are unset when you leave Win-Move mode.
					wrap = false,
					cursorline = false,
					cursorcolumn = false,
					colorcolumn = "",
				},
				-- The window picker is used to select a window while swapping windows with
				-- ':WinShift swap'.
				-- A string of chars used as identifiers by the window picker.
				window_picker_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
				window_picker_ignore = {
					-- This table allows you to indicate to the window picker that a window
					-- should be ignored if its buffer matches any of the following criteria.
					filetype = { -- List of ignored file types
						"NvimTree",
					},
					buftype = { -- List of ignored buftypes
						"terminal",
						"quickfix",
					},
					bufname = { -- List of regex patterns matching ignored buffer names
						[[.*foo/bar/baz\.qux]],
					},
				},
			})
		end,
	},
	{
		"sQVe/sort.nvim",
		config = function()
			require("sort").setup({
				delimiters = {
					",",
					"|",
					";",
					":",
					"s", -- Space
					"t", -- Tab
				},
			})
		end,
	},
	{
		"winston0410/range-highlight.nvim",
		requires = {
			"winston0410/cmd-parser.nvim",
		},
		config = function()
			require("range-highlight").setup({
				highlight = "Visual",
				highlight_with_out_range = {
					d = true,
					delete = true,
					m = true,
					move = true,
					y = true,
					yank = true,
					c = true,
					change = true,
					j = true,
					join = true,
					["<"] = true,
					[">"] = true,
					s = true,
					subsititue = true,
					sno = true,
					snomagic = true,
					sm = true,
					smagic = true,
					ret = true,
					retab = true,
					t = true,
					co = true,
					copy = true,
					ce = true,
					center = true,
					ri = true,
					right = true,
					le = true,
					left = true,
					sor = true,
					sort = true,
				},
			})
		end,
	},
	{
		"monaqa/dial.nvim",
		config = function()
			vim.cmd([[
nmap <C-a> <Plug>(dial-increment)
nmap <C-x> <Plug>(dial-decrement)
vmap <C-a> <Plug>(dial-increment)
vmap <C-x> <Plug>(dial-decrement)
vmap g<C-a> <Plug>(dial-increment-additional)
vmap g<C-x> <Plug>(dial-decrement-additional)
  ]])
		end,
	},
	"ConradIrwin/vim-bracketed-paste",
	"google/vim-searchindex",
	"justinmk/vim-gtfo",
	"lambdalisue/reword.vim",
	"lambdalisue/suda.vim",
	"lambdalisue/vim-protocol",
	"machakann/vim-highlightedyank",
	"tpope/vim-afterimage",
	"tpope/vim-apathy",
	"tpope/vim-jdaddy",
	"tpope/vim-repeat",
	"tpope/vim-surround",
	"tpope/vim-unimpaired",

	{
		"ggandor/leap.nvim",
		config = function()
			require("leap").set_default_keymaps()
		end,
	},

	"ray-x/cmp-treesitter",
	{
		"ruifm/gitlinker.nvim",
		event = "BufRead",
		config = function()
			require("gitlinker").setup({
				opts = {
					-- remote = 'github', -- force the use of a specific remote
					-- adds current line nr in the url for normal mode
					add_current_line_on_normal_mode = true,
					-- callback for what to do with the url
					action_callback = require("gitlinker.actions").open_in_browser,
					-- print the url after performing the action
					print_url = false,
					-- mapping to call url generation
					mappings = "<leader>gy",
				},
			})
		end,
		requires = "nvim-lua/plenary.nvim",
	},
	{
		"pwntester/octo.nvim",
		event = "BufRead",
	},

	"kana/vim-textobj-user",
	"kana/vim-niceblock",
	"Julian/vim-textobj-variable-segment",
	"glts/vim-textobj-comment",
	"kana/vim-textobj-entire",
	"rhysd/vim-textobj-anyblock",
	{ "chaoren/vim-wordmotion", setup = [[vim.g.wordmotion_prefix = '<space>']] },
	{
		"abecodes/tabout.nvim",
		config = function()
			require("tabout").setup({
				tabkey = "", -- key to trigger tabout, set to an empty string to disable
				backwards_tabkey = "", -- key to trigger backwards tabout, set to an empty string to disable
				act_as_tab = true, -- shift content if tab out is not possible
				act_as_shift_tab = false, -- reverse shift content if tab out is not possible (if your keyboard/terminal supports <S-Tab>)
				enable_backwards = true, -- well ...
				completion = true, -- if the tabkey is used in a completion pum
				tabouts = {
					{ open = "'", close = "'" },
					{ open = '"', close = '"' },
					{ open = "`", close = "`" },
					{ open = "(", close = ")" },
					{ open = "[", close = "]" },
					{ open = "{", close = "}" },
					{ open = "do", close = "end" },
				},
				ignore_beginning = true, --[[ if the cursor is at the beginning of a filled element it will rather tab out than shift the content ]]
				exclude = {}, -- tabout will ignore these filetypes
			})

			local function replace_keycodes(str)
				return vim.api.nvim_replace_termcodes(str, true, true, true)
			end

			function _G.tab_binding()
				if require("cmp").visible() then
					return replace_keycodes("<C-n>")
				elseif require("luasnip").expand_or_jumpable() then
					return replace_keycodes("<Plug>(luasnip-expand-or-jump)")
				else
					return replace_keycodes("<Plug>(Tabout)")
				end
			end

			function _G.s_tab_binding()
				if require("cmp").visible() then
					return replace_keycodes("<C-p>")
				elseif require("luasnip").jumpable(-1) then
					return replace_keycodes("<Plug>(luasnip-jump-prev)")
				else
					return replace_keycodes("<Plug>(TaboutBack)")
				end
			end

			vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_binding()", { expr = true })
			vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_binding()", { expr = true })
		end,
		wants = { "nvim-treesitter" }, -- or require if not used so far
		-- after = { "completion-nvim" }, -- if a completion plugin is using tabs load it before
	},

	{
		"folke/lsp-trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
		cmd = "TroubleToggle",
	},
	{
		"ray-x/lsp_signature.nvim",
		event = "BufRead",
		config = function()
			require("lsp_signature").setup()
		end,
	},
}
