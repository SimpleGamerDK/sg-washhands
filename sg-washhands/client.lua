Citizen.CreateThread(function()
	exports['qtarget']:AddBoxZone("BurgerWashHands", vector3(-1198.13, -903.0, 14.0), 0.8, 0.8, {
		name="BurgerWashHands",
		heading=35,
		--debugPoly=true,
		minZ=13.55,
		maxZ=13.95
	}, {
		options = {
			{
			event = "sg-washhands:washHands",
			icon = "fas fa-droplet",
			label = "Wash Hands",
			},
		},
			distance = 1.5 
	})
	
	exports['qtarget']:AddBoxZone("BurgerWashHands2", vector3(-1196.99, -902.17, 14.0), 0.65, 0.7, {
		name="BurgerWashHands2",
		heading=34,
		--debugPoly=true,
		minZ=13.8,
		maxZ=14.0
	}, {
		options = {
			{
			event = "sg-washhands:washHands",
			icon = "fas fa-droplet",
			label = "Wash Hands",
			},
		},
			distance = 1.5 
	})
	
	exports['qtarget']:AddBoxZone("TacoWashHands", vector3(11.99, -1597.5, 29.38), 0.7, 0.65, {
	  name="TacoWashHands",
	  heading=320,
	  --debugPoly=true,
	  minZ=29.13,
	  maxZ=29.43
	}, {
		options = {
			{
			event = "sg-washhands:washHands",
			icon = "fas fa-droplet",
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
	exports['progressBars']:startUI(Config.ProgressBarLength*1000, Config.ProgressBarLabel)
		Citizen.CreateThread(function()
			Citizen.Wait(Config.ProgressBarLength*1000)
			ClearPedTasksImmediately(playerPed)
			exports['mythic_notify']:DoHudText('success', Config.NotifyLabel, 8000)		
		end)
end)	