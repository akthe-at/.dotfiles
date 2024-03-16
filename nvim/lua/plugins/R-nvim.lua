return {
  {
    "R-nvim/cmp-r",
    ft = { "r", "rmd", "qmd", "rout" },
    config = function()
      require("cmp").setup.buffer({
        sources = {
          { name = "copilot" },
          { name = "cmp_r" },
          { name = "luasnip" },
          { name = "path" },
          { name = "buffer" },
        },
      })
    end,
  },
  {
    "R-nvim/R.nvim",
    ft = { "r", "rmd", "qmd", "rout" },
    opts = {
      Rout_more_colors = true,
      R_path = "C:/Users/ARK010/AppData/Local/Programs/R/R-4.3.1/bin/x64",
      open_html = 1,
      open_pdf = 2,
      pdfviewer = "~/scoop/apps/sumatrapdf/current/SumatraPDF.exe",
    },
    config = function()
      vim.g.R_objbr_place = "console,below"
      vim.g.R_objbr_auto_start = 1
      -- vim.g.R_assign = 3
      vim.g.R_nvimpager = "horizontal"
      vim.g.R_hl_term = 1
      vim.g.R_bracketed_paste = 0
      vim.g.R_args = {}
    end,
  },
}
