RegisterNetEvent('cr-talktopeds:server:PedSync', function(SpawnedPed)
    if not Config.Peds[SpawnedPed].spawned then
        TriggerClientEvent("cr-talktopeds:client:SpawnPed", source, SpawnedPed)
        Config.Peds[SpawnedPed].spawned = not Config.Peds[SpawnedPed].spawned
    end
end)