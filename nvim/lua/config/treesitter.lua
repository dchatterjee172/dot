require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"bash",
		"dockerfile",
		"json",
		"lua",
		"python",
		"yaml",
	},
	sync_install = true,
	highlight = {
		enable = true,
	},
})