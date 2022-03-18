-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/mbriggs/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/mbriggs/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/mbriggs/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/mbriggs/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/mbriggs/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.comment\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    config = { "\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip/loaders/from_vscode\frequire\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmd-parser.nvim"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/cmd-parser.nvim",
    url = "https://github.com/winston0410/cmd-parser.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-treesitter"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/cmp-treesitter",
    url = "https://github.com/ray-x/cmp-treesitter"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/opt/dashboard-nvim",
    url = "https://github.com/ChristianChiarulli/dashboard-nvim"
  },
  ["dial.nvim"] = {
    config = { "\27LJ\2\nã\2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Î\1nmap <C-a> <Plug>(dial-increment)\nnmap <C-x> <Plug>(dial-decrement)\nvmap <C-a> <Plug>(dial-increment)\nvmap <C-x> <Plug>(dial-decrement)\nvmap g<C-a> <Plug>(dial-increment-additional)\nvmap g<C-x> <Plug>(dial-decrement-additional)\n  \bcmd\bvim\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/dial.nvim",
    url = "https://github.com/monaqa/dial.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["gitlinker.nvim"] = {
    config = { "\27LJ\2\n‘\1\0\0\a\0\t\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0005\3\3\0006\4\0\0'\6\4\0B\4\2\0029\4\5\4=\4\6\3=\3\b\2B\0\2\1K\0\1\0\topts\1\0\0\20action_callback\20open_in_browser\22gitlinker.actions\1\0\3$add_current_line_on_normal_mode\2\14print_url\1\rmappings\15<leader>gy\nsetup\14gitlinker\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/opt/gitlinker.nvim",
    url = "https://github.com/ruifm/gitlinker.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.gitsigns\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lsp-trouble.nvim"] = {
    commands = { "TroubleToggle" },
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/opt/lsp-trouble.nvim",
    url = "https://github.com/folke/lsp-trouble.nvim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\n;\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\18lsp_signature\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/opt/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  ["lua-dev.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/opt/lua-dev.nvim",
    url = "https://github.com/folke/lua-dev.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.lualine\frequire\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["nlsp-settings.nvim"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/nlsp-settings.nvim",
    url = "https://github.com/tamago324/nlsp-settings.nvim"
  },
  ["null-ls.nvim"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.autopairs\frequire\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bqf"] = {
    config = { "\27LJ\2\nE\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\16auto_enable\2\nsetup\bbqf\frequire\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/nvim-bqf",
    url = "https://github.com/kevinhwang91/nvim-bqf"
  },
  ["nvim-bufdel"] = {
    config = { "\27LJ\2\nP\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\tquit\1\tnext\14alternate\nsetup\vbufdel\frequire\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/nvim-bufdel",
    url = "https://github.com/ojroques/nvim-bufdel"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n`\0\0\3\0\6\0\v6\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\5Ä6\0\3\0'\2\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\18lvim.core.cmp\frequire\bcmp\fbuiltin\tlvim\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\no\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\thtml\1\0\1\nnames\1\bcss\1\0\1\vrgb_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\21lvim.core.notify\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/opt/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.nvimtree\frequire\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.treesitter\frequire\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/opt/nvim-ts-context-commentstring",
    url = "https://github.com/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["octo.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/opt/octo.nvim",
    url = "https://github.com/pwntester/octo.nvim"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["project.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.project\frequire\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/project.nvim",
    url = "https://github.com/ahmedkhalf/project.nvim"
  },
  ["range-highlight.nvim"] = {
    config = { "\27LJ\2\nü\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\29highlight_with_out_range\1\0\31\vcenter\2\6t\2\nretab\2\6s\2\tjoin\2\rsnomagic\2\bsno\2\15subsititue\2\tyank\2\tsort\2\6d\2\tmove\2\vchange\2\vdelete\2\6m\2\vsmagic\2\6<\2\asm\2\tcopy\2\6>\2\ace\2\6j\2\6y\2\ari\2\nright\2\aco\2\ale\2\tleft\2\bsor\2\bret\2\6c\2\1\0\1\14highlight\vVisual\nsetup\20range-highlight\frequire\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/range-highlight.nvim",
    url = "https://github.com/winston0410/range-highlight.nvim"
  },
  ["reword.vim"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/reword.vim",
    url = "https://github.com/lambdalisue/reword.vim"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  ["sort.nvim"] = {
    config = { "\27LJ\2\n\\\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\15delimiters\1\0\0\1\a\0\0\6,\6|\6;\6:\6s\6t\nsetup\tsort\frequire\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/sort.nvim",
    url = "https://github.com/sQVe/sort.nvim"
  },
  ["starlite-nvim"] = {
    config = { "\27LJ\2\n«\2\0\0\a\0\16\0\0276\0\0\0009\0\1\0009\1\2\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\0019\1\2\0'\3\3\0'\4\a\0'\5\b\0005\6\t\0B\1\5\0019\1\2\0'\3\3\0'\4\n\0'\5\v\0005\6\f\0B\1\5\0019\1\2\0'\3\3\0'\4\r\0'\5\14\0005\6\15\0B\1\5\1K\0\1\0\1\0\1\vsilent\2&:lua require('starlite').g_hash()\ag#\1\0\1\vsilent\2$:lua require('starlite').hash()\6#\1\0\1\vsilent\2&:lua require('starlite').g_star()\ag*\1\0\1\vsilent\2$:lua require('starlite').star()\6*\6n\20nvim_set_keymap\bapi\bvim\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/starlite-nvim",
    url = "https://github.com/ironhouzi/starlite-nvim"
  },
  ["structlog.nvim"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/structlog.nvim",
    url = "https://github.com/Tastyep/structlog.nvim"
  },
  ["suda.vim"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/suda.vim",
    url = "https://github.com/lambdalisue/suda.vim"
  },
  ["tabout.nvim"] = {
    config = { "\27LJ\2\nF\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim‘\1\0\0\3\1\b\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0'\2\3\0D\0\2\0X\0\14Ä6\0\0\0'\2\4\0B\0\2\0029\0\5\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0'\2\6\0D\0\2\0X\0\3Ä-\0\0\0'\2\a\0D\0\2\0K\0\1\0\0¿\19<Plug>(Tabout)#<Plug>(luasnip-expand-or-jump)\23expand_or_jumpable\fluasnip\n<C-n>\fvisible\bcmp\frequireÕ\1\0\0\3\1\b\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0'\2\3\0D\0\2\0X\0\15Ä6\0\0\0'\2\4\0B\0\2\0029\0\5\0)\2ˇˇB\0\2\2\15\0\0\0X\1\4Ä-\0\0\0'\2\6\0D\0\2\0X\0\3Ä-\0\0\0'\2\a\0D\0\2\0K\0\1\0\0¿\23<Plug>(TaboutBack)\30<Plug>(luasnip-jump-prev)\rjumpable\fluasnip\n<C-p>\fvisible\bcmp\frequire‡\4\1\0\a\0\29\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\b\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\0035\4\n\0>\4\a\3=\3\v\0024\3\0\0=\3\f\2B\0\2\0013\0\r\0006\1\14\0003\2\16\0=\2\15\0016\1\14\0003\2\18\0=\2\17\0016\1\19\0009\1\20\0019\1\21\1'\3\22\0'\4\23\0'\5\24\0005\6\25\0B\1\5\0016\1\19\0009\1\20\0019\1\21\1'\3\22\0'\4\26\0'\5\27\0005\6\28\0B\1\5\0012\0\0ÄK\0\1\0\1\0\1\texpr\2\26v:lua.s_tab_binding()\f<S-Tab>\1\0\1\texpr\2\24v:lua.tab_binding()\n<Tab>\6i\20nvim_set_keymap\bapi\bvim\0\18s_tab_binding\0\16tab_binding\a_G\0\fexclude\ftabouts\1\0\2\nclose\bend\topen\ado\1\0\2\nclose\6}\topen\6{\1\0\2\nclose\6]\topen\6[\1\0\2\nclose\6)\topen\6(\1\0\2\nclose\6`\topen\6`\1\0\2\nclose\6\"\topen\6\"\1\0\2\nclose\6'\topen\6'\1\0\a\15completion\2\21ignore_beginning\2\21enable_backwards\2\21act_as_shift_tab\1\15act_as_tab\2\21backwards_tabkey\5\vtabkey\5\nsetup\vtabout\frequire\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/tabout.nvim",
    url = "https://github.com/abecodes/tabout.nvim",
    wants = { "nvim-treesitter" }
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.telescope\frequire\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "require'todo-comments'.setup{}" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.terminal\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["tslime.vim"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/tslime.vim",
    url = "https://github.com/jgdavey/tslime.vim"
  },
  ["vim-afterimage"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-afterimage",
    url = "https://github.com/tpope/vim-afterimage"
  },
  ["vim-apathy"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-apathy",
    url = "https://github.com/tpope/vim-apathy"
  },
  ["vim-bracketed-paste"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-bracketed-paste",
    url = "https://github.com/ConradIrwin/vim-bracketed-paste"
  },
  ["vim-gtfo"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-gtfo",
    url = "https://github.com/justinmk/vim-gtfo"
  },
  ["vim-highlightedyank"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-highlightedyank",
    url = "https://github.com/machakann/vim-highlightedyank"
  },
  ["vim-jdaddy"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-jdaddy",
    url = "https://github.com/tpope/vim-jdaddy"
  },
  ["vim-matchup"] = {
    config = { "\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\fmatchup\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-matchup",
    url = "https://github.com/andymass/vim-matchup"
  },
  ["vim-niceblock"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-niceblock",
    url = "https://github.com/kana/vim-niceblock"
  },
  ["vim-protocol"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-protocol",
    url = "https://github.com/lambdalisue/vim-protocol"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-searchindex"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-searchindex",
    url = "https://github.com/google/vim-searchindex"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-test"] = {
    config = { "vim.g['test#strategy'] = 'vimux'" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-test",
    url = "https://github.com/janko/vim-test"
  },
  ["vim-textobj-anyblock"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-textobj-anyblock",
    url = "https://github.com/rhysd/vim-textobj-anyblock"
  },
  ["vim-textobj-comment"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-textobj-comment",
    url = "https://github.com/glts/vim-textobj-comment"
  },
  ["vim-textobj-entire"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-textobj-entire",
    url = "https://github.com/kana/vim-textobj-entire"
  },
  ["vim-textobj-user"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-textobj-user",
    url = "https://github.com/kana/vim-textobj-user"
  },
  ["vim-textobj-variable-segment"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-textobj-variable-segment",
    url = "https://github.com/Julian/vim-textobj-variable-segment"
  },
  ["vim-tmux-navigator"] = {
    config = { "\27LJ\2\ng\0\0\2\0\4\0\a6\0\0\0009\0\1\0)\1\1\0=\1\2\0)\1\1\0=\1\3\0K\0\1\0'tmux_navigator_disable_when_zoomed\31tmux_navigator_no_mappings\6g\bvim\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vim-unimpaired",
    url = "https://github.com/tpope/vim-unimpaired"
  },
  ["vim-wordmotion"] = {
    loaded = true,
    needs_bufread = false,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/opt/vim-wordmotion",
    url = "https://github.com/chaoren/vim-wordmotion"
  },
  vimux = {
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/vimux",
    url = "https://github.com/preservim/vimux"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.which-key\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["winshift.nvim"] = {
    config = { "\27LJ\2\n˙\2\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\25window_picker_ignore\fbufname\1\2\0\0\23.*foo/bar/baz\\.qux\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\0\1\2\0\0\rNvimTree\23moving_win_options\1\0\4\16colorcolumn\5\17cursorcolumn\1\twrap\1\15cursorline\1\1\0\3\24window_picker_chars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\21focused_hl_group\vVisual\25highlight_moving_win\2\nsetup\rwinshift\frequire\0" },
    loaded = true,
    path = "/Users/mbriggs/.local/share/lunarvim/site/pack/packer/start/winshift.nvim",
    url = "https://github.com/sindrets/winshift.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^lua%-dev"] = "lua-dev.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: vim-wordmotion
time([[Setup for vim-wordmotion]], true)
vim.g.wordmotion_prefix = '<space>'
time([[Setup for vim-wordmotion]], false)
time([[packadd for vim-wordmotion]], true)
vim.cmd [[packadd vim-wordmotion]]
time([[packadd for vim-wordmotion]], false)
-- Config for: nvim-bufdel
time([[Config for nvim-bufdel]], true)
try_loadstring("\27LJ\2\nP\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\tquit\1\tnext\14alternate\nsetup\vbufdel\frequire\0", "config", "nvim-bufdel")
time([[Config for nvim-bufdel]], false)
-- Config for: winshift.nvim
time([[Config for winshift.nvim]], true)
try_loadstring("\27LJ\2\n˙\2\0\0\5\0\14\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\3=\3\r\2B\0\2\1K\0\1\0\25window_picker_ignore\fbufname\1\2\0\0\23.*foo/bar/baz\\.qux\fbuftype\1\3\0\0\rterminal\rquickfix\rfiletype\1\0\0\1\2\0\0\rNvimTree\23moving_win_options\1\0\4\16colorcolumn\5\17cursorcolumn\1\twrap\1\15cursorline\1\1\0\3\24window_picker_chars)ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890\21focused_hl_group\vVisual\25highlight_moving_win\2\nsetup\rwinshift\frequire\0", "config", "winshift.nvim")
time([[Config for winshift.nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n`\0\0\3\0\6\0\v6\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\5Ä6\0\3\0'\2\4\0B\0\2\0029\0\5\0B\0\1\1K\0\1\0\nsetup\18lvim.core.cmp\frequire\bcmp\fbuiltin\tlvim\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: tabout.nvim
time([[Config for tabout.nvim]], true)
try_loadstring("\27LJ\2\nF\0\1\a\0\3\0\b6\1\0\0009\1\1\0019\1\2\1\18\3\0\0+\4\2\0+\5\2\0+\6\2\0D\1\5\0\27nvim_replace_termcodes\bapi\bvim‘\1\0\0\3\1\b\0\0266\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0'\2\3\0D\0\2\0X\0\14Ä6\0\0\0'\2\4\0B\0\2\0029\0\5\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0'\2\6\0D\0\2\0X\0\3Ä-\0\0\0'\2\a\0D\0\2\0K\0\1\0\0¿\19<Plug>(Tabout)#<Plug>(luasnip-expand-or-jump)\23expand_or_jumpable\fluasnip\n<C-n>\fvisible\bcmp\frequireÕ\1\0\0\3\1\b\0\0276\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\2\15\0\0\0X\1\4Ä-\0\0\0'\2\3\0D\0\2\0X\0\15Ä6\0\0\0'\2\4\0B\0\2\0029\0\5\0)\2ˇˇB\0\2\2\15\0\0\0X\1\4Ä-\0\0\0'\2\6\0D\0\2\0X\0\3Ä-\0\0\0'\2\a\0D\0\2\0K\0\1\0\0¿\23<Plug>(TaboutBack)\30<Plug>(luasnip-jump-prev)\rjumpable\fluasnip\n<C-p>\fvisible\bcmp\frequire‡\4\1\0\a\0\29\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0004\3\b\0005\4\4\0>\4\1\0035\4\5\0>\4\2\0035\4\6\0>\4\3\0035\4\a\0>\4\4\0035\4\b\0>\4\5\0035\4\t\0>\4\6\0035\4\n\0>\4\a\3=\3\v\0024\3\0\0=\3\f\2B\0\2\0013\0\r\0006\1\14\0003\2\16\0=\2\15\0016\1\14\0003\2\18\0=\2\17\0016\1\19\0009\1\20\0019\1\21\1'\3\22\0'\4\23\0'\5\24\0005\6\25\0B\1\5\0016\1\19\0009\1\20\0019\1\21\1'\3\22\0'\4\26\0'\5\27\0005\6\28\0B\1\5\0012\0\0ÄK\0\1\0\1\0\1\texpr\2\26v:lua.s_tab_binding()\f<S-Tab>\1\0\1\texpr\2\24v:lua.tab_binding()\n<Tab>\6i\20nvim_set_keymap\bapi\bvim\0\18s_tab_binding\0\16tab_binding\a_G\0\fexclude\ftabouts\1\0\2\nclose\bend\topen\ado\1\0\2\nclose\6}\topen\6{\1\0\2\nclose\6]\topen\6[\1\0\2\nclose\6)\topen\6(\1\0\2\nclose\6`\topen\6`\1\0\2\nclose\6\"\topen\6\"\1\0\2\nclose\6'\topen\6'\1\0\a\15completion\2\21ignore_beginning\2\21enable_backwards\2\21act_as_shift_tab\1\15act_as_tab\2\21backwards_tabkey\5\vtabkey\5\nsetup\vtabout\frequire\0", "config", "tabout.nvim")
time([[Config for tabout.nvim]], false)
-- Config for: nvim-colorizer.lua
time([[Config for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\no\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\thtml\1\0\1\nnames\1\bcss\1\0\1\vrgb_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0", "config", "nvim-colorizer.lua")
time([[Config for nvim-colorizer.lua]], false)
-- Config for: project.nvim
time([[Config for project.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.project\frequire\0", "config", "project.nvim")
time([[Config for project.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: range-highlight.nvim
time([[Config for range-highlight.nvim]], true)
try_loadstring("\27LJ\2\nü\2\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\29highlight_with_out_range\1\0\31\vcenter\2\6t\2\nretab\2\6s\2\tjoin\2\rsnomagic\2\bsno\2\15subsititue\2\tyank\2\tsort\2\6d\2\tmove\2\vchange\2\vdelete\2\6m\2\vsmagic\2\6<\2\asm\2\tcopy\2\6>\2\ace\2\6j\2\6y\2\ari\2\nright\2\aco\2\ale\2\tleft\2\bsor\2\bret\2\6c\2\1\0\1\14highlight\vVisual\nsetup\20range-highlight\frequire\0", "config", "range-highlight.nvim")
time([[Config for range-highlight.nvim]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
require'todo-comments'.setup{}
time([[Config for todo-comments.nvim]], false)
-- Config for: vim-tmux-navigator
time([[Config for vim-tmux-navigator]], true)
try_loadstring("\27LJ\2\ng\0\0\2\0\4\0\a6\0\0\0009\0\1\0)\1\1\0=\1\2\0)\1\1\0=\1\3\0K\0\1\0'tmux_navigator_disable_when_zoomed\31tmux_navigator_no_mappings\6g\bvim\0", "config", "vim-tmux-navigator")
time([[Config for vim-tmux-navigator]], false)
-- Config for: dial.nvim
time([[Config for dial.nvim]], true)
try_loadstring("\27LJ\2\nã\2\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0Î\1nmap <C-a> <Plug>(dial-increment)\nnmap <C-x> <Plug>(dial-decrement)\nvmap <C-a> <Plug>(dial-increment)\nvmap <C-x> <Plug>(dial-decrement)\nvmap g<C-a> <Plug>(dial-increment-additional)\nvmap g<C-x> <Plug>(dial-decrement-additional)\n  \bcmd\bvim\0", "config", "dial.nvim")
time([[Config for dial.nvim]], false)
-- Config for: LuaSnip
time([[Config for LuaSnip]], true)
try_loadstring("\27LJ\2\nM\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14lazy_load luasnip/loaders/from_vscode\frequire\0", "config", "LuaSnip")
time([[Config for LuaSnip]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\24lvim.core.autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: sort.nvim
time([[Config for sort.nvim]], true)
try_loadstring("\27LJ\2\n\\\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\15delimiters\1\0\0\1\a\0\0\6,\6|\6;\6:\6s\6t\nsetup\tsort\frequire\0", "config", "sort.nvim")
time([[Config for sort.nvim]], false)
-- Config for: nvim-bqf
time([[Config for nvim-bqf]], true)
try_loadstring("\27LJ\2\nE\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\16auto_enable\2\nsetup\bbqf\frequire\0", "config", "nvim-bqf")
time([[Config for nvim-bqf]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\23lvim.core.nvimtree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\22lvim.core.lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: starlite-nvim
time([[Config for starlite-nvim]], true)
try_loadstring("\27LJ\2\n«\2\0\0\a\0\16\0\0276\0\0\0009\0\1\0009\1\2\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\0019\1\2\0'\3\3\0'\4\a\0'\5\b\0005\6\t\0B\1\5\0019\1\2\0'\3\3\0'\4\n\0'\5\v\0005\6\f\0B\1\5\0019\1\2\0'\3\3\0'\4\r\0'\5\14\0005\6\15\0B\1\5\1K\0\1\0\1\0\1\vsilent\2&:lua require('starlite').g_hash()\ag#\1\0\1\vsilent\2$:lua require('starlite').hash()\6#\1\0\1\vsilent\2&:lua require('starlite').g_star()\ag*\1\0\1\vsilent\2$:lua require('starlite').star()\6*\6n\20nvim_set_keymap\bapi\bvim\0", "config", "starlite-nvim")
time([[Config for starlite-nvim]], false)
-- Config for: vim-test
time([[Config for vim-test]], true)
vim.g['test#strategy'] = 'vimux'
time([[Config for vim-test]], false)
-- Config for: vim-matchup
time([[Config for vim-matchup]], true)
try_loadstring("\27LJ\2\ng\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\fmatchup\1\0\0\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0", "config", "vim-matchup")
time([[Config for vim-matchup]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\25lvim.core.treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TroubleToggle lua require("packer.load")({'lsp-trouble.nvim'}, { cmd = "TroubleToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead * ++once lua require("packer.load")({'Comment.nvim', 'octo.nvim', 'gitsigns.nvim', 'lsp_signature.nvim', 'gitlinker.nvim', 'nvim-notify'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au BufWinEnter * ++once lua require("packer.load")({'bufferline.nvim', 'dashboard-nvim', 'which-key.nvim', 'toggleterm.nvim'}, { event = "BufWinEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'nvim-ts-context-commentstring'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
