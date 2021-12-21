local lspconfig = require("lspconfig")
local coq = require("coq")

lspconfig.jedi_language_server.setup(coq.lsp_ensure_capabilities())
