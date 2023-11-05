local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(_, bufnr)
	lsp_zero.default_keymaps({buffer = bufnr})
end)

require("mason").setup({})
require("mason-lspconfig").setup({
	handlers = {
		lsp_zero.default_setup,
	},
	ensure_installed = {
		"lua_ls",
		"tsserver",
		"html",
		"cssls",
		"eslint",
		"intelephense",
	},
})

require("lspconfig").lua_ls.setup {}
require("lspconfig").tsserver.setup{}
require("lspconfig").intelephense.setup{}

