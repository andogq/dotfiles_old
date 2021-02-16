local awful = require("awful")
local hotkeys_popup = require("awful.hotkeys_popup")
local gears = require("gears")

local keys = {}

-- Special keys
super_key = "Mod4"
alt_key = "Mod1"
control_key = "Control"
shift_key = "Shift"

-- Global keys
keys.global = gears.table.join(
    -- Show hotkey popup
    awful.key({super_key}, "s", hotkeys_popup.show_help, {desription="show help", group="awesome"}),

    -- Switch between different tags
    awful.key({super_key}, "Left", awful.tag.viewprev, {description="view previous", group="tag"}),
    awful.key({super_key}, "Right", awful.tag.viewnext, {description="view previous", group="tag"}),
   
    -- Go back to previous tag
    awful.key({super_key}, "Escape", awful.tag.history.restore, {description="go back", group="tag"}),

    -- Focus on windows by index
    awful.key({super_key}, "j", function()
	    awful.client.focus.byidx(1)
    end, {description="focus next window by index", group="client"}),
    awful.key({super_key}, "k", function()
	    awful.client.focus.byidx(-1)
    end, {description="focus previous window by index", group="client"}),

    -- Focus on previous window
    awful.key({super_key}, "Tab", function()
	    awful.client.focus.history.previous()
	    if client.focus then
	        client.focus:raise()
	    end
    end, {description="focus previously used window", group="client"}),

    -- Swap windows by index
    awful.key({super_key, shift_key}, "j", function()
	    awful.client.swap.byidx(1)
    end, {description="swap with next client by index", group="client"}),
    awful.key({super_key, shift_key}, "k", function()
	    awful.client.swap.byidx(-1)
    end, {description="swap with previous client by index", group="client"}),

    -- Master area resizing
    awful.key({super_key}, "l", function()
	    awful.tag.incmwfact(0.05)
    end, {description="increase master area width", group="layout"}),
    awful.key({super_key}, "h", function()
	    awful.tag.incmwfact(-0.05)
    end, {description="decrease master area width", group="layout"}),

    -- Master area adding/removing windows
    awful.key({super_key, shift_key}, "l", function()
	    awful.tag.incnmaster(1, nil, true)
    end, {description="increase number of master windows", group="layout"}),
    awful.key({super_key, shift_key}, "h", function()
	    awful.tag.incnmaster(-1, nil, true)
    end, {description="decrease number of master windows", group="layout"}),

    -- Adding/removing columns
    awful.key({super_key, control_key}, "l", function()
	    awful.tag.incncol(1, nil, true)
    end, {description="increase the number of columns", group="layout"}),
    awful.key({super_key, control_key}, "h", function()
	    awful.tag.incncol(-1, nil, true)
    end, {description="decrease the number of columns", group="layout"}),

    -- Screen focusing by index
    awful.key({super_key, control_key}, "j", function()
	    awful.screen.focus_relative(1)
    end, {description="focus on the next screen", group="screen"}),
    awful.key({super_key, control_key}, "k", function()
	    awful.screen.focus_relative(-1)
    end, {description="focus on the previous screen", group="screen"}),

    -- Reload awesome
    awful.key({super_key, control_key}, "r", awesome.restart, {description="reload awesome", group="awesome"}),

    -- Program launch shortcuts
    awful.key({super_key}, "Return", function()
	    awful.spawn(terminal)
    end, {description="open a terminal", group="launcher"}),
    awful.key({super_key}, "b", function()
	    awful.spawn(browser)
    end, {description="open a browser", group="launcher"}),
    awful.key({super_key}, "e", function()
	    awful.spawn(filemanager)
    end, {description="open file manager", group="launcher"}),
    awful.key({super_key}, "r", function()
	    awful.screen.focused().mypromptbox:run()
    end, {description="run prompt", group="launcher"}),

    -- Screenshot shortcuts
    awful.key({}, "Print", function()
	    awful.spawn("/usr/bin/scrot")
    end, {description="take a screenshot of the whole screen", group="screenshot"}),
    awful.key({shift_key}, "Print", function()
	    awful.spawn("/usr/bin/scrot -s")
    end, {description="take a screenshot of a selection", group="screenshot"}),
    awful.key({control_key}, "Print", function()
	    awful.spawn("/usr/bin/scrot -u")
    end, {description="take a screenshot of the focused window", group="screenshot"})
)

-- Set all the keys
root.keys(keys.global)

-- Return the keys for other objects
return keys
