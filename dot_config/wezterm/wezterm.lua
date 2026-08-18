local wez = require("wezterm")
local config = wez.config_builder()
local tmux = require("tmux")
local theme = require("rose-pine").moon

--- GENERAL ---
config.front_end = "OpenGL"
config.webgpu_power_preference = "HighPerformance"
config.disable_default_key_bindings = true

--- FONTS ---
---
config.font_size = 14
-- config.line_height = 1.15
config.font = wez.font_with_fallback({
	{
		family = "JetBrains Mono Nerd Font",
		-- family = "MapleMono Normal NF",
		-- harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
	},
	"Noto Color Emoji",
	"Symbols Nerd Font ",
})

--- WINDOW ---
config.enable_scroll_bar = false
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.window_decorations = "NONE"
-- config.window_background_opacity = 0.9

-- config.color_scheme = "Catppuccin Mocha"
-- config.color_scheme = "rose-pine"

-- wez.on("update-status", function(window, pane)
-- 	local tab = window:active_tab()
-- 	local panes = tab:panes()
-- 	local alt_screen_active = false
--
-- 	for i = 1, #panes, 1 do
-- 		local pane = panes[i]
-- 		if pane:is_alt_screen_active() then
-- 			alt_screen_active = true
-- 			break
-- 		end
-- 	end
--
-- 	if alt_screen_active then
-- 		window:set_config_overrides({
-- 			window_padding = {
-- 				left = 0,
-- 				right = 0,
-- 				top = 0,
-- 				bottom = 0,
-- 			},
-- 		})
-- 	else
-- 		window:set_config_overrides({
-- 			window_padding = {
-- 				left = 10,
-- 				right = 10,
-- 				top = 10,
-- 				bottom = 10,
-- 			},
-- 		})
-- 	end
-- end)
config.colors = theme.colors()
config.window_frame = theme.window_frame()
tmux.apply(config)

return config
