return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
      sql_formatter = {
        prepend_args = {
          "--config",
          '{"dialect":"postgresql", "expressionWidth": "50", "keywordCase":"lower","dataTypeCase":"upper","functionCase":"upper"}',
        },
      },
      biome = {
        command = "biome",
        args = {
          "check",
          "--formatter-enabled=true",
          "--linter-enabled=true",
          -- "--organize-imports-enabled=true",
          "--write",
          "--unsafe",
          "--no-errors-on-unmatched",
          "$FILENAME",
        },
        stdin = false,
      },
    },

    formatters_by_ft = {
      nix = { "alejandra" },
      sql = { "sql_formatter" },
    },
  },
}
