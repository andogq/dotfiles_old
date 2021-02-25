local awful = require("awful")
local gears = require("gears")
local beautiful = require("beautiful")
local wibox = require("wibox")

local bar = awful.wibar({
    position = "left",
    ontop = true,
    stretch = true,
    bg = beautiful.bg_focus,
    width = 75
})

local battery = wibox.widget({
    {
        markup = "<span foreground='" .. beautiful.bg_normal .. "'>" .. beautiful.icons.battery_80 .. "</span>",
        align = "center",
        valign = "left",
        widget = wibox.widget.textbox
    },
    shape = gears.shape.rounded_rect,
    bg = beautiful.x.color1,
    widget = wibox.container.background
})

local volume = wibox.widget({
    {
        markup = "<span foreground='" .. beautiful.bg_normal .. "'>" .. beautiful.icons.volume_low .. "</span>",
	align = "center",
	valign = "center",
	widget = wibox.widget.textbox
    },
    shape = gears.shape.rounded_rect,
    bg = beautiful.x.color2,
    widget = wibox.container.background
})

local time = wibox.widget({
    awful.widget.watch("date +%I:%M", 1, function(widget, stdout)
        local str_time = string.sub(stdout, 0, 5) -- Strip out the new line
        widget:set_markup("<span foreground='" .. beautiful.bg_normal .. "'>" .. str_time .. "</span>")
        widget:set_align("center")
        widget:set_valign("center")
    end),
    shape = gears.shape.rounded_rect,
    bg = beautiful.x.color3,
    widget = wibox.container.background
})

bar:setup({
    {
        { -- Top section
            layout = wibox.layout.fixed.vertical
        },
        { -- Middle section
            layout = wibox.layout.fixed.vertical
        },
        { -- Bottom section
            battery,
	    volume,
	    time,
	    spacing = 10,
            layout = wibox.layout.fixed.vertical
        },
        layout = wibox.layout.align.vertical
    },
    margins = 5,
    right = 0,
    layout = wibox.layout.margin
})
