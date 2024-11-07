-- Pull in the wezterm API
local wezterm = require("wezterm")

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

-- Return modified config table
return config
