return {
  recommended = function()
    return NikaVim.extras.wants({
      ft = "toml",
      root = "*.toml",
    })
  end,
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      taplo = {},
    },
  },
}
