local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.color_scheme = "Nord (Gogh)"
config.font = wezterm.font("Iosevka Nerd Font Mono", { weight = "Medium" })
config.font_size = 14
config.cell_width = 1.05

config.hide_tab_bar_if_only_one_tab = true
config.window_padding = { left = 0, right = 0, top = 6, bottom = 0 }

wezterm.on("user-var-changed", function(window, pane, name, value)
	local overrides = window:get_config_overrides() or {}
	if name == "ZEN_MODE" then
		local incremental = value:find("+")
		local number_value = tonumber(value)
		if incremental ~= nil then
			while number_value > 0 do
				window:perform_action(wezterm.action.IncreaseFontSize, pane)
				number_value = number_value - 1
			end
			overrides.enable_tab_bar = false
		elseif number_value < 0 then
			window:perform_action(wezterm.action.ResetFontSize, pane)
			overrides.font_size = nil
			overrides.enable_tab_bar = true
		else
			overrides.font_size = number_value
			overrides.enable_tab_bar = false
		end
	end
	window:set_config_overrides(overrides)
end)

return config
