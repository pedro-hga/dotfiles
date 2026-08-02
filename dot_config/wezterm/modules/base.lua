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
