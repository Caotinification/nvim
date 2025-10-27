return {
  'L3MON4D3/LuaSnip',
  -- follow latest release.
  version = 'v2.*', -- Replace <CurrentMajor> by the latest released major (first number of latest release)
  -- install jsregexp (optional!).
  build = 'make install_jsregexp',
  config = function()
    local luasnip = require 'luasnip'
    local stdpath = vim.fn.stdpath 'config'
    local snipkey = '<A-Tab>'
    local asnipkey = '<S-A-Tab>'
    luasnip.config.set_config {
      enable_autosnippets = true,
    }
    require('luasnip.loaders.from_lua').lazy_load { paths = stdpath .. '/snippets' }
    --    vim.keymap.set({ 'i', 's' }, snipkey, function()
    --      if luasnip.expand_or_jumpable() then
    --        return '<Plug>luasnip-expand-or-jump'
    --      end
    --    end, { expr = true, silent = true })
    --    vim.keymap.set({ 'i', 's' }, asnipkey, function()
    --      if luasnip.jumpable(-1) then
    --        return '<Plug>luasnip-jump-prev'
    --      end
    --    end, { expr = true, silent = true })
  end,
}
