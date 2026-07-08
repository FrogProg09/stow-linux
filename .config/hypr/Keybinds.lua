-- KEYBINDS SETUP

local mainMod = "SUPER"

-- Ex:
-- hl.bind(keys, dispatcher)
-- hl.bind("SUPER + SHIFT + Q", hl.dsp.exec_cmd("firefox"))

-- Apps
local appBinds = {
  { key = "B",         cmd = "firefox"          },
  { key = "T",         cmd = "Telegram"         },
  { key = "O",         cmd = "obsidian"         },
  { key = "N",         cmd = "swaync-client -t" },
  { key = "SHIFT + E", cmd = "nautilus"         },
  { key = "E",         cmd = "emacsclient -c"   },
  { key = "R",         cmd = "hyprctl reload"   },
  { key = "D",         cmd = "rofi -show drun"  },
  { key = "Return",    cmd = "kitty"            },
  { key = "A",         cmd = "wlogout"          },
}

for _, b in ipairs(appBinds) do
  hl.bind(mainMod .. " + " .. b.key, hl.dsp.exec_cmd(b.cmd))
end

hl.bind(mainMod .. " + S", hl.dsp.exec_cmd("sh /home/frogprog/.config/hypr/screenshot.sh"))

-- Exit / kill
hl.bind("ALT + Q",           hl.dsp.exit())
hl.bind(mainMod .. " + Q",   hl.dsp.window.close())

-- Window state toggles
hl.bind(mainMod .. " + V",         hl.dsp.window.float({ action = "toggle" }))
hl.bind(mainMod .. " + F",         hl.dsp.window.fullscreen({ action = "toggle" }))
hl.bind(mainMod .. " + Z",         hl.dsp.workspace.toggle_special("scratchpad"))
hl.bind(mainMod .. " + M",         hl.dsp.workspace.toggle_special("yandexmusic"))
hl.bind(mainMod .. " + SHIFT + T", hl.dsp.workspace.toggle_special("focustimer"))

-- Focus direction
hl.bind(mainMod .. " + H", hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod .. " + L", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod .. " + K", hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod .. " + J", hl.dsp.focus({ direction = "down" }))

-- Swap windows
hl.bind(mainMod .. " + SHIFT + K", hl.dsp.window.move({ direction = "up" }))
hl.bind(mainMod .. " + SHIFT + J", hl.dsp.window.move({ direction = "down" }))
hl.bind(mainMod .. " + SHIFT + H", hl.dsp.window.move({ direction = "left" }))
hl.bind(mainMod .. " + SHIFT + L", hl.dsp.window.move({ direction = "right" }))

-- Workspace navigation
hl.bind(mainMod .. " + Left",  hl.dsp.focus({ workspace = "e-1" }))
hl.bind(mainMod .. " + Right", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod .. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

for i = 1, 9 do
  hl.bind(mainMod .. " + " .. i,             hl.dsp.focus({ workspace = i }))
  hl.bind(mainMod .. " + SHIFT + " .. i,     hl.dsp.window.move({ workspace = i }))
end
hl.bind(mainMod .. " + 0",             hl.dsp.focus({ workspace = 10 }))
hl.bind(mainMod .. " + SHIFT + 0",     hl.dsp.window.move({ workspace = 10 }))

-- Move between monitors
hl.bind("ALT + SHIFT + Left",  hl.dsp.focus({ direction = "left", monitor = true }))
hl.bind("ALT + SHIFT + Right", hl.dsp.focus({ direction = "right", monitor = true }))
hl.bind(mainMod .. " + ALT + Left",  hl.dsp.window.move({ direction = "left", monitor = true }))
hl.bind(mainMod .. " + ALT + Right", hl.dsp.window.move({ direction = "right", monitor = true }))

-- Move window by 50px
hl.bind("CTRL + SHIFT + K", hl.dsp.exec_cmd("hyprctl dispatch movewindow 0,-50"))
hl.bind("CTRL + SHIFT + J", hl.dsp.exec_cmd("hyprctl dispatch movewindow 0,50"))
hl.bind("CTRL + SHIFT + H", hl.dsp.exec_cmd("hyprctl dispatch movewindow -50,0"))
hl.bind("CTRL + SHIFT + L", hl.dsp.exec_cmd("hyprctl dispatch movewindow 50,0"))

-- Resize window by 50px
hl.bind("CTRL + ALT + K", hl.dsp.exec_cmd("hyprctl dispatch resizewindow 0,-50"))
hl.bind("CTRL + ALT + J", hl.dsp.exec_cmd("hyprctl dispatch resizewindow 0,50"))
hl.bind("CTRL + ALT + H", hl.dsp.exec_cmd("hyprctl dispatch resizewindow -50,0"))
hl.bind("CTRL + ALT + L", hl.dsp.exec_cmd("hyprctl dispatch resizewindow 50,0"))

-- Mouse binds
hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
hl.bind("mouse:274",   hl.dsp.window.fullscreen({ action = "toggle", mode = "maximized" }), { mouse = true })

-- Multimedia keys
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl s 5%+"),                            { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl s 5%-"),                            { locked = true, repeating = true })
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })

-- Extra media control binds
hl.bind(mainMod .. " + SHIFT + V", hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind(mainMod .. " + SHIFT + X", hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
hl.bind(mainMod .. " + SHIFT + C", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })

-- Layout switching
hl.bind(mainMod .. " + SHIFT + M", function()
    local ws = hl.get_active_workspace()
    if ws then hl.workspace_rule({ workspace = tostring(ws.id), layout = "master" }) end
end)




-- KEYBOARD

hl.config({
    input = {
      kb_layout     = "us,ru",
      kb_variant    = "alt-intl,",
      kb_model      = "",
      kb_options    = "grp:lalt_lshift_toggle",
      kb_rules      = "",
      repeat_rate   = 25,
      repeat_delay  = 250,
      follow_mouse  = 1,
      sensitivity   = 0,
      numlock_by_default = false,
      touchpad = {
        natural_scroll     = true,
        tap_to_click       = true,
        tap_and_drag       = true,
        drag_lock          = true,
        disable_while_typing = true,
      },
    },
})
