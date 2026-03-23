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
}
