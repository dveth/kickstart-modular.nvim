return {
  { -- Autoformat
    'stevearc/conform.nvim',
    cmd = { 'ConformInfo' },
    config = function()
      require("conform").setup({
    format_on_save = {
      timeout_ms = 500,
      lsp_format = 'fallback',
    },
    formatters_by_ft = {
      lua = { 'stylua' },
      -- Conform will run multiple formatters sequentially
      go = { 'gofmt' },
      php = { 'phpcs', 'phpcbf' },
      python = { 'isort', 'black' },
      -- You can customize some of the format options for the filetype (:help conform.format)
      -- Conform will run the first available formatter
      javascript = { 'prettierd', 'prettier', stop_after_first = true },
      rust = { 'rustfmt', lsp_format = 'fallback' },
    }})
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
