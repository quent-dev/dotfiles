-- File Explorer / Tree
return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    actions = {
      open_file = {
        window_picker = {
          enable = false
        },
      },
    },
  },
  config = function(_, opts)
    -- Recommended settings to disable default netwr file explorer
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1
    require("nvim-tree").setup(opts)
  end,
}
