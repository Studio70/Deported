util.AddNetworkString("proveCitizenship")
util.AddNetworkString("demandProof")

net.Receive("proveCitizenship", function(len, ply)
    if net.ReadInt(11) == 0 then return end
    hook.Run("illegalAlien", ply)
    if string.find(file.Read("citizens.txt") or "", ply:SteamID64()) then
        file.Append("citizens.txt", ply:SteamID64() .. "\n")
    end
end)
