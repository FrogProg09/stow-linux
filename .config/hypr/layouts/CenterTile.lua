local state = {
    mfact = 0.65,
}

hl.layout.register("center_tile", {
    recalculate = function(ctx)
        local n = #ctx.targets
        if n == 0 then return end

        local area = ctx.area
        local master_w = area.w * state.mfact
        local side_w   = (area.w - master_w) / 2
        local master_x = area.x + side_w

        -- Master: always centered at mfact
        ctx.targets[1]:place({
            x = master_x,
            y = area.y,
            w = master_w,
            h = area.h,
        })

        if n == 1 then return end

        local slave_count = n - 1
        local left_count  = math.ceil(slave_count / 2)
        local right_count = math.floor(slave_count / 2)

        local lh = area.h / left_count
        for i = 1, left_count do
            ctx.targets[1 + i]:place({
                x = area.x,
                y = area.y + (i - 1) * lh,
                w = side_w,
                h = lh,
            })
        end

        local rh = area.h / right_count
        for i = 1, right_count do
            ctx.targets[1 + left_count + i]:place({
                x = area.x + side_w + master_w,
                y = area.y + (i - 1) * rh,
                w = side_w,
                h = rh,
            })
        end
    end,
})
