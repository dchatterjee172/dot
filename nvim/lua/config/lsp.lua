local lspconfig = require("lspconfig")
local coq = require("coq")

lspconfig.jedi_language_server.setup(coq.lsp_ensure_capabilities({ documentFormatting = false }))
lspconfig.efm.setup({
	init_options = { documentFormatting = true },
	settings = {
		rootMarkers = { ".git/" },
		languages = {
			python = {
				{ formatCommand = "black --quiet -", formatStdin = true },
			},
		},
	},
})
