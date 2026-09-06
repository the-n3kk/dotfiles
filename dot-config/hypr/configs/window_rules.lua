--------------------------------
---- WINDOWS AND WORKSPACES ----
--------------------------------

-- layers
hl.layer_rule({
	name = "blur-launcher",
	blur = true,
	match = { namespace = "launcher" },
})

hl.layer_rule({
	name = "blue-notifications",
	blur = true,
	match = { namespace = "notifications" },
})

hl.layer_rule({
	name = "blur-noalpha-waybar",
	blur = true,
	ignore_alpha = true,
	match = { namespace = "waybar" },
})

hl.layer_rule({
	name = "noctalia",
	match = {
		namespace = "^noctalia-(bar-.+|notification|dock|panel|attached-panel|osd|window-switcher)$",
	},
	no_anim = true,
	ignore_alpha = 0.5,
	blur = true,
	blur_popups = true,
})

hl.window_rule({
	-- Fix some dragging issues with XWayland
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},

	no_focus = true,
})

hl.window_rule({
	name = "poe2-overlay",
	border_size = 0,
	no_anim = true,
	no_shadow = true,
	no_blur = true,
	match = { class = "exiled-exchange-2" },
})

hl.window_rule({
	name = "ghostty-conf",
	float = true,
	size = "1300 1000",
	match = { class = ".*ghostty" },
})

-- start all games on primary monitor
hl.window_rule({
	name = "game-rules",
	content = "game",
	workspace = 1,
})

hl.window_rule({
	name = "assetto corsa",
	no_anim = true,
	pin = true,
	float = true,
	fullscreen = false,
	move = "0 0",
	match = { class = "steam_app_3058630" },
})
