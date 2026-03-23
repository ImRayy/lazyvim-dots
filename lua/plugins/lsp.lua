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
                expr = '(builtins.getFlake ("git+file://" + toString ./.)).nixosConfigurations.default.options',
              },
              home_manager = {
                expr = '(builtins.getFlake ("git+file://" + toString ./.)).homeConfigurations.ray.options',
              },
            },
          },
        },
      },
    },
  },
}
