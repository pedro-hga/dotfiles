-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- config

-- config.color_scheme = "Solarized Dark (Gogh)"
config.color_scheme = "terafox"

-- config.font = wezterm.font("Iosevka Nerd Font", { weight = "Medium" })
config.font = wezterm.font("Martian Mono Condensed")
config.font_size = 12
config.line_height = 1.25

config.hide_tab_bar_if_only_one_tab = true
-- config.window_decorations = "NONE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
return config
