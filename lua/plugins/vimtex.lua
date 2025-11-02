return {
  'lervag/vimtex',
  lazy = false, -- we don't want to lazy load VimTeX
  -- tag = "v2.15", -- uncomment to pin to a specific release
  init = function()
    -- VimTeX configuration goes here, e.g.
    vim.g.loaded_netrw = true
    vim.g.loaded_netrwPlugin = true
    vim.g.vimtex_complete_enabled = true
    vim.g.vimtex_complete_close_braces = true
    vim.g.vimtex_view_method = 'sioyek'
    vim.g.vimtex_compiler_method = 'latexmk'
    vim.g.vimtex_compiler_latexmk = {
      options = {
        '-xelatex',
        '-verbose',
        '-file-line-error',
        '-synctex=1',
        '-interaction=nonstopmode',
      },
    }
    vim.g.vimtex_parser_bib_backend = 'lua'
    vim.g.vimtex_quickfix_ignore_filters = {
      'You have requested package',
      'Underfull',
      'Overfull',
    }
    -- vim.g.vimtex_fold_enabled = true
    vim.g.vimtex_quickfix_open_on_warning = false
  end,
}
