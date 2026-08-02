-- Generated file. Do not edit directly.

local wezterm = require("wezterm")

-- modules/base.lua

local config = wezterm.config_builder()

config.color_scheme = "Rosé Pine Moon (Gogh)"
config.font = wezterm.font("Lilex Nerd Font")

config.window_background_opacity = 1.0
config.bold_brightens_ansi_colors = true
config.hide_tab_bar_if_only_one_tab = true

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.enable_kitty_keyboard = false
config.send_composed_key_when_left_alt_is_pressed = true


-- modules/machines/s145.lua

config.font_size = 14
config.cell_width = 0.9
config.line_height = 1.25


-- modules/mouse.lua

config.mouse_bindings = {
	{
		event = { Down = { streak = 1, button = "Left" } },
		mods = "NONE",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		event = { Drag = { streak = 1, button = "Left" } },
		mods = "NONE",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		event = { Down = { streak = 1, button = "Left" } },
		mods = "SHIFT",
		action = wezterm.action.SelectTextAtMouseCursor("Cell"),
	},
	{
		event = { Drag = { streak = 1, button = "Left" } },
		mods = "SHIFT",
		action = wezterm.action.ExtendSelectionToMouseCursor("Cell"),
	},
	{
		event = { Down = { streak = 2, button = "Left" } },
		mods = "SHIFT",
		action = wezterm.action.SelectTextAtMouseCursor("Word"),
	},
	{
		event = { Down = { streak = 3, button = "Left" } },
		mods = "SHIFT",
		action = wezterm.action.SelectTextAtMouseCursor("Line"),
	},
}


return config
