require('conform').formatters.phpcbf = {
  command = 'C:\\Users\\Terry\\AppData\\Roaming\\Composer\\vendor\\bin\\phpcbf',
  prepend_args = { '--standard=WordPress' },
  -- The base args are { "-filename", "$FILENAME" } so the final args will be
  -- { "-i", "2", "-filename", "$FILENAME" }
}

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = '*',
  callback = function(args)
    require('conform').format { bufnr = args.buf }
  end,
})
