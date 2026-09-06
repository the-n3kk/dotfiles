-------------------
---- AUTOSTART ----
-------------------

hl.on("hyprland.start", function()
	hl.exec_cmd("noctalia")
	hl.exec_cmd("hyprctl setcursor ArcMidnight-cursors 100")
	hl.exec_cmd("mako") --notifications
	hl.exec_cmd("systemctl --user start hyprpolkitagent") --auth manager
	hl.exec_cmd("nm-applet") --networkmanager applet
	hl.exec_cmd("wl-paste --type text --watch cliphist store") --Stores only text data
	hl.exec_cmd("wl-paste --type image --watch cliphist store") --Stores only image data
	hl.exec_cmd("hpaper start") --wallpaper daemon
	hl.exec_cmd("hypridle") --screen lock
	hl.exec_cmd("easyeffects --gapplication-service") --equalizer
	hl.exec_cmd("systemctl --user enable opentabletdriver.service --now") --tablet driver service
	--This will make sure that xdg-desktop-portal-hyprland can get the required variables on startup
	hl.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
end)
