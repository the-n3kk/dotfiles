-------------------------------
---- ENVIRONMENT VARIABLES ----
-------------------------------

-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Environment-variables/

hl.env("GTK_THEME", "Tokyonight-Dark:dark")
hl.env("GDK_BACKEND,wayland,x11", "*")
hl.env("SDL_VIDEODRIVER,wayland", "x11")
hl.env("CLUTTER_BACKEND", "wayland")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

hl.env("AQ_NO_MODIFIERS", "1")

hl.env("QT_QPA_PLATFORMTHEME", "qt6ct;qt5ct")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")

hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

hl.env("HYPRCURSOR_THEME", "ArcMidnight-cursors")
hl.env("HYPRCURSOR_SIZE", "100")
