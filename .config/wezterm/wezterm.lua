local wezterm = require("wezterm")

return {
	-- Font
	font = wezterm.font_with_fallback({
		"JetBrainsMono Nerd Font",
	}),
	font_size = 13.0,

	default_cursor_style = "SteadyBar",
	cursor_blink_rate = 500,

	-- GPU acceleration (fastest)
	front_end = "OpenGL",
	max_fps = 120,
	animation_fps = 120,

	-- Window appearance
	-- window_decorations = "RESIZE",
	window_decorations = "RESIZE|TITLE",

	window_padding = {
		left = 8,
		right = 8,
		top = 16,
		bottom = 8,
	},
	tab_bar_at_bottom = true,
	warn_about_missing_glyphs = false,
	-- Transparency
	window_background_opacity = 0.97,
	text_background_opacity = 1.0,

	-- Scrollback
	scrollback_lines = 10000,

	-- Colorscheme
	-- color_scheme = "GruvboxDark",
	-- color_scheme = "Gruvbox Dark",
	-- color_scheme = "Oceanic-Next",
	-- color_scheme = "Catppuccin Mocha",
	color_scheme = "Kanagawa Dragon (Gogh)",
	-- color_scheme = "Everforest Dark Hard (Gogh)",
	-- color_scheme = "Everforest Dark (Gogh)",
	-- color_scheme = "Tokyo Night",
	keys = {
		{ key = "d", mods = "CMD", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "LeftArrow", mods = "CMD", action = wezterm.action.ActivatePaneDirection("Left") },
		{ key = "RightArrow", mods = "CMD", action = wezterm.action.ActivatePaneDirection("Right") },
	},

	enable_tab_bar = true,
	hide_tab_bar_if_only_one_tab = true,
	use_fancy_tab_bar = true,
}
