return {
  "neovim/nvim-lspconfig",
  opts = {

    servers = {
      nixd = {
        cmd = { "nixd" },
        settings = {
          nixd = {

            nixpkgs = {
              expr = "import <nixpkgs> {}",
            },
            options = {
              nixos = {
                expr = '(builtins.getFlake ("git+file://" + toString ./.)).nixosConfigurations.snowflake.options',
              },
              home_manager = {
                expr = '(builtins.getFlake ("git+file://" + toString ./.)).homeConfigurations.ray.options',
              },
            },
          },
        },
      },
      gopls = {
        cmd = { "gopls" },
        settings = {
          gopls = {
            gofumpt = true,
            codelenses = {
              gc_details = false,
              generate = true,
              regenerate_cgo = true,
              run_govulncheck = true,
              test = true,
              tidy = true,
              upgrade_dependency = true,
              vendor = true,
            },
            hints = {},
            analyses = {
              nilness = true,
              unusedparams = true,
              unusedwrite = true,
              useany = true,
              ST1000 = false,
            },
            usePlaceholders = true,
            completeUnimported = true,
            staticcheck = true,
            directoryFilters = { "-.git", "-.vscode", "-.idea", "-.vscode-test", "-node_modules" },
            semanticTokens = true,
          },
        },
      },
    },
  },
}
