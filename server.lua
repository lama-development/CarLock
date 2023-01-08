--[[
CarLock - Created by Lama	
For support - https://discord.gg/etkAKTw3M7
Do not edit below if you don't know what you are doing
]]--

-- version checker
Citizen.CreateThread( function()
	updatePath = "/lama-development/CarLock"
	resourceName = "CarLock by Lama"
	
	function checkVersion(err, responseText, headers)
		-- Returns the version set in the file
		curVersion = GetResourceMetadata(GetCurrentResourceName(), "version")

		if responseText == nil or curVersion == nil then
			print("^1There was an error retrieving the version of " .. resourceName .. ": the version checker will be skipped.")
		else if tonumber(curVersion) == tonumber(responseText) then
			print("^2" .. resourceName .." is up to date. Enjoy.")
		else 
			print("^1" .. resourceName .. " is outdated.\nLatest version: " .. responseText .. "Current version: " .. curVersion .. "\nPlease update it from: https://github.com" .. updatePath)
		end
	end
end
	
	PerformHttpRequest("https://raw.githubusercontent.com" .. updatePath .. "/main/version", checkVersion, "GET")
end)
