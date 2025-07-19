local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "Catppuccin Macchiato"

config.font = wezterm.font_with_fallback({
	{ family = "JetBrainsMonoNL Nerd Font Mono" },
	{ family = "Hack Nerd Font" },
	{ family = "Fira Code" },
})
config.font_size = 12

config.enable_tab_bar = true
config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.tab_max_width = 30

config.window_decorations = "RESIZE"

config.window_background_opacity = 0.7
config.macos_window_background_blur = 30

local function tab_title(tab_info)
	local title = tab_info.tab_title

	if title and #title > 0 then
		return title
	end

	return tab_info.active_pane.title
end

local SOLID_LEFT_ARROW = wezterm.nerdfonts.pl_right_hard_divider
local SOLID_RIGHT_ARROW = wezterm.nerdfonts.pl_left_hard_divider

wezterm.on("format-tab-title", function(tab, tabs, panes, config, hover, max_width)
	local edge_background = "#1a1b26"
	local background = "#141C24"
	local foreground = "#BC9AF7"

	if tab.is_active then
		background = "#23283B"
		foreground = "#7DCFFF"
	elseif hover then
		background = "#23283B"
		foreground = "#E0AF68"
	end

	local edge_foreground = background

	local title = tab_title(tab)

	title = wezterm.truncate_right(title, max_width - 2)

	return {
		{ Background = { Color = edge_background } },
		{ Foreground = { Color = edge_foreground } },
		{ Text = SOLID_LEFT_ARROW },
		{ Background = { Color = background } },
		{ Foreground = { Color = foreground } },
		{ Text = title },
		{ Background = { Color = edge_background } },
		{ Foreground = { Color = edge_foreground } },
		{ Text = SOLID_RIGHT_ARROW },
	}
end)

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

	-- Resizing panes (need to stop skhd)
	{
		key = "h",
		mods = "ALT|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Left", 2 }),
	},
	{
		key = "l",
		mods = "ALT|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Right", 2 }),
	},
	{
		key = "k",
		mods = "ALT|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Up", 1 }),
	},
	{
		key = "j",
		mods = "ALT|SHIFT",
		action = wezterm.action.AdjustPaneSize({ "Down", 1 }),
	},
}

-- change term using kitty. run command below:
-- tempfile=$(mktemp) \
--   && curl -o $tempfile https://raw.githubusercontent.com/kovidgoyal/kitty/refs/heads/master/terminfo/kitty.terminfo \
--   && tic -x -o ~/.terminfo $tempfile \
--   && rm $tempfile
-- config.term = "xterm-kitty"
-- config.enable_kitty_graphics = true

return config
