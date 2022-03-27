local plugins = {}

vim.list_extend(plugins, require("mb.plugins.core"))
vim.list_extend(plugins, require("mb.plugins.fix"))
vim.list_extend(plugins, require("mb.plugins.lsp"))
vim.list_extend(plugins, require("mb.plugins.objects"))
vim.list_extend(plugins, require("mb.plugins.tools"))

return plugins
