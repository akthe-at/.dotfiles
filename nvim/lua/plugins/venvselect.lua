return {
  {
    "linux-cultist/venv-selector.nvim",
    ft = { "python", "qmd", "ipynb" },
    opts = {
      keys = {
        {
          "<leader>cv",
          "<cmd>:VenvSelect<cr>",
          desc = "Select VirtualEnv",
        },
        {
          "<leader>cc",
          "<cmd>:VenvSelectCached<cr>",
          desc = "Select Cached VirtualEnv",
        },
      },
    },
  },
}
