-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- config
-- config.color_scheme = "Nord (Gogh)"
config.color_scheme = "terafox"
-- config.color_scheme = "GruvboxDark"
config.colors = {
	-- background = "#15291E",
	-- background = "#002B36",
	background = "#191D24",
}

-- config.font = wezterm.font("Iosevka Nerd Font", { weight = "Medium" })
-- config.font = wezterm.font("MartianMono NFM", { weight = "Regular", stretch = "Condensed" })
-- config.font = wezterm.font("Iosevka Nerd Font", { weight = "Medium" })
config.font = wezterm.font("MonaspiceNe Nerd Font")
-- config.font = wezterm.font("IBM Plex Mono")
config.font_size = 12
config.line_height = 1.25
config.cell_width = 1

config.hide_tab_bar_if_only_one_tab = true
-- config.window_decorations = "NONE"
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
return config
