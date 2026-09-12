return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    cmd = { "ToggleTerm", "TermExec" },
    keys = {
      { "<leader>ft", "<cmd>ToggleTerm<CR>", desc = "Toggle terminal" },
      { "<leader>fT", "<cmd>ToggleTerm direction=float<CR>", desc = "Toggle floating terminal" },
      { "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", desc = "Toggle horizontal terminal" },
      { "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", desc = "Toggle vertical terminal" },
      { "<c-/>", "<cmd>ToggleTerm<CR>", mode = { "n", "t" }, desc = "Toggle terminal" },
      { "<c-_>", "<cmd>ToggleTerm<CR>", mode = { "n", "t" }, desc = "which_key_ignore" },
    },
    config = function()
      require("toggleterm").setup({
        size = 20,
        open_mapping = false,
        direction = "horizontal",
        shade_terminals = true,
        start_in_insert = true,
        persist_size = true,
        close_on_exit = true,
        shell = vim.o.shell,
      })
    end,
  },
}