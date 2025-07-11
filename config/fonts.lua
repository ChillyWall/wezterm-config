local wezterm = require('wezterm')
local platform = require('utils.platform')

-- local font = 'Maple Mono SC NF'

return {
  font = wezterm.font_with_fallback({
    {
      family = 'FiraCode Nerd Font',
      weight = 'Medium',
    },
    'Noto Sans Mono CJK SC',
    ---'HYZiKuTangSongKeBenLiKai',
  }),

  font_size = platform.is_mac and 12 or 10,

  --ref: https://wezfurlong.org/wezterm/config/lua/config/freetype_pcf_long_family_names.html#why-doesnt-wezterm-use-the-distro-freetype-or-match-its-configuration
  freetype_load_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
  freetype_render_target = 'Normal', ---@type 'Normal'|'Light'|'Mono'|'HorizontalLcd'
}
