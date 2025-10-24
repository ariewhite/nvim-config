vim.g.mapleader = " "
vim.g.localmapleader = "\\"
vim.g.have_nerd_font = true

-- neovide configurations
if vim.g.neovide then
    vim.o.guifont = "Maple Mono:h14"
    vim.g.neovide_scale_factor = 0.9

    local alpha = function()
        return string.format("%x", math.floor(255 * vim.g.transparency or 0.8))
    end

    vim.g.neovide_opacity = 0.9
    vim.g.transparency = 0.95
    vim.g.neovide_background_color = "#ffffff" .. alpha()
    print("some one")

    vim.g.neovide_title_background_color = string.format(
        "%x",
        vim.api.nvim_get_hl(0, {id=vim.api.nvim_get_hl_id_by_name("Normal")}).bg
    )
    vim.g.neovide_title_text_color = "pink"
end
require("config.set")
require("config.lazy")
require("config.remap")
require("config.lsp")
