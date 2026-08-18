hl.on("hyprland.start", function () 
  hl.exec_cmd("discord")
end)

hl.bind("SUPER + semicolon", hl.dsp.workspace.toggle_special("discord"))

hl.window_rule({
    name = "discord-special-workspace",
    match = { class = "discord" },
    float = on,
    size = {1920,1080},
    center = true,
    pseudo = true,
    workspace = "special:discord silent"
})

