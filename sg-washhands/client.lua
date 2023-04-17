Citizen.CreateThread(function()
	for index, value in pairs(Config.Locations) do
		exports['qtarget']:AddBoxZone(index, value.pos, value.x, value.y, {
			name=index,
			heading=value.heading,
			debugPoly=Config.Debug,
			minZ=value.minZ,
			maxZ=value.maxZ
		}, {
			options = {
				{
				event = "sg-washhands:washHands",
				icon = "fas fa-droplet",
				label = Locals['en'].TargetLabel,
				},
			},
				distance = 1.5
		})
	end
end)

RegisterNetEvent('sg-washhands:washHands')
AddEventHandler('sg-washhands:washHands',function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	TaskStartScenarioInPlace(playerPed, 'PROP_HUMAN_BUM_BIN', 0, true)
	exports['progressBars']:startUI(Config.ProgressBarLength*1000, Locals['en'].ProgbarLabel)
		Citizen.CreateThread(function()
			Citizen.Wait(Config.ProgressBarLength*1000)
			ClearPedTasksImmediately(playerPed)
			exports['mythic_notify']:DoHudText('success', Locals['en'].NotifyLabel, 8000)
		end)
end)