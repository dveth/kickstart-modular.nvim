require('conform').formatters.phpcbf = function()
  return {
    command = 'C:\\Users\\Terry\\AppData\\Roaming\\Composer\\vendor\\bin\\phpcbf',
    prepend_args = { '--standard=WordPress' },
    -- The base args are { "-filename", "$FILENAME" } so the final args will be
    -- { "-i", "2", "-filename", "$FILENAME"
  }
end
