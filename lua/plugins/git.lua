return {
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        { "<leader>gh", group = "Git Hunks", mode = { "n", "x" } },
        { "<leader>gd", group = "Git Diff", mode = { "n", "x" } },
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
