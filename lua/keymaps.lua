vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set({ "n", "v" }, "-", '"_')
vim.keymap.set("n", "<c-d>", "<c-d>zvzz")
vim.keymap.set("n", "<c-u>", "<c-u>zvzz")
vim.keymap.set("n", "<c-f>", "<c-f>zvzz")
vim.keymap.set("n", "<c-b>", "<c-b>zvzz")

vim.keymap.set("n", "J", function()
	local save_cursor = vim.fn.getcurpos()
	for _ = 1, math.max(1, vim.v.count) do
		vim.cmd.join()
		vim.fn.setpos(".", save_cursor)
	end
end)

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank({ timeout = 300 })
	end,
})

-- vim: ts=2 sts=2 sw=2 et
