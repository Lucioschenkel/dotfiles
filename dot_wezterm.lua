-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = "Tokyo Night"

config.font_size = 18

config.hide_tab_bar_if_only_one_tab = true

config.window_frame = {
	inactive_titlebar_bg = "none",
	active_titlebar_bg = "none",
}

config.window_decorations = "RESIZE|MACOS_FORCE_DISABLE_SHADOW"

-- and finally, return the configuration to wezterm
return config
