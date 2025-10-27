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
  end,
}
