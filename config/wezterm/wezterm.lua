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

wezterm.on("zoom-in", function(window, pane)
    local overrides = window:get_config_overrides() or {}
    overrides.font_size = (overrides.font_size or 14) + 0.5
    window:set_config_overrides(overrides)
end)

wezterm.on("zoom-out", function(window, pane)
    local overrides = window:get_config_overrides() or {}
    overrides.font_size = (overrides.font_size or 14) - 0.5
    window:set_config_overrides(overrides)
end)

return {
  default_cursor_style = 'BlinkingBar',
  font = wezterm.font('PlemolJP Console NF', { weight = 'Regular' }), -- Light, Regular, Medium, SemiBold, Bold
  -- window_background_opacity = 1,
  font_size = 14,
  audible_bell = "Disabled", -- bellを鳴らさない
  keys = {
    { key = 'd', mods = 'CMD', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
    { key = 'D', mods = 'CMD', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },

    {key = "RightArrow", mods = "ALT", action = wezterm.action {ActivatePaneDirection = "Right"}},
    {key = "LeftArrow", mods = "ALT", action = wezterm.action {ActivatePaneDirection = "Left"}},
    {key = "UpArrow", mods = "ALT", action = wezterm.action {ActivatePaneDirection = "Up"}},
    {key = "DownArrow", mods = "ALT", action = wezterm.action {ActivatePaneDirection = "Down"}},

    {key = "u", mods = "CMD", action = wezterm.action {EmitEvent = "toggle-opacity"}},
    {key = "e", mods = "CMD", action = wezterm.action {EmitEvent = "zoom-out"}},
    {key = "E", mods = "CMD", action = wezterm.action {EmitEvent = "zoom-in"}},
  }
}
