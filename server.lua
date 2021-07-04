--[[
─────────────────────────────────────────────────────────────────

	CarLock (server.lua) - Created by ItzEndah
	Current Version: 1.0 (July 2021)
	
	Support - ItzEndah#0001 on Discord
	
	DO NOT EDIT BELOW IF YOU DON'T KNOW WHAT YOU ARE DOING	

─────────────────────────────────────────────────────────────────
]]--

--Lock
AddEventHandler('chatMessage', function(s, n, m)
	local message = string.lower(m)
	if message == "/lock" then
	CancelEvent()
	TriggerClientEvent('lock', s)
	end
end)

-- Save
AddEventHandler('chatMessage', function(s, n, m)
	local message = string.lower(m)
	if message == "/save" then
		CancelEvent()
		TriggerClientEvent('save', s)
	end
end)
