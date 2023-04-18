Config = {}

Config.Locals = 'en' -- en, dk
Config.ProgressBarLength = 5 -- Time it takes to wash your hands in seconds
Config.Target = 'q-target' -- 'q-target', 'qb-target', 'ox-target'

Config.Debug = false -- Enables debugging

Config.Locations =  {
    ["BurgerWashHands"] = {
        pos = vector3(-1198.13, -903.0, 14.0),
        heading = 35,
        y = 0.8,
        x = 0.8,
        minZ = 13.55,
        maxZ = 13.95
    },
    ["BurgerWashHands2"] = {
        pos = vector3(-1196.99, -902.17, 14.0),
        heading = 35,
        y = 0.65,
        x = 0.7,
        minZ = 13.8,
        maxZ = 14.0
    },
    ["Taco"] = {
        pos = vector3(11.99, -1597.5, 29.38),
        heading = 320,
        y = 0.7,
        x = 0.65,
        minZ = 29.13,
        maxZ = 29.43,
    }
}

--[[
    ["BurgerWashHands"] = { Unique name for the target zone
        pos = vector3(-1198.13, -903.0, 14.0), The position for the target
        heading = 35, The heading
        y = 0.8, The size on the Y axis
        x = 0.8, The size on the X axis
        minZ = 13.55, The minimun height
        maxZ = 13.95, The maximum height
    }    
--]]