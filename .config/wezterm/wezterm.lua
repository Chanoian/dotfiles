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
	front_end = "WebGpu",
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
	color_scheme = "Oceanic-Next",
	-- color_scheme = "Catppuccin Mocha",
	-- color_scheme = "Kanagawa Dragon (Gogh)",
	-- color_scheme = "Everforest Dark Hard (Gogh)",
	-- color_scheme = "Everforest Dark (Gogh)",
	-- color_scheme = "Tokyo Night",
	enable_tab_bar = true,

	disable_default_key_bindings = false,
	keys = {

		-- macOS copy/paste ONLY with CMD
		{ key = "c", mods = "CMD", action = wezterm.action.CopyTo("Clipboard") },
		{ key = "v", mods = "CMD", action = wezterm.action.PasteFrom("Clipboard") },

		{ key = "t", mods = "CMD", action = wezterm.action.SpawnTab("CurrentPaneDomain") },
		{ key = "n", mods = "CMD", action = wezterm.action.SpawnWindow },
		{ key = "w", mods = "CMD", action = wezterm.action.CloseCurrentTab({ confirm = true }) },
	},

	hide_tab_bar_if_only_one_tab = true,
	use_fancy_tab_bar = true,
}
