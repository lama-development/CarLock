Citizen.CreateThread( function()
updatePath = "/ItzEndah/CarLock"
resourceName = "CarLock by Lama"

function checkVersion(err,responseText, headers)
    -- Returns the current version set in fxmanifest.lua
	curVersion = GetResourceMetadata(GetCurrentResourceName(), "version")

	if curVersion ~= responseText and tonumber(curVersion) < tonumber(responseText) then
		print(resourceName .. " is outdated.\nLatest version: " .. responseText .. "\nCurrent version: " .. curVersion .. "\nPlease update it from https://github.com" .. updatePath)
	else
		print(resourceName .." is up to date. Enjoy.")
	end
end

PerformHttpRequest("https://raw.githubusercontent.com" .. updatePath .. "/main/version", checkVersion, "GET")
end)
