local lspconfig = require("lspconfig")
local lspconfig_util = require("lspconfig/util")
local coq = require("coq")
lspconfig.jedi_language_server.setup(coq.lsp_ensure_capabilities({ documentFormatting = false }))
lspconfig.efm.setup({
	init_options = { documentFormatting = true },
	filetypes = { "python" },
	settings = {
		rootMarkers = { ".git" } ,
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
lspconfig.gopls.setup(coq.lsp_ensure_capabilities({
	cmd = { "gopls", "serve" },
	filetypes = { "go", "gomod" },
	root_dir = lspconfig_util.root_pattern("go.work", "go.mod", ".git"),
}))
lspconfig.eslint.setup({
  documentFormatting = true,
  root_dir = lspconfig_util.root_pattern("package.json", ".git")
})
lspconfig.tsserver.setup(coq.lsp_ensure_capabilities({ documentFormatting = false }))
