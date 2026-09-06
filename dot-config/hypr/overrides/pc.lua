------------------
---- MONITORS ----
------------------

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
	output = "DP-2",
	mode = "highres@highrr",
	position = "2560x-500",
	scale = 1.5,
	transform = 3, --3-vertical
	--supports_wide_color = 1,
	supports_hdr = 1,
	--cm = "hdr"
	sdrbrightness = 1,
	sdrsaturation = 1,
	sdr_eotf = "srgb",
	icc = "/usr/share/color/icc/colord/AppleRGB.icc",
})

hl.monitor({
	output = "DP-1",
	mode = "highres@highrr",
	position = "0x0",
	scale = 1.5,
	transform = 0,
	--supports_wide_color = 1,
	supports_hdr = 1,
	--cm = "hdr"
	sdrbrightness = 1,
	sdrsaturation = 1,
	sdr_eotf = "srgb",
	icc = "/usr/share/color/icc/colord/AppleRGB.icc",
})

hl.workspace_rule({
	workspace = 1,
	monitor = "DP-1",
	default = true,
})

hl.workspace_rule({
	workspace = 2,
	monitor = "DP-2",
	default = true,
})

hl.config({
	input = {
		sensitivity = -0.5, -- -1.0 to 1.0, 0 means no modification.
	},
})
