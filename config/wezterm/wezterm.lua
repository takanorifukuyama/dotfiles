local wezterm = require 'wezterm'

wezterm.on('update-right-status', function(window, pane)
  local date = wezterm.strftime '%a %b %-d %H: %M '

  local bat = ' '
  for _, b in ipairs(wezterm.battery_info()) do
    bat = '🔋 ' .. string.format('%.0f%%', b.state_of_charge * 100)
  end

  window:set_right_status(wezterm.format {
      { Text = bat .. '   ' .. date },
    })
end)

wezterm.on(
    "toggle-opacity",
    function(window, pane)
        local overrides = window:get_config_overrides() or {}
        if not overrides.window_background_opacity then
            overrides.window_background_opacity = 0.6
        else
            overrides.window_background_opacity = nil
        end
        window:set_config_overrides(overrides)
    end
)

return {
  default_cursor_style = 'BlinkingBar',
  font = wezterm.font('Source Code Pro', { weight = 'Medium' }),
  -- window_background_opacity = 1,
  font_size = 12,
  keys = {
    { key = 'd', mods = 'CMD', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { key = 'D', mods = 'CMD', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },

    {key = "RightArrow", mods = "ALT", action = wezterm.action {ActivatePaneDirection = "Right"}},
    {key = "LeftArrow", mods = "ALT", action = wezterm.action {ActivatePaneDirection = "Left"}},
    {key = "UpArrow", mods = "ALT", action = wezterm.action {ActivatePaneDirection = "Up"}},
    {key = "DownArrow", mods = "ALT", action = wezterm.action {ActivatePaneDirection = "Down"}},

    {key = "u", mods = "CMD", action = wezterm.action {EmitEvent = "toggle-opacity"}},
  }
}
