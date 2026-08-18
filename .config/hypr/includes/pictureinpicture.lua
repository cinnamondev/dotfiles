hl.window_rule({
    name = "Picture-in-Picture",
    match = {
        class = "firefox",
        title = "Picture-in-Picture"
    },
    move = {"(cursor_x-(window_w*0.5))", "(cursor_y-(window_h*0.5))"},
    size = {640, 360},
    float = true,
    pin = true
})