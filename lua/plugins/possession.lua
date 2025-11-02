return {
  'jedrzejboczar/possession.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  opts = {
    autosave = {
      current = true,
    },
    plugins = {
      dap = false,
      dapui = false,
    },
  },
}
