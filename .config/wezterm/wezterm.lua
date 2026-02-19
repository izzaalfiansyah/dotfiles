local wezterm = require("wezterm")

local config = wezterm.config_builder()
local scheme = "Catppuccin Mocha"
local tabline = wezterm.plugin.require("https://github.com/michaelbrusegard/tabline.wez")

config.color_scheme = scheme

config.font_size = 13
config.font = wezterm.font_with_fallback({
	{ family = "Iosevka Term", weight = "DemiBold" },
	{ family = "JetBrainsMonoNL Nerd Font Mono", weight = "DemiBold" },
	{ family = "Hack Nerd Font", weight = "DemiBold" },
	{ family = "Fira Code", weight = "DemiBold" },
})

config.window_decorations = "RESIZE"
config.default_cwd = wezterm.home_dir

config.window_background_opacity = 0.75
config.macos_window_background_blur = 50
config.tab_bar_at_bottom = true

tabline.setup({
	options = {
		icons_enabled = true,
		theme = scheme,
		tabs_enabled = true,
		theme_overrides = {},
		section_separators = {
			left = wezterm.nerdfonts.pl_left_hard_divider,
			right = wezterm.nerdfonts.pl_right_hard_divider,
		},
		component_separators = {
			left = wezterm.nerdfonts.pl_left_soft_divider,
			right = wezterm.nerdfonts.pl_right_soft_divider,
		},
		tab_separators = {
			left = wezterm.nerdfonts.pl_left_hard_divider,
			right = wezterm.nerdfonts.pl_right_hard_divider,
		},
	},
	sections = {
		tabline_a = { "window" },
		tabline_b = { "workspace" },
		tabline_c = { " " },
		tab_active = {
			"index",
			{ "process", padding = { left = 0, right = 1 } },
			"|",
			"cwd",
		},
		tab_inactive = {
			"index",
			{ "cwd", padding = { left = 0, right = 1 } },
		},
		tabline_x = { "ram", "cpu" },
		tabline_y = { "datetime", "battery" },
		tabline_z = { "domain" },
	},
	extensions = {},
})

tabline.apply_to_config(config)

config.window_padding = {
	left = 6,
	right = 6,
	top = 6,
	bottom = 3,
}

config.mouse_bindings = {
	{
		event = { Up = { streak = 1, button = "Left" } },
		mods = "CTRL",
		action = wezterm.action.OpenLinkAtMouseCursor,
	},
}

config.keys = {
	-- Split pane horizontal
	{
		key = "|",
		mods = "ALT|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},

	-- Split pane vertical
	{
		key = "_",
		mods = "ALT|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},

	-- Move between panes
	{
		key = "LeftArrow",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "RightArrow",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "UpArrow",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "DownArrow",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},
	{
		key = "h",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "ALT",
		action = wezterm.action.ActivatePaneDirection("Down"),
	},

	-- Resizing panes
	{
		key = "LeftArrow",
		mods = "ALT|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Left", 2 }),
	},
	{
		key = "RightArrow",
		mods = "ALT|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Right", 2 }),
	},
	{
		key = "UpArrow",
		mods = "ALT|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Up", 1 }),
	},
	{
		key = "DownArrow",
		mods = "ALT|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Down", 1 }),
	},
}

return config
