return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha",
        background = {
          light = "latte",
          dark = "mocha",
        },
        integrations = {
          cmp = true,
          treesitter = true,
          neotree = true,
          navic = {
            enabled = true,
            custom_bg = "NONE",
          },
          fidget = true,
          mason = true,
        },
        transparent_background = false,
      })
      vim.cmd.colorscheme("catppuccin")
      vim.o.background = "dark"
    end,
  }
  
