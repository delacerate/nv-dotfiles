return {
  'michaelrommel/nvim-silicon',
  lazy = true,
  cmd = 'Silicon',
  config = function()
    require('silicon').setup {
      theme = 'Dracula',
      background = '#0E3B43',
      no_line_number = true,
      output = function()
        return './Pictures/screenshot-code/' .. os.date '%Y-%m-%d-%H-%M-%S' .. '_code.png'
      end,
      -- Configuration here, or leave empty to use defaults
      font = 'JetBrainsMono Nerd Font=34;Noto Color Emoji=34',
    }
  end,
}
