------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
	output = "eDP-1",
	mode = "highres@highrr",
	position = "0x0",
	scale = 1,
	transform = 0,
	--supports_wide_color = 1,
	supports_hdr = 0,
	--cm = "hdr"
	sdrbrightness = 1,
	sdrsaturation = 1,
	sdr_eotf = "srgb",
	icc = "/usr/share/color/icc/colord/AppleRGB.icc"
})

hl.workspace_rule({
	workspace = 1, 
	monitor = "eDP-1",  
	default = true
)}

hl.config({
	input = {
		sensitivity = 0, -- -1.0 to 1.0, 0 means no modification.
		scroll_method = "2fg",
		touchpad {
			natural_scroll = true,
			tap_to_click = true,
			disable_while_typing = true,
			clickfinger_behavior = true
		}	
	}
})
