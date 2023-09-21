local stash = {
    id = 'hotdog',
    label = 'Hotdog Stand',
    slots = 100,
    weight = 100000,
    owner = Config.Job
}
 
AddEventHandler('onServerResourceStart', function(resourceName)
    if resourceName == 'ox_inventory' or resourceName == GetCurrentResourceName() then
        exports.ox_inventory:RegisterStash(stash.id, stash.label, stash.slots, stash.weight, stash.owner)
    end
end)

RegisterServerEvent("sm_hotdog:hotkecup")
AddEventHandler("sm_hotdog:hotkecup", function(data)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    if xPlayer.job.name == Config.Job then
    else 
        TriggerClientEvent('esx:showNotification', source, 'Invalid Job')
    end

        local Inventory = exports.ox_inventory:Inventory()
        if Inventory.GetItem(source, "pecivo").count > 0 and Inventory.GetItem(source, "kecup").count > 0 and Inventory.GetItem(source, "salad").count > 0 and Inventory.GetItem(source, "parok").count > 0 then
            
        if Inventory.CanCarryItem(source, "hotdog", 1) then
                Inventory.AddItem(source, "hotdog", 1)
                Inventory.RemoveItem(source, "pecivo", 1)
                Inventory.RemoveItem(source, "kecup", 1)
                Inventory.RemoveItem(source, "salad", 1)
        else
            TriggerClientEvent('esx:showNotification', source, 'You dont have enough space!')
       end
    else 
        TriggerClientEvent('esx:showNotification', source, 'You dont have enough materials!')
    end
end)

RegisterServerEvent("sm_hotdog:hottatarka")
AddEventHandler("sm_hotdog:hottatarka", function(data)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    if xPlayer.job.name == Config.Job then
    else 
        TriggerClientEvent('esx:showNotification', source, 'Invalid Job')
    end

        local Inventory = exports.ox_inventory:Inventory()
        if Inventory.GetItem(source, "pecivo").count > 0 and Inventory.GetItem(source, "tatarka").count > 0 and Inventory.GetItem(source, "salad").count > 0  and Inventory.GetItem(source, "parok").count > 0 then
            
        if Inventory.CanCarryItem(source, "hotdog_tatarka", 1) then
                Inventory.AddItem(source, "hotdog_tatarka", 1)
                Inventory.RemoveItem(source, "pecivo", 1)
                Inventory.RemoveItem(source, "tatarka", 1)
                Inventory.RemoveItem(source, "salad", 1)
        else
            TriggerClientEvent('esx:showNotification', source, 'You dont have enough space!')
       end
    else
        TriggerClientEvent('esx:showNotification', source, 'You dont have enough materials!')
    end
end)

RegisterServerEvent("sm_hotdog:hranolkykecup")
AddEventHandler("sm_hotdog:hranolkykecup", function(data)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    if xPlayer.job.name == Config.Job then
    else 
        TriggerClientEvent('esx:showNotification', source, 'Invalid Job')
    end

        local Inventory = exports.ox_inventory:Inventory()
        if Inventory.GetItem(source, "mz_hranolky").count > 0 and Inventory.GetItem(source, "kecup").count > 0 then
            
        if Inventory.CanCarryItem(source, "hranolky_kecup", 1) then
                Inventory.AddItem(source, "hranolky_kecup", 1)
                Inventory.RemoveItem(source, "mz_hranolky", 1)
                Inventory.RemoveItem(source, "kecup", 1)
        else
            TriggerClientEvent('esx:showNotification', source, 'You dont have enough space!')
       end
    else
        TriggerClientEvent('esx:showNotification', source, 'You dont have enough materials!')
    end
end)

RegisterServerEvent("sm_hotdog:hranolkytatarka")
AddEventHandler("sm_hotdog:hranolkytatarka", function(data)
    local _source = source
    local xPlayer = ESX.GetPlayerFromId(_source)

    if xPlayer.job.name == Config.Job then
    else 
        TriggerClientEvent('esx:showNotification', source, 'Invalid Job')
    end

        local Inventory = exports.ox_inventory:Inventory()
        if Inventory.GetItem(source, "mz_hranolky").count > 0 and Inventory.GetItem(source, "tatarka").count > 0 then
            
        if Inventory.CanCarryItem(source, "hranolky_tatarka", 1) then
                Inventory.AddItem(source, "hranolky_tatarka", 1)
                Inventory.RemoveItem(source, "mz_hranolky", 1)
                Inventory.RemoveItem(source, "tatarka", 1)
        else
            TriggerClientEvent('esx:showNotification', source, 'You dont have enough space!')
       end
    else
        TriggerClientEvent('esx:showNotification', source, 'You dont have enough materials!')
    end
end)