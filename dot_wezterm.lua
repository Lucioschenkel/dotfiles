-- Pull in the wezterm API
local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.font_size = 18
-- config.color_scheme = "Tokyo Night"
config.color_scheme = "Rosé Pine (Gogh)"
config.window_decorations = "RESIZE"
config.enable_tab_bar = false
config.font = wezterm.font("JetBrainsMono Nerd Font Mono")

return config
