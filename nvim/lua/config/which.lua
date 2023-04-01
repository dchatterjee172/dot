local wk = require("which-key")
default_options = { noremap = true }

wk.register({
	f = {
		name = "file",
		f = { "<cmd>Telescope find_files<cr>", "Find File" },
		g = { "<cmd>Telescope live_grep<cr>", "Search By Text" },
		r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File" },
		p = { "<cmd>NvimTreeToggle<cr>", "Toogle Tree" },
		t = { "<cmd>NvimTreeFindFile<cr>", "Find in Tree" },
	},
	l = {
		name = "lsp",
		d = { "<cmd>lua vim.lsp.buf.definition()<cr>", "Go to definition" },
		r = { "<cmd>lua vim.lsp.buf.references()<cr>", "References" },
		f = { "<cmd>lua vim.lsp.buf.formatting()<cr>", "Format" },
	},
}, { prefix = "<leader>", mode = "n", default_options })
