return {
  -- NOTE: Disable Snacks Explorer
  { "folke/snacks.nvim", opts = { explorer = { enabled = false } } },

  -- NOTE: Enable OIL as default File Explorer
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      default_file_explorer = true,
      columns = {
        "icon",
        -- "permissions",
        -- "size",
        -- "mtime",
      },
      watch_for_changes = true,
    },
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    -- init = function()
    --   vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    -- end,
  },
}
