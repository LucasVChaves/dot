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
config.window_background_opacity = 0.9

-- Font
config.font = wezterm.font("Lilex Nerd Font")
config.font_size = 18

-- ColorScheme
config.color_scheme = 'Gruvbox Dark (Gogh)'

-- Cursor
config.default_cursor_style = "BlinkingBlock"
config.cursor_blink_rate = 750
config.cursor_blink_ease_in = "Constant"
config.cursor_blink_ease_out = "Constant"

-- Return modified config table
return config
