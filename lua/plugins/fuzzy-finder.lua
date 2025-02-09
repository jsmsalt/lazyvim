return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {},
    },
    keys = {
      {
        "<leader>fg",
        function()
          Snacks.picker.grep()
        end,
        desc = "File Grep",
      },
      {
        "<leader>gb",
        false,
      },
      {
        "<leader>gb",
        function()
          Snacks.picker.git_branches()
        end,
        desc = "Git Branches",
      },
    },
  },
}
