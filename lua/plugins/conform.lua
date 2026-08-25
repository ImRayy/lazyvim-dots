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
      taplo = {
        command = "taplo",
        -- stylua: ignore
        args = {
          "fmt",
          "--option", "align_entries=true",
          "--option", "align_comments=true",
          "--option", "reorder_keys=true",
          "--option", 'indent_string="  "',
          "--option", "column_width=100",
          "--option", "trailing_newline=true",
          "--option", "array_auto_expand=true",
          "--option", "array_auto_collapse=true",
          "-"
        },
      },
    },

    formatters_by_ft = {
      nix = { "alejandra" },
      sql = { "sql_formatter" },
      toml = { "taplo" },
    },
  },
}
