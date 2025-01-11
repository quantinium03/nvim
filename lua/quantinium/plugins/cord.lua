return {
  'vyfor/cord.nvim',
  branch = 'client-server',
  build = ':Cord update',
  opts = {}, -- calls require('cord').setup()
  config = function()
    require('cord').setup()
  end,
}
