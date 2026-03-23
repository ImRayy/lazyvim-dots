return {
  "stevearc/conform.nvim",
  opts = {
    formatters = {
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
    },
  },
}
