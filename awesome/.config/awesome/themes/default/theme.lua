local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi
local theme = {}

theme.x = xresources.get_current_theme()

theme.font          = "FiraCode 8"

theme.bg_normal     = theme.x.background
theme.bg_focus      = theme.bg_normal
theme.bg_urgent     = theme.bg_normal
theme.bg_minimize   = theme.bg_normal
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = theme.x.foreground
theme.fg_focus      = theme.fg_normal
theme.fg_urgent     = theme.fg_normal
theme.fg_minimize   = theme.fg_normal

theme.useless_gap   = dpi(10)
theme.border_width  = dpi(2)
theme.border_normal = theme.x.color4
theme.border_focus  = theme.x.color12

-- Define the image to load
theme.wallpaper = "./background.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme
