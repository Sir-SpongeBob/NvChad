local M = {}

M.treesitter = {
  ensure_installed = { "vim", "lua", "html", "css", "javascript", "typescript", "tsx", "c", "markdown", "markdown_inline", "python", "vimdoc", "bash", "awk", "git_config", "git_rebase", "gitattributes", "gitcommit", "gitignore", "ini", "json", "passwd", "xml", "yaml", },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

-- To be switched to use other tool
-- https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim
M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",

    -- custom
    "pyright",
    "bash-language-server",
    "powershell-editor-services",
    "vim-language-server",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.gitsigns = {
  signs = {
    add = { text = "+" },
    change = { text = '~' },
    delete = { text = '_' },
    topdelete = { text = '‾' },
    changedelete = { text = '~' },
  }
}

return M
