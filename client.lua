Citizen.CreateThread(function()
	while true do
		Wait(0)
		local player = PlayerPedId()
		local v      = GetVehiclePedIsIn(player, false)
		if v ~= 0 then
			if GetIsTaskActive(player, 165) then
				if GetSeatPedIsTryingToEnter(player) == -1 then
						SetPedIntoVehicle(player, v, 0)
				end
			end
		end
	end
end)
