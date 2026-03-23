return {
  "nvimdev/lspsaga.nvim",
  event = "LspAttach",
  keys = {
    { "<a-.>", mode = { "n" }, ":Lspsaga ", desc = "Too lazy to type :Lspsaga manually" },
    { "<a-n>", mode = { "n" }, "<cmd>Lspsaga diagnostic_jump_next<cr>", desc = "Jumpt to next diagnostic" },
    { "<a-p>", mode = { "n" }, "<cmd>Lspsaga diagnostic_jump_prev<cr>", desc = "Jumpt to prev diagnostic" },
    { "<leader>ca", mode = { "n" }, "<cmd>Lspsaga code_action<cr>", desc = "Code action" },
  },
  config = function()
    require("lspsaga").setup({
      symbol_in_winbar = {
        enable = false,
      },
      ui = {
        expand = "",
        collapse = "",
        actionfix = "",
        imp_sign = "",
        diagnostic = "🐞",
      },
      lightbulb = {
        enable = true,
        sign = false,
      },
    })
  end,

  dependencies = { "nvim-treesitter/nvim-treesitter" },
}
