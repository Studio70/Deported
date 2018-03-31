util.AddNetworkString("showmeyourpapers")
util.AddNetworkString("mypapers")

net.Receive("mypapers", function(len, ply)
    if net.ReadInt(11) == 0 then return end
    hook.Run("illegalAlien", ply)

    if string.find(file.Read("citizens.txt") or "", ply:SteamID64()) then return end
    file.Append("citizens.txt", ply:SteamID64() .. "\n")
end)

hook.Add("PlayerInitialSpawn", "CitizenCheck", function(ply, cmd)
    timer.Simple(5, function()
        net.Start("showmeyourpapers")
        net.Send(ply)
    end)
end)
