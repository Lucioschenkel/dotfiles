local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.font_size = 18
config.color_scheme = 'Sex Colors (terminal.sexy)'
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

return config
