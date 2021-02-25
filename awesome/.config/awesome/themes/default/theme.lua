local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local theme = {}

theme.x = xresources.get_current_theme()

theme.font_family = "FiraCode Nerd Font"
theme.font = theme.font_family .. " 8"

theme.bg_normal = theme.x.background
theme.bg_focus = theme.bg_normal
theme.bg_urgent = theme.bg_normal
theme.bg_minimize = theme.bg_normal
theme.bg_systray = theme.bg_normal

theme.fg_normal = theme.x.foreground
theme.fg_focus = theme.fg_normal
theme.fg_urgent = theme.fg_normal
theme.fg_minimize = theme.fg_normal

theme.useless_gap = dpi(10)
theme.border_width = dpi(2)
theme.border_normal = theme.x.color4
theme.border_focus = theme.x.color12

-- Progress bar variables
theme.progressbar_bg = theme.bg_normal
theme.progressbar_fg = theme.fg_normal
theme.progressbar_border_color = theme.border_normal
theme.progressbar_border_width = theme.border_width

-- Define the image to load
theme.wallpaper = "~/.config/awesome/themes/default/background.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

-- Font icons
theme.icons = {}

theme.icons.battery_100 = ""
theme.icons.battery_90 = ""
theme.icons.battery_80 = ""
theme.icons.battery_70 = ""
theme.icons.battery_60 = ""
theme.icons.battery_50 = ""
theme.icons.battery_40 = ""
theme.icons.battery_30 = ""
theme.icons.battery_20 = ""
theme.icons.battery_10 = ""
theme.icons.battery_alert = ""
theme.icons.battery_charging = ""

theme.icons.volume_off = ""
theme.icons.volume_low = ""
theme.icons.volume_high = ""

return theme
