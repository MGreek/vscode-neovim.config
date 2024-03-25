return {
	{
		"ggandor/leap.nvim",
		dependencies = { "tpope/vim-repeat" },
		config = function()
			vim.keymap.set({ "n", "v", "o" }, "L", "<Plug>(leap)")
		end,
	},
}

-- vim: ts=2 sts=2 sw=2 et
