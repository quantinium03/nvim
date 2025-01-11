return {
  'boganworld/crackboard.nvim',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    require('crackboard').setup({
      session_key = '979cb0aa21f08f1de54462f3dd12ecce42d0cb1ce1561b6d5c8f81056ca6bf30',
    })
  end,
}
