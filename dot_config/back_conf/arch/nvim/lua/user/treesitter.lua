local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
	return
end

configs.setup({
	ensure_installed = "all", -- one of "all" or a list of languages
  ignore_install = { "phpdoc" }, -- List of parsers to ignore installing
  -- ^ NOTE:M1_mac won't allow an upstream dependency of phpdoc -- hence my 'ignoring'/'excluding' it -- can be (likely) renabled at some point
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { "css" }, -- list of language that will be disabled
	},
	autopairs = {
		enable = true,
	},
	indent = { enable = true, disable = { "python", "css" } },
})
