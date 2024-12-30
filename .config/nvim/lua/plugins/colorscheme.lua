return {
    -- add tokyonight
    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {
        style = "night",
      },
    },

    -- Configure LazyVim to load tokyonight
    {
      "LazyVim/LazyVim",
      opts = {
        colorscheme = "tokyonight",
      },
    },
  }
