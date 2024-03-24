return {
  { "danymat/neogen", config = true },
  {
    "lukas-reineke/headlines.nvim",
    ft = { "markdown", "rmd", "qmd", "ipynb" },
    dependencies = "nvim-treesitter/nvim-treesitter",
    opts = {},
  },
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
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight-night",
      -- colorscheme = "gruvbox-material",
      -- colorscheme = "kanagawa",
      colorscheme = "dracula",
      -- colorscheme = "catppuccin",
      -- colorscheme = "rose-pine",
      -- colorscheme = "miss-dracula",
      -- colorscheme = "gruvbox",
      -- colorscheme = function() end,
    },
  },
  { "willothy/wezterm.nvim", event = { "LazyFile" } },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      inlay_hints = {
        enabled = false,
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
          enabled = false,
          --   settings = {
          --     pyright = {
          --       -- use ruff instead
          --       disableOrganizeImports = true,
          --     },
          --     -- use ruff only for linting, just use pyright for LSP faetures
          --     python = {
          --       analysis = {
          --         ignore = { "*" },
          --       },
          --     },
          --   },
        },
        basedpyright = {
          settings = {
            disableOrganizeImports = true,
            basedpyright = {
              analysis = {
                ignore = { "*" },
              },
              typeCheckingMode = "standard",
            },
          },
        },
        ruff_lsp = {},
        htmx = {},
        powershell_es = {},
        marksman = {},
        html = { filetypes = { "html", "htmldjango" } },
        rust_analyzer = {},
        tailwindcss = {
          filetypes_exclude = { "markdown" },
          filetypes_include = { "html", "htmldjango" },
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
      extensions_list = { "themes", "terms" },
      pickers = {
        find_files = {
          find_command = { "rg", "--files", "--hidden", "--glob", "!.git" },
        },
      },
    },
  },
}
