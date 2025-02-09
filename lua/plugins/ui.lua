return {
  -- NOTE: Buffer Tabs
  {
    "akinsho/bufferline.nvim",
    enabled = false,
  },

  -- NOTE: Dashboard
  { "folke/snacks.nvim", opts = { dashboard = { enabled = true } } },
  {
    "goolord/alpha-nvim",
    enabled = false,
  },

  -- NOTE: Breadcrumbs
  {
    "Bekaboo/dropbar.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
  },

  -- NOTE: Status line
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
      },
    },
  },
}
