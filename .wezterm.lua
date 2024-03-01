-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- config

config.color_scheme = "nord"

config.font = wezterm.font("Iosevka Nerd Font Propo", { weight = "Medium" })
config.font_size = 14.0

config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "NONE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
return config
