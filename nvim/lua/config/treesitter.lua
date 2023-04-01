local o = vim.opt
require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"bash",
		"dockerfile",
		"go",
		"json",
		"lua",
		"python",
		"yaml",
        "javascript",
        "typescript",
        "gitignore",
        "gosum",
        "gomod",
        "git_rebase"
	},
	sync_install = true,
	highlight = {
		enable = true,
	},
})

o.foldmethod = "expr"
o.foldexpr = "nvim_treesitter#foldexpr()"
