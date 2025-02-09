return {
  -- NOTE: Git Keymaps
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>gl", group = "Git Log", mode = { "n", "x" } },
        { "<leader>gh", group = "Git Hunks", mode = { "n", "x" } },
        { "<leader>gd", group = "Git Diff", mode = { "n", "x" } },
        { "<leader>gS", group = "Git Stash", mode = { "n", "x" } },
      },
    },
  },

  {
    "folke/snacks.nvim",
    opts = {
      picker = {},
    },
    keys = {
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
      { "<leader>gl", false },
      {
        "<leader>glp",
        function()
          Snacks.picker.git_log()
        end,
        desc = "Git Log Project",
      },
      {
        "<leader>gll",
        function()
          Snacks.picker.git_log_line()
        end,
        desc = "Git Log Line",
      },
      {
        "<leader>glf",
        function()
          Snacks.picker.git_log_file()
        end,
        desc = "Git Log File",
      },
      { "<leader>gS", false },
      {
        "<leader>gSl",
        function()
          Snacks.picker.git_stash()
        end,
        desc = "Git Stash List",
      },
    },
  },

  -- NOTE: GitSigns
  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    keys = {
      { "<leader>ghs", "<cmd>Gitsigns stage_hunk<cr>", desc = "Git Hunk Stage" },
      { "<leader>ghu", "<cmd>Gitsigns undo_stage_hunk<cr>", desc = "Git Hunk Undo Stage" },
      { "<leader>ghr", "<cmd>Gitsigns reset_hunk<cr>", desc = "Git Hunk Reset" },
    },
    opts = {
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "▎" },
        topdelete = { text = "▎" },
        changedelete = { text = "▎" },
      },
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 100,
        virt_text_pos = "eol",
      },
    },
    config = true,
  },

  -- NOTE: Neogit
  {
    "NeogitOrg/neogit",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration
    },
    keys = {
      { "<leader>gs", "<cmd>Neogit kind=split<cr>", desc = "Git Status (Neogit)" },
      { "<leader>gc", "<cmd>Neogit commit<cr>", desc = "Git Commit (Neogit)" },
      { "<leader>gP", "<cmd>Neogit push<cr>", desc = "Git Push (Neogit)" },
      { "<leader>gp", "<cmd>Neogit pull<cr>", desc = "Git Pull (Neogit)" },
      { "<leader>gB", "<cmd>Neogit branch<cr>", desc = "Git Branch (Neogit)" },
      { "<leader>gSs", "<cmd>Neogit stash<cr>", desc = "Git Stash (Neogit)" },
    },
    opts = {
      integrations = {
        diffview = true,
      },
    },
    config = true,
  },

  -- NOTE: DiffView
  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
    keys = {
      { "<leader>gdo", "<cmd>DiffviewOpen<cr>", desc = "Diffview Open" },
      { "<leader>gdh", "<cmd>DiffviewFileHistory<cr>", desc = "Diffview File History" },
      { "<leader>gdc", "<cmd>DiffviewClose<cr>", desc = "Diffview Close" },
    },
    config = true,
  },
}
