-- Programs

local terminal = "kitty"
local explorer = "nemo"
local menu = "wofi --show drun"

---Program bindings

hl.bind("SUPER + Return", hl.dsp.exec_cmd(terminal))
hl.bind("SUPER + e", hl.dsp.exec_cmd(explorer))
hl.bind("SUPER + SPACE", hl.dsp.exec_cmd(menu))

-- Autostart

hl.on("hyprland.start", function () 
  hl.dsp.exec_cmd(terminal)
  hl.dsp.exec_cmd("hyprpaper")
  hl.dsp.exec_cmd("hypridle")
end)
