local toggled = false

hl.bind("SUPER + XF86AudioMedia", function() 
    if toggled then
        toggled = false
        hl.dsp.exec_cmd("pkexec ectool autofanctrl")
    else
        toggled = true
        hl.dsp.exec_cmd("pkexec ectool fanduty 100")
    end
end)