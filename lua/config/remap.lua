vim.keymap.set('n', '<leader>f', function()
	require("nvim-tree.api").tree.open()
end, { noremap = true, silent = true }
)
vim.keymap.set('n', '<C-e>', function()
    require("nvim-tree.api").tree.toggle()
end, { noremap = true, silent = true }
)

local options = {
    noremap = true,
    silent = true
}

local keymap = vim.api.nvim_set_keymap

-- nvim
keymap('n', '<C-l>', '<cmd>Lazy<CR>', options)

-- neotree
-- keymap('n', '<leader>E', "<cmd>Neotree<CR>", options)
-- keymap('n', '<leader>f', "<cmd>Neotree focus<CR>", options)
-- keymap('n', '<leader>eb', "<cmd>Neotree buffers<CR>", options)
-- keymap('n', '<leader>eq', "<cmd>Neotree close<CR>", options)
-- keymap('n', '<leader>ef', "<cmd>Neotree float<CR>", options)
-- keymap('n', '<leader>eg', "<cmd>Neotree git_status<CR>", options)
-- keymap('n', '<leader>ec', "<cmd>Neotree current<CR>", options)
-- keymap('n', '<leader>e<Right>', "<cmd>Neotree right<CR>", options)
-- keymap('n', '<leader>e<Left>', "<cmd>Neotree left<CR>", options)
-- keymap('n', '<leader>el', "<cmd>Neotree right<CR>", options)
-- keymap('n', '<leader>eh', "<cmd>Neotree left<CR>", options)
