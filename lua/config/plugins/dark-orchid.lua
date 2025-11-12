-- lua/config/plugins/dark-orchid.lua

local options = {
  integrations = {
    barbar = {
      enabled = true
    },
    cmp = {
      enabled = false
    },
    dashboard = {
      enabled = false
    },
    gitsigns = {
      enabled = false
    },
    hipatterns = {
      enabled = false
    },
    indentmini = {
      enabled = false
    },
    lazy = {
      enabled = true
    },
    mason = {
      enabled = false
    },
    neotree = {
      enabled = false
    },
    nvim = {
      enabled = true
    },
    telescope = {
      enabled = false
    },
    nvimtree = {
      enabled = true,
    }
  }
}

return {
    "ariewhite/dark-orchid",
    lazy = false,
    priority = 1000,
    config = function ()
        require("dark-orchid").setup(options)
        vim.cmd.colorscheme("dark-orchid")
    end
}
