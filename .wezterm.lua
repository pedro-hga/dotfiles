local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Frappe"
config.font = wezterm.font("GeistMono Nerd Font")
config.font_size = 13
config.line_height = 1.2
config.cell_width = 0.9

config.hide_tab_bar_if_only_one_tab = true
config.window_padding = { left = 0, right = 0, top = 6, bottom = 0 }

return config
