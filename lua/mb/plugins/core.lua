return {
	-- color theme
	"navarasu/onedark.nvim",

	-- unify tmux and nvim split navigation
	{
		"christoomey/vim-tmux-navigator",
		config = function()
			local g = vim.g

			g.tmux_navigator_no_mappings = 1
			g.tmux_navigator_disable_when_zoomed = 1
		end,

		cmd = { "TmuxNavigateLeft", "TmuxNavigateRight", "TmuxNavigateDown", "TmuxNavigateUp" },
	},

	-- do not jump on star
	{
		"ironhouzi/starlite-nvim",
		config = function()
			local a = vim.api

			a.nvim_set_keymap("n", "*", ":lua require('starlite').star()<cr>", { silent = true })
			a.nvim_set_keymap("n", "g*", ":lua require('starlite').g_star()<cr>", { silent = true })
			a.nvim_set_keymap("n", "#", ":lua require('starlite').hash()<cr>", { silent = true })
			a.nvim_set_keymap("n", "g#", ":lua require('starlite').g_hash()<cr>", { silent = true })
		end,
	},

	-- highlight color codes
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
}
