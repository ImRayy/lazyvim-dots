return {
  -- Color highlight
  {
    "NvChad/nvim-colorizer.lua",
    opts = {
      user_default_options = {
        css = true,
        mode = "virtualtext",
        virtualtext = "",
        virtualtext_inline = "before",
        names = false,
      },
      filetypes = {
        "*",
        "!prompt",
        "!popup",
        html = { mode = "foreground" },
        cmp_docs = { always_update = true },
        css = { names = true },
      },
    },
  },

  -- Highlight, list and search todo comments in your projects
  { "folke/todo-comments.nvim", event = "LspAttach", opts = {} },

  -- Incremental LSP renaming based on Neoviml's command-preview feature
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    lazy = true,
    keys = {
      { "<leader>rn", ":IncRename ", mode = "n" },
    },
    config = function()
      require("inc_rename").setup()
    end,
  },
}
