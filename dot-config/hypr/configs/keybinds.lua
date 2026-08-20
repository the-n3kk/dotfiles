---------------------
---- KEYBINDINGS ----
---------------------


--launcher
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd("bash ~/.local/bin/scripts/fuzzel_launcher.sh"))
--we search via fuzel
hl.bind("SUPER + ALT + SPACE", hl.dsp.exec_cmd("bash ~/.local/bin/scripts/fuzzel_search.sh"))
hl.bind("SUPER + ALT + C", hl.dsp.exec_cmd("bash ~/.local/bin/scripts/fuzzel_calc.sh"))

hl.bind("SUPER + Return", hl.dsp.exec_cmd("ghostty"))
hl.bind("SUPER + E", hl.dsp.exec_cmd("thunar"))
hl.bind("SUPER + F11", hl.dsp.fullscreen({mode = "fullscreen", action = "toggle"}))
hl.bind("SUPER + F12", hl.dsp.exec_cmd("pkill waybar; waybar"))
hl.bind("SUPER + code:127", hl.dsp.exec_cmd("hpaper next"))

hl.bind("SUPER + Q", hl.dsp.close())
hl.bind("SUPER + CTRL + Q", hl.dsp.kill())
hl.bind("SUPER + SHIFT + ESC", hl.dsp.exit())
hl.bind("SUPER + F", hl.dsp.float())

hl.bind("SUPER + P", hl.dsp.pseudo()) -- dwindle layout only
hl.bind("SUPER + S", hl.dsp.layout({message = "togglesplit"})), -- dwindle
--bind = SUPER, J, layoutmsg, swapwithmaster

-- Move focus with mainMod + arrow keys
hl.bind("SUPER + H", hl.dsp.focus({direction = "left"}))
hl.bind("SUPER + L", hl.dsp.focus({direction = "right"}))
hl.bind("SUPER + J", hl.dsp.focus({direction = "up"}))
hl.bind("SUPER + K", hl.dsp.focus({direction = "down"}))

-- change workspace
for i = 1, 4 do
	local button = i + 4
	hl.bind("SUPER + F" .. button, hl.dsp.focus({workspace = i}))
	hl.bind("ALT + F" .. button, hl.dsp.move({workspace = i, follow = true}))
	hl.bind("SUPER + CTRL + F" .. button, hl.dsp.move({workspace = i, follow = false}))
end

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind("SUPER + mouse:272", hl.dsp.drag())
hl.bind("SUPER + SHIFT + mouse:272", hl.dps.resize())
hl.bind("SUPER + mouse:273", hl.dps.resize())

-- Select region and make a screenshot (saves in pictures)
hl.bind("CTRL + SHIFT + 1 ", hl.dsp.exec_cmd("pic=$(xdg-user-dir PICTURES)/grim/$(date '+%Y-%m-%dT%H-%M-%S.png'); grim - > $pic ; wl-copy -t image/png < $pic"))
hl.bind("CTRL + SHIFT + 2 ", hl.dsp.exec_cmd("pic=$(xdg-user-dir PICTURES)/grim/$(date '+%Y-%m-%dT%H-%M-%S.png'); grim -o $(hyprctl activeworkspace | rg \"DP-\\d\" -o) - > $pic; wl-copy -t image/png < $pic"))
hl.bind("CTRL + SHIFT + 4 ", hl.dsp.exec_cmd("pic=$(xdg-user-dir PICTURES)/grim/$(date '+%Y-%m-%dT%H-%M-%S.png'); grim -g \"$(slurp)\" - > $pic; wl-copy -t image/png < $pic"))

--Clipboard manager
hl.bind("SUPER + V", hl.dsp.exec_cmd("cliphist list | fuzzel --dmenu | cliphist decode | wl-copy"))

-- volume #
--f3, f4
hl.bind("xf86audiomute", hl.exec_cmd("~/.local/bin/scripts/volume.sh --toggle"))
hl.bind("xf86audiolowervolume", hl.exec_cmd("~/.local/bin/scripts/volume.sh --dec"))
hl.bind("xf86audioraisevolume", hl.exec_cmd("~/.local/bin/scripts/volume.sh --inc"))
hl.bind("xf86MonBrightnessDown", hl.dsp.exec_cmd("~/.local/bin/scripts/brightness --dec"))
hl.bind("xf86MonBrightnessUp", hl.dsp.exec_cmd("~/.local/bin/scripts/brightness --inc"))
hl.bind("xf86AudioNext", hl.dsp.exec_cmd("playerctl next"))
hl.bind("xf86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("xf86AudioPlay", hl.dsp.exec_cmd("playerctl --player spotify_player play-pause"))
hl.bind("xf86AudioMicMute", hl.dsp.exec_cmd("~/.local/bin/scripts/volume --mictoggle"))

-- move to special workspace
hl.bind("SUPER + M", hl.dsp.window.move({ workspace = "special:magic" }))
-- To see the hidden window and workspace you can use: 
hl.bind("SUPER + Z", hl.dsp.workspace.toggle_special("magic"))

hl.bind("SUPER + L", hl.dsp.focus({window = "swaylock"}))
