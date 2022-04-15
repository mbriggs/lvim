-- general
lvim.log.level = "warn"
lvim.colorscheme = "onedark"

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

-- Autocommands
lvim.autocommands.custom_groups = {
	{ "BufRead,BufNewFile", "*.gohtml", "set ft=html" },
	{ "BufRead,BufNewFile", ".envrc*", "set ft=bash" },
	{ "BufNewFile,BufRead", "*.go", "setlocal noet ts=4 sw=4 sts=4" },
}

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

lvim.builtin.which_key.mappings = vim.tbl_extend("force", lvim.builtin.which_key.mappings, require("mb.which_key"))

lvim.builtin.dashboard.active = false
lvim.builtin.notify.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0

lvim.builtin.treesitter.ensure_installed = "all"
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

local null = require("mb.null_ls")

require("lvim.lsp.null-ls.formatters").setup(null.formatters)
require("lvim.lsp.null-ls.linters").setup(null.linters)
require("lvim.lsp.null-ls.code_actions").setup(null.code_actions)

lvim.plugins = require("mb.plugins")
