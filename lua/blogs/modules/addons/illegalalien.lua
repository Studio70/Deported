--- A bLogs logging module for failed screencap checks.
-- @module illegalalien
-- @author Omar Saleh Assadi <omar@assadi.co.il>

local MODULE = bLogs:Module()

MODULE.Category = "Cheat Detection"
MODULE.Name = "CitizenHack - Screencap Failure"
MODULE.Colour = Color(255,130,0)

-- Hooks into "illegalAlien" and logs incoming events.
MODULE:Hook("illegalAlien", "bLogs.illegalAlien", function(cheater)
    if not IsValid(cheater) then return end
    MODULE:Log(string.format("%s failed the screencapture check.", bLogs:FormatPlayer(cheater)))
end)

-- Add this module to the module table.
bLogs:AddModule(MODULE)