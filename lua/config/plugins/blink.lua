-- lua/config/plugins/blink.lua

return{
{
  'saghen/blink.cmp',
  dependencies = { 'rafamadriz/friendly-snippets' },

  version = 'v1.7.0',

  opts = {
    keymap = { preset = 'super-tab' },
    appearance = {
      nerd_font_variant = 'mono'
    },
    completion = { documentation = { auto_show = false } },
    --sources = {
    --  default = { 'lsp', 'path', 'snippets', 'buffer' },
    --},
    fuzzy = {
        implementation = "prefer_rust",
        prebuilt_binaries = {
            download = true,
            force_version = 'v1.7.0',
        }
    }
  },
--  opts_extend = { "sources.default" }
},

}

