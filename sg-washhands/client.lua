Citizen.CreateThread(function()
	for index, value in pairs(Config.Locations) do
		if Config.Target == "q-target" then			
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
					label = Locals[Config.Locals]['TargetLabel'],
					},
				},
					distance = 1.5
			})
		elseif Config.Target == "qb-target" then
			exports['qb-target']:AddBoxZone(index, value.pos, value.x, value.y, { 
			name = index, 
			heading = value.heading, 
			debugPoly = Config.Debug, 
			minZ = value.minZ, 
			maxZ = value.maxZ, 
		}, {
			options = { 
			{ 
				num = 1, 
				type = "client",  
				event = "sg-washhands:washHands", 
				icon = 'fas fa-droplet', 
				label = Locals[Config.Locals]['TargetLabel'],  
			}
			},
			distance = 1.5, 
		})
		elseif Config.Target == "ox-target" then
			exports.ox_target:addBoxZone({
				coords = value.pos,
				size = vec3(value.x, value.y, value.minZ),
				rotation = value.heading,
				debug = Config.Debug,
				options = {
					{
						name = index,
						event = 'sg-washhands:washHands',
						icon = 'fas fa-droplet',
						label = Locals[Config.Locals]['TargetLabel'],
					}
				}
			})
		end
	end
end)

RegisterNetEvent('sg-washhands:washHands')
AddEventHandler('sg-washhands:washHands',function()
	local playerPed = PlayerPedId()
	local coords = GetEntityCoords(playerPed)
	TaskStartScenarioInPlace(playerPed, 'PROP_HUMAN_BUM_BIN', 0, true)
	exports['progressBars']:startUI(Config.ProgressBarLength*1000, Locals[Config.Locals]['ProgbarLabel'])
		Citizen.CreateThread(function()
			Citizen.Wait(Config.ProgressBarLength*1000)
			ClearPedTasksImmediately(playerPed)
			exports['mythic_notify']:DoHudText('success', Locals[Config.Locals]['NotifyLabel'], 8000)
		end)	
end)