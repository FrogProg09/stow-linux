-- WINDOW RULES SETUP

-- Float Zoom
hl.window_rule({
    name  = "float-zoom",
    match = { class = "^zoom" },
    float = true,
})

-- Assign apps to workspaces
local wsRules = {
  { ws = 1, class = "firefox"                     },
  { ws = 2, class = "emacs"                       },
  { ws = 2, class = "kitty"                       },
  { ws = 3, class = "org.telegram.desktop"        },
  { ws = 4, class = "steam"                       },
  { ws = 4, class = "org.gnome.Lollypop"          },
  { ws = 5, class = "obsidian"                    },
  { ws = 5, class = "^zoom"                       },
  { ws = 6, class = "com.obsproject.Studio"       },
}
for _, r in ipairs(wsRules) do
  hl.window_rule({
      name  = "ws-" .. r.ws .. "-" .. (r.class or r.class),
      match = r.class and { class = r.class } or { class = r.class },
      workspace = r.ws,
  })
end

-- Hidden workspaces

-- music
hl.window_rule({
    name  = "scratch-yandex",
    match = { class = "YandexMusic" },
    workspace = "special:yandexmusic",
    fullscreen = true,
})

-- timer
hl.window_rule({
    name  = "scratch-focustimer",
    match = { class = "io.github.focustimerhq.FocusTimer" },
    workspace = "special:focustimer",
    float = true,
})

-- Fix XWayland drags
hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
      class      = "^$",
      title      = "^$",
      xwayland   = true,
      float      = true,
      fullscreen = false,
      pin        = false,
    },
    no_focus = true,
})
