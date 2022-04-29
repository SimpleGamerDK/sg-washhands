CreateThread(function()
	exports['qtarget']:AddBoxZone("WashHands", vector3(-1197.94, -902.73, 13.0), 1.0, 1.5, {
		name="WashHands",
		heading=215.29,
		debugPoly=false,
		minZ=12.6,
		maxZ=15.3
	}, {
		options = {
		{
			event = "sg-washhands:washHands",
			icon = "fas fa-hand-holding-droplet",
			label = "Wash Hands",
		},            
    },
		distance = 1.5
	})
end)
	
RegisterNetEvent('sg-washhands:washHands')
AddEventHandler('sg-washhands:washHands',function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	TaskStartScenarioInPlace(playerPed, 'PROP_HUMAN_BUM_BIN', 0, true)
	exports['progressBars']:startUI(5000, "Washing Hands")
		Citizen.CreateThread(function()
			Citizen.Wait(5000)
			ClearPedTasksImmediately(playerPed)
			exports['mythic_notify']:DoHudText('success', "You've washed your hands clean!", 8000)		
		end)
end)	