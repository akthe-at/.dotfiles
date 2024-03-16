return {
  "stevearc/conform.nvim",
  dependencies = { "mason.nvim" },
  cmd = "ConformInfo",
  opts = {
    format = {
      timeout_ms = 3000,
      async = false, -- not recommended to change
      quiet = false, -- not recommended to change
    },
    formatters = {
      injected = { options = { ignore_errors = true } },
      -- custom script for using stylr on R files
      rpretty = {
        inherit = false,
        stdin = false,
        command = "StyleScript",
        args = { "$FILENAME" },
      },
    },
    formatters_by_ft = {
      lua = { "stylua" },
      css = { "prettier" },
      htmldjango = { "djlint" },
      javascript = { "prettier" },
      r = { "rpretty" },
      sh = { "shfmt" },
    },
  },
}
