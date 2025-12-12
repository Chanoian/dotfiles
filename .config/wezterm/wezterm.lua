local wezterm = require("wezterm")

return {
    -- Font
    font = wezterm.font_with_fallback({
        "JetBrainsMono Nerd Font",
    }),
    font_size = 13.0,

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

    warn_about_missing_glyphs = false,
    -- Transparency
    window_background_opacity = 0.97,
    text_background_opacity = 1.0,

    -- Scrollback
    scrollback_lines = 10000,

    -- Colorscheme
    -- color_scheme = "GruvboxDark",
    color_scheme = "Kanagawa Dragon (Gogh)",
    --color_scheme = "Tokyo Night",
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
