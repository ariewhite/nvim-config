return{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = { "cpp", "lua", "c", "vim", "bash", "json", "python" },
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = { enable = true },
    })
    end
}
