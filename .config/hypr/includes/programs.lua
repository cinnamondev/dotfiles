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
  hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
  hl.exec_cmd("hypridle")

  if IS_ULTRAWIDE then
    hl.exec_cmd("hyprpaper --config ~/.config/hypr/hyprpaper-ultrawide.conf")
  else
    hl.exec_cmd("hyprpaper")
  end
end)
