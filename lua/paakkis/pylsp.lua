return {
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = { 'E501' }, -- This is the Error code for line too long.
          maxLineLength = 200, -- This sets how long the line is allowed to be. Also has effect on formatter.
        },
      },
    },
  },
}
