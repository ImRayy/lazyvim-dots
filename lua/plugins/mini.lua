return {
  {
    "nvim-mini/mini.splitjoin",
    event = "LspAttach",
    version = "*",
    opts = { mappings = { toggle = "gs" } },
  },

  {
    "nvim-mini/mini.files",
    keys = {
      {
        "<c-n>",
        function()
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "Open mini.files (Directory of Current File)",
      },
      {
        "<leader>fM",
        function()
          require("mini.files").open(vim.uv.cwd(), true)
        end,
        desc = "Open mini.files (cwd)",
      },
    },
  },

  -- Fast and feature-rich surround actions
  {
    "nvim-mini/mini.surround",
    events = { "BufWritePost", "BufReadPost", "InsertLeave" },
    version = "*",
    opts = {
      mappings = {
        add = "gsa", -- Add surrounding in Normal and Visual modes
        delete = "gsd", -- Delete surrounding
        find = "gsf", -- Find surrounding (to the right)
        find_left = "gsF", -- Find surrounding (to the left)
        highlight = "gsh", -- Highlight surrounding
        replace = "gsr", -- Replace surrounding
        update_n_lines = "gsn", -- Update `n_lines`
      },
    },
  },
}
