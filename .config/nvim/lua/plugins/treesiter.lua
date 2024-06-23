-- -- lua/plugins/treesitter.lua

-- return {
--   'nvim-treesitter/nvim-treesitter',
--   run = ':TSUpdate',
--   config = function()
--     local treesitterConfigs = require('nvim-treesitter.configs')
--     treesitterConfigs.setup({
--       ensure_installed = {
--         "c",
--         "go",
--         "lua",
--         "vim",
--         "html",
--         "gomod",
--         "gosum",
--         "query",
--         "gotmpl",
--         "vimdoc",
--         "python",
--         "typescript",
--         "javascript",
--       },
--       sync_install = true,
--       highlight = { enable = true },
--       indent = { enable = true },
--       auto_install = true,
--     })
--   end,
-- }

return {
require("lazy").setup({{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function () 
    local configs = require("nvim-treesitter.configs")

    configs.setup({
        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
      })
  end
}})
}