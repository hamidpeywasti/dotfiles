-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
--config.color_scheme = 'Apprentice (base16)'

config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 12.0

config.enable_tab_bar = false

config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0
}

config.default_prog = {"/usr/bin/zsh"}

-- and finally, return the configuration to wezterm
return config
