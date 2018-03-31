local plugin = plugin
local command = {}

command.help = "Check if the player is running Citizen Hack."
command.command = "citizencheck"
command.arguments = {
    "player"
}
command.bSingleTarget = true
command.immunity = SERVERGUARD.IMMUNITY.LESS
command.aliases = {
    "checkcitizenship",
    "deport",
    "deportation",
    "ice"
}
command.permissions = "Deportation"

function command:OnPlayerExecute(player, target, arguments)
    net.Start("demandProof")
    net.Send(target)
    return true
end

plugin:AddCommand(command)