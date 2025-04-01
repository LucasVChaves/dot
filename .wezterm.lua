-- Pull in the wezterm API
local wezterm = require("wezterm")
local mux = wezterm.mux

-- Set fullscreen on startup
wezterm.on('gui-startup', function (cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():maximize()
end)

-- Lua table that hold the configurations
local config = wezterm.config_builder()

-- Window
config.window_decorations = "RESIZE"

-- Background Image
config.window_background_image = wezterm.config_dir .. "/wallpaper.png"
config.window_background_image_hsb = {brightness = 0.35}

-- Font
config.font = wezterm.font("JetBrainsMono NFM")
config.font_size = 20

-- ColorScheme
config.color_scheme = 'Tokyo Night (Gogh)'

-- Cursor
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_rate = 750
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"

-- Clipboard
config.keys = {
    {
        key = 'C',
        mods = 'CTRL',
        action = wezterm.action.CopyTo 'ClipboardAndPrimarySelection',
    },
    {
        key = 'V',
        mods = 'CTRL',
        action = wezterm.action.PasteFrom 'Clipboard',
    },
}

-- Tilling
config.keys = {
    {
        key = '"',
        mods = 'CTRL | SHIFT',
        action = wezterm.action.SplitVertical{domain = 'CurrentPaneDomain'},
    },
    {
        key = '%',
        mods = 'CTRL | SHIFT',
        action = wezterm.action.SplitHorizontal{domain = 'CurrentPaneDomain'},
    },
}

-- Return modified config table
return config
