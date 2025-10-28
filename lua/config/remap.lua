vim.keymap.set('n', '<leader>f', function()
	require("nvim-tree.api").tree.open()
end, { noremap = true, silent = true }
)
vim.keymap.set('n', '<C-e>', function()
    require("nvim-tree.api").tree.toggle()
end, { noremap = true, silent = true }
)
-- vim.keymap.del('', '<F4>')
