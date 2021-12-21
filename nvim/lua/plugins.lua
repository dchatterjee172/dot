local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
	vim.cmd("packadd packer.nvim")
end
-- https://github.com/Allaman/nvim/blob/75012a1b8369bdd85b0d0c33dfb1ebd1a51842a9/lua/plugins.lua#L8
function get_config(name)
	return string.format('require("config/%s")', name)
end

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use({
		"Mofiqul/dracula.nvim",
		config = get_config("dracula"),
	})
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = get_config("treesitter"),
	})
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "folke/which-key.nvim", config = get_config("which") })
	use({
		"kyazdani42/nvim-tree.lua",
		config = function()
			require("nvim-tree").setup({})
		end,
	})
	use({
		"ms-jpq/coq_nvim",
		branch = "coq",
		event = "VimEnter",
		config = get_config("coq"),
		as = "coq",
		run = ":set cmdheight=10|COQdeps",
	})
	use({
		"ms-jpq/coq.artifacts",
		branch = "artifacts",
		after = "coq",
	})
	use({
		"neovim/nvim-lspconfig",
		config = get_config("lsp"),
		after = "coq",
	})
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
end)
