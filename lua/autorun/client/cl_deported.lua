local deportation = {}

deportation.report = function()
    render.CapturePixels()
    local r,g,b = render.ReadPixel(ScrH()/2, ScrW()/2)
    net.Start("proveCitizenship")
        net.WriteInt(r+g+b, 11)
    net.SendToServer()
end

hook.Add("InitPostEntity", "papers" .. math.random(1, 400), function()
    timer.Simple(2, deportation.report)
end)

net.Receive("demandProof", deportation.report)
