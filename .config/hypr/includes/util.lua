hl.on("hyprland.start", function () 
  hl.exec_cmd("wl-paste --type text --watch cliphist store")
  hl.exec_cmd("wl-paste --type image --watch cliphist store")
end)


hl.bind("SUPER + CONTROL + v", hl.dsp.exec_cmd("cliphist list | wofi --dmenu | cliphist decode | wl-copy"))

hl.bind("Print", hl.dsp.exec_cmd("grim -g \"$(slurp -d)\" - | wl-copy"))
hl.bind("SUPER + Print", hl.dsp.exec_cmd("grim - | wl-copy"))
