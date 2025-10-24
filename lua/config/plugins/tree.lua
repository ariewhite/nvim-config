-- lua/whiteconf/lazy/tree.lua

local function my_on_attach(bufnr)
    local api = require("nvim-tree.api")

    local function opts(desc)
        return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true}
    end

    api.config.mappings.default_on_attach(bufnr)

    vim.keymap.set('n', '<C-e>', api.tree.toggle, opts('Toggle tree'))
    vim.keymap.set('n', '<Left>', api.tree.change_root_to_parent, opts('Up'))
    vim.keymap.set('n', '<Right>', api.tree.change_root_to_node, opts('Down'))
    vim.keymap.set('n', '<leader>f', function()
        if vim.fn.bufname():match 'NvimTree_' then
            vim.cmd.wincmd 'p'
        else
            vim.find_file(true)
        end
    end, opts('Focus to editor')
    )
end

return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {
            on_attach = my_on_attach,
            view = {
                width = 30,
                side = "left",
            },
            renderer = {
                icons = {
                    show = {
                        file = true,
                        folder = true,
                        folder_arrow = true,
                    },
                },
            },
    }
  end,
}