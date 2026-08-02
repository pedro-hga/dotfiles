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
