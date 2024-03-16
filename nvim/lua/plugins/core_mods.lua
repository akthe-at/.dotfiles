return {
  {
    "ThePrimeagen/refactoring.nvim",
    keys = {
      {
        "<leader>rf",
        function()
          require("refactoring").select_refactor({
            show_success_message = true,
          })
        end,
        mode = "v",
        noremap = true,
        silent = true,
        expr = false,
      },
    },
    opts = {},
  },
  {
    "zeioth/garbage-day.nvim",
    dependencies = "neovim/nvim-lspconfig",
    event = { "LazyFile" },
    opts = {},
  },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight-night",
      -- colorscheme = "dracula",
      colorscheme = "rose-pine",
      -- colorscheme = "gruvbox",
    },
  },
  { "willothy/wezterm.nvim", event = { "LazyFile" } },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      inlay_hints = {
        enabled = true,
      },
      codelens = {
        enabled = false,
      },
      servers = {
        clangd = {},
        gopls = {},
        bashls = {},
        r_language_server = {},
        pyright = {
          settings = {
            pyright = {
              -- use ruff instead
              disableOrganizeImports = true,
            },
            -- use ruff only for linting, just use pyright for LSP faetures
            python = {
              analysis = {
                ignore = { "*" },
              },
            },
          },
        },
        ruff_lsp = {},
        sqls = {},
        htmx = {},
        powershell_es = {},
        marksman = {},
        html = { filetypes = { "html", "htmldjango" } },
        rust_analyzer = {},
        tailwindcss = {
          filetypes_exclude = { "markdown" },
          filetypes_include = { "html" },
        },
        lua_ls = {
          settings = {
            Lua = {
              runtime = { version = "LuaJIT" },
              workspace = {
                checkThirdParty = false,
                library = {
                  "${3rd}/luv/library",
                  unpack(vim.api.nvim_get_runtime_file("", true)),
                },
              },
              diagnostics = { disable = { "missing-fields" } },
            },
          },
        },
      },
    },
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      pickers = {
        find_files = {
          find_command = { "rg", "--files", "--hidden", "--glob", "!.git" },
        },
      },
    },
  },
}
