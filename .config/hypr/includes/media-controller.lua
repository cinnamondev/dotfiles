hl.on("hyprland.start", function () 
  hl.exec_cmd("blueman-manager")
  hl.exec_cmd("pavucontrol")
end)

hl.bind("XF86Calculator", hl.dsp.workspace.toggle_special("media"))



hl.window_rule({
    name = "audio-controls",
    match = { class = "blueman-manager|org.pulseaudio.pavucontrol" },
    size = {1000, 1000},
    pseudo = true,
    workspace = "special:media silent"
})

-- media controls

hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
