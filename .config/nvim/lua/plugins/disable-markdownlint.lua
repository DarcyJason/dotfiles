-- 强制禁用所有 markdownlint 相关功能
return {
  -- 完全禁用 none-ls
  {
    "nvimtools/none-ls.nvim",
    enabled = false,
  },
  
  -- 或者如果你需要 none-ls 的其他功能，使用这个配置
  -- {
  --   "nvimtools/none-ls.nvim",
  --   opts = function(_, opts)
  --     -- 完全重写 sources，排除所有 markdownlint
  --     opts.sources = {}
  --     return opts
  --   end,
  -- },

  -- 禁用 nvim-lint 中的 markdown
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = {},
      },
    },
  },

  -- 禁用 conform.nvim 中的 markdown 格式化
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        markdown = {},
      },
    },
  },
}
