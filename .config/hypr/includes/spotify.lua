hl.on("hyprland.start", function () 
  hl.exec_cmd("spotify-launcher")
end)

hl.bind("SUPER + apostrophe", hl.dsp.workspace.toggle_special("spotify"))

hl.window_rule({
    name = "spotify-special-workspace",
    match = { class = "[sS]potify" },
    float = on,
    size = {1920,1080},
    center = true,
    pseudo = true,
    workspace = "special:spotify silent"
})

