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
			icon = "fas fas-hand-holding-droplet",
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
			icon = "fas fas-hand-holding-droplet",
			label = "Wash Hands",
			},
		},
			distance = 1.5 
	})
	
	exports['qtarget']:AddBoxZone("CatsWashHands", vector3(-587.89, -1062.55, 22.36), 0.8, 0.6, {
	  name="CatsWashHands",
	  heading=0,
	  --debugPoly=true,
	  minZ=21.96,
	  maxZ=22.36
	}, {
		options = {
			{
			event = "sg-washhands:washHands",
			icon = "fas fas-hand-holding-droplet",
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
			icon = "fas fas-hand-holding-droplet",
			label = "Wash Hands",
			},
		},
			distance = 1.5 
	})
	
	exports['qtarget']:AddBoxZone("BeanWashHands", vector3(123.7, -1039.23, 29.28), 0.95, 0.45, {
	  name="BeanWashHands",
	  heading=340,
	  --debugPoly=true,
	  minZ=29.08,
	  maxZ=29.33
	}, {
		options = {
			{
			event = "sg-washhands:washHands",
			icon = "fas fas-hand-holding-droplet",
			label = "Wash Hands",
			},
		},
			distance = 1.5 
	})
	
	exports['qtarget']:AddBoxZone("PizzaWashHands", vector3(809.47, -765.16, 26.78), 0.45, 0.7, {
	  name="PizzaWashHands",
	  heading=0,
	  --debugPoly=true,
	  minZ=26.58,
	  maxZ=26.78
	}, {
		options = {
			{
			event = "sg-washhands:washHands",
			icon = "fas fas-hand-holding-droplet",
			label = "Wash Hands",
			},
		},
			distance = 1.5 
	})
	
	exports['qtarget']:AddBoxZone("PizzaWashHands2", vector3(809.26, -760.15, 26.78), 0.75, 0.5, {
	  name="PizzaWashHands2",
	  heading=0,
	  --debugPoly=true,
	  minZ=26.58,
	  maxZ=26.78
	}, {
		options = {
			{
			event = "sg-washhands:washHands",
			icon = "fas fas-hand-holding-droplet",
			label = "Wash Hands",
			},
		},
			distance = 1.5 
	})
	
	exports['qtarget']:AddBoxZone("PizzaWashHands3", vector3(813.38, -755.46, 26.78), 0.4, 0.45, {
	  name="PizzaWashHands3",
	  heading=0,
	  --debugPoly=true,
	  minZ=26.68,
	  maxZ=26.88
	}, {
		options = {
			{
			event = "sg-washhands:washHands",
			icon = "fas fas-hand-holding-droplet",
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