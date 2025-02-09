return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      local which_key = require("which-key")

      -- Configuración base de which-key
      which_key.setup({
        -- aquí van tus preferencias personales si las necesitas
      })

      -- Definición de atajos relacionados con Git
      which_key.register({
        g = {
          name = "Git",
          g = {
            name = "Neogit",

            -- Neogit
            s = { "<cmd>Neogit kind=split<cr>", "Status (Neogit)" },
            c = { "<cmd>Neogit commit<cr>", "Commit (Neogit)" },
            p = { "<cmd>Neogit push<cr>", "Push (Neogit)" },

            -- Diffview
            d = {
              name = "Diffview",
              d = { "<cmd>DiffviewOpen<cr>", "Abrir Diff" },
              h = { "<cmd>DiffviewFileHistory<cr>", "Historial de archivos" },
              c = { "<cmd>DiffviewClose<cr>", "Cerrar Diffview" },
            },

            -- Gitsigns
            l = {
              name = "Gitsigns",
              l = { "<cmd>Gitsigns toggle_linehl<cr>", "Toggle Line Highlight" },
              b = { "<cmd>Gitsigns toggle_current_line_blame<cr>", "Toggle Line Blame" },
            },
            n = { "<cmd>Gitsigns next_hunk<cr>", "Siguiente Hunk" },
            N = { "<cmd>Gitsigns prev_hunk<cr>", "Anterior Hunk" },
            a = { "<cmd>Gitsigns stage_hunk<cr>", "Stage Hunk" },
            r = { "<cmd>Gitsigns reset_hunk<cr>", "Reset Hunk" },
            u = { "<cmd>Gitsigns undo_stage_hunk<cr>", "Undo Stage Hunk" },
          },
        },
      }, { prefix = "<leader>" })
    end,
  },

  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    config = function()
      require("gitsigns").setup({
        signs = {
          add = { text = "▎" },
          change = { text = "▎" },
          delete = { text = "契" },
          topdelete = { text = "契" },
          changedelete = { text = "▎" },
        },
        -- Opcional: blame inline en la línea
        current_line_blame = false,
        current_line_blame_opts = {
          delay = 100,
          virt_text_pos = "eol",
        },
      })
    end,
  },

  {
    "TimUntersberger/neogit",
    dependencies = { "nvim-lua/plenary.nvim" },
    cmd = "Neogit",
    config = function()
      require("neogit").setup({
        -- Integración con Diffview
        integrations = {
          diffview = true,
        },
      })
    end,
  },

  {
    "sindrets/diffview.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    -- Se cargarán estos comandos al usarlos
    cmd = { "DiffviewOpen", "DiffviewClose", "DiffviewFileHistory" },
    config = function()
      require("diffview").setup({})
    end,
  },
}
