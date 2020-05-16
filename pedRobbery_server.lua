ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent("cl-keys:completed")
AddEventHandler("cl-keys:completed", function(cash)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addMoney(cash)
    TriggerClientEvent('notification', source, 'You got $' .. cash, 1)

end)