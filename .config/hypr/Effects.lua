-- LOOK AND FEEL SETUP

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.workspace_rule({ workspace = "2", layout = "lua:center_tile" })

hl.config({
    general = {
        gaps_in        = 0,
        gaps_out       = 0,
        border_size    = 2,
        col = {
            active_border   = "rgba(201, 184, 144, 255)",
            inactive_border = "rgba(68, 68, 68, 255)",
        },
        resize_on_border = false,
        allow_tearing    = false,
        layout           = "master",
    },

    decoration = {
        rounding       = 0,
        rounding_power = 2,
        active_opacity   = 1.0,
        inactive_opacity = 0.92,
        shadow = {
            enabled      = false,
            range        = 4,
            render_power = 3,
            color        = 0xee1a1a1a,
        },
        blur = {
            enabled   = false,
            size      = 3,
            passes    = 1,
            vibrancy  = 0.1696,
        },
    },

    animations = {
        enabled = false,
    },

    cursor = {
        inactive_timeout = 0.5,
    },
})

hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
hl.workspace_rule({ workspace = "f[1]",   gaps_out = 0, gaps_in = 0 })
hl.window_rule({
    name  = "no-gaps-wtv1",
    match = { float = false, workspace = "w[tv1]" },
    border_size = 0,
    rounding    = 0,
})
hl.window_rule({
    name  = "no-gaps-f1",
    match = { float = false, workspace = "f[1]" },
    border_size = 0,
    rounding    = 0,
})

hl.config({
    master = {
        new_status = "master",
        mfact      = 0.65,
    },
})

hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})
