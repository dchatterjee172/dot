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
				{
					lintCommand = "pylint --output-format text --score no --msg-template {path}:{line}:{column}:{C}:{msg} ${INPUT}",
					lintFormats = { "%f:%l:%c:%t:%m" },
					lintOffsetColumns = 1,
					lintStdin = false,
					lintCategoryMap = {
						I = "H",
						R = "I",
						C = "I",
						W = "W",
						E = "E",
						F = "E",
					},
				},
			},
		},
	},
})
