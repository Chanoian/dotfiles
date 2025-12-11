print(">>> WEZTERM CONFIG LOADED <<<")
local wezterm = require("wezterm")

return {
    -- Font
    font = wezterm.font_with_fallback({
        "JetBrainsMono Nerd Font",
    }),
    font_size = 15.0,

    -- GPU acceleration (fastest)
    front_end = "WebGpu",
    max_fps = 120,
    animation_fps = 120,

    -- Window appearance
    window_decorations = "RESIZE",
    window_padding = {
        left = 8,
        right = 8,
        top = 8,
        bottom = 8,
    },

    -- Fix typo: correct spelling is *suppress*
    suppress_missing_glyph_warning = true,

    -- Transparency
    window_background_opacity = 0.95,
    text_background_opacity = 1.0,

    -- Scrollback
    scrollback_lines = 10000,

    -- Colorscheme
    color_scheme = "GruvboxDark",
    enable_tab_bar = true,
    hide_tab_bar_if_only_one_tab = true,
    use_fancy_tab_bar = true,

    -- Keybindings
    keys = {
        { key = "f", mods = "CTRL|CMD", action = wezterm.action.ToggleFullScreen },
    },

    -- Ligatures
    harfbuzz_features = { "calt=1", "clig=1", "liga=1" },
}
