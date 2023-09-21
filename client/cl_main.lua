local delani = false

ESX.Game.SpawnObject('prop_hotdogstand_01', vector3(161.686, -996.554, 28.352), function(object)
    print(DoesEntityExist(object), 'Prop "HotDog Stand" is spawned!')
  end)

ESX.Game.SpawnObject('prop_hotdogstand_01', vector3(-829.863, -966.666, 14.106), function(object)
    print(DoesEntityExist(object), 'Prop "HotDog Stand" is spawned!')
end)

exports['qtarget']:AddTargetModel({-1581502570}, {
    options = {
        {
            event = "sm_hotdog:openStand",
            icon = "fa-solid fa-hand",
            label = "Open Menu",
			job = Config.Job,
        },
    },
    distance = 6.0
})

Citizen.CreateThread(function()
    RequestModel(0x040EABE3)
    local spawnedNpc = CreatePed(4, 0x040EABE3, -776.9580078125, -1323.14453125, 4.1502728462219, 138.00, false, false)
    SetEntityInvincible(spawnedNpc, true)
    FreezeEntityPosition(spawnedNpc, true)
    SetBlockingOfNonTemporaryEvents(spawnedNpc, true)
end)


--[[exports['qtarget']:AddBoxZone("hotdogtest", vector3(-1178.6072998047, -891.78674316406, 13.745862007141), 1.5, 1.5, {
	name="hotdogtest",
	heading=34,
	debugPoly = true,
	minZ=13.0,
	maxZ=14.4,
}, {
	options = {
		{
            event = "sm_hotdog:openStand",
            icon = "fa-solid fa-hand",
            label = "Otvoriť Menu",
			job = "hotdog",
		},
	},
	distance = 1.5
})--]]


RegisterNetEvent("sm_hotdog:hotdog")
AddEventHandler("sm_hotdog:hotdog", function()
    if not delani then      
        delani = true
        local playerPed = PlayerPedId()
        TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BBQ", 0, true)
    exports.ox_inventory:Progress({
        duration = Config.Progress.durationHotdog,
        label = Config.Progress.labelHotdog,
        useWhileDead = false,
        canCancel = false,
        disable = {
            move = false,
            car = true,
            combat = true,
            mouse = false
        },
        
    }, function(cancel)
        if not cancel then
            
        end
    end)
    Wait(0)
    delani = false
    ClearPedTasksImmediately(playerPed)
    local TSC = TriggerServerEvent
    TSC('sm_hotdog:hotkecup')
end
end)

RegisterNetEvent("sm_hotdog:hotdog2")
AddEventHandler("sm_hotdog:hotdog2", function()
    if not delani then      
        delani = true
        local playerPed = PlayerPedId()
        TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BBQ", 0, true)
    exports.ox_inventory:Progress({
        duration = Config.Progress.durationHotdog,
        label = Config.Progress.labelHotdog,
        useWhileDead = false,
        canCancel = false,
        disable = {
            move = false,
            car = true,
            combat = true,
            mouse = false
        },
        
    }, function(cancel)
        if not cancel then
            
        end
    end)
    Wait(0)
    delani = false
    ClearPedTasksImmediately(playerPed)
    local TSC = TriggerServerEvent
    TSC('sm_hotdog:hottatarka')
end
end)

RegisterNetEvent("sm_hotdog:hranolky")
AddEventHandler("sm_hotdog:hranolky", function()
    if not delani then      
        delani = true
        local playerPed = PlayerPedId()
        TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BBQ", 0, true)
    exports.ox_inventory:Progress({
        duration = Config.Progress.durationFries,
        label = Config.Progress.labelFries,
        useWhileDead = false,
        canCancel = false,
        disable = {
            move = false,
            car = true,
            combat = true,
            mouse = false
        },
        
    }, function(cancel)
        if not cancel then
            
        end
    end)
    Wait(0)
    delani = false
    ClearPedTasksImmediately(playerPed)
    local TSC = TriggerServerEvent
    TSC('sm_hotdog:hranolkykecup')
end
end)

RegisterNetEvent("sm_hotdog:hranolky2")
AddEventHandler("sm_hotdog:hranolky2", function()
    if not delani then      
        delani = true
        local playerPed = PlayerPedId()
        TaskStartScenarioInPlace(playerPed, "PROP_HUMAN_BBQ", 0, true)
    exports.ox_inventory:Progress({
        duration = Config.Progress.durationFries,
        label = Config.Progress.labelFries,
        useWhileDead = false,
        canCancel = false,
        disable = {
            move = false,
            car = true,
            combat = true,
            mouse = false
        },
        
    }, function(cancel)
        if not cancel then
            
        end
    end)
    Wait(0)
    delani = false
    ClearPedTasksImmediately(playerPed)
    local TSC = TriggerServerEvent
    TSC('sm_hotdog:hranolkytatarka')
end
end)

RegisterNetEvent("sm_hotdog:openStorage")
AddEventHandler("sm_hotdog:openStorage", function()
    exports.ox_inventory:openInventory('stash', {id= 'hotdog', owner= Config.Job})
end)

RegisterNetEvent("sm_hotdog:openStand", function()
    TriggerEvent("nh-context:createMenu", {
        {
            header = "Hotdog Stand",
        },
        {
            header = Config.ContextText.headerKetchup,
            context = Config.ContextText.contextKetchup,
            event = "sm_hotdog:hotdog",
        },
		{
            header = Config.ContextText.headerMustard,
            context = Config.ContextText.contextMustard,
            event = "sm_hotdog:hotdog2",
        },
		{
            header = Config.ContextText.headerFriesKetchup,
            context = Config.ContextText.contextFriesKetchup,
            event = "sm_hotdog:hranolky",
        },
		{
            header = Config.ContextText.headerFriesTatar,
            context = Config.ContextText.contextFriesTatar,
            event = "sm_hotdog:hranolky2",
        },
        {
            header = Config.ContextText.headerJob,
            event = "sm_hotdog:openStorage",
        }
    })
end)

