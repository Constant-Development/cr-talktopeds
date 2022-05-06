local function ActivatePedTarget(ped, k)
    if Config.Target == "QB" or "qb" then
        exports['qb-target']:AddTargetEntity(ped, {
            options = {
                {
                    type = "client",
                    event = "cr-talktopeds:client:NPC",
                    icon = "fas fa-comments",
                    label = "Speak with "..Config.Peds[k].PedName,
                    entity = ped,
                    ped = k

                },
            },
            distance = 3.0
        })
    elseif Config.Target == "ESX" then
        exports['qtarget']:AddTargetEntity(ped, {
            options = {
                {
                    event = "cr-talktopeds:client:NPC",
                    icon = "fas fa-comments",
                    label = "Speak with "..Config.Peds[k].PedName,
                    entity = ped,
                    ped = k
                },
            },
            distance = 2
        })
    end
end

Citizen.CreateThread(function()
    for k, v in pairs(Config.Peds) do
        RequestModel(v.ped)
        while not HasModelLoaded(v.ped) do
            Wait(20)
        end
        local inRange = false
        local spawned = v.spawned
        while not spawned do
            local ped = PlayerPedId()
            local pedCoords = GetEntityCoords(ped)
            local dist = #(pedCoords - v.coords)
            
            if dist <= 500 then
                inRange = true
            end
    
            if dist <= 100 then
                TriggerServerEvent("cr-talktopeds:server:SpawnPed", k)
                break
            end
            
            if not inRange then
                Wait(2000)
            end
            Wait(100)
        end
        Wait(100)
    end
end)

RegisterNetEvent('cr-talktopeds:client:SpawnPed', function(SpawnedPed)
    local npc = CreatePed(0, Config.Peds[SpawnedPed].ped, Config.Peds[SpawnedPed].coords['x'], Config.Peds[SpawnedPed].coords['y'], Config.Peds[SpawnedPed].coords['z']-1, Config.Peds[SpawnedPed].heading, false, 1)
    TriggerServerEvent("cr-talktopeds:server:Syncing", SpawnedPed)
    SetEntityAsMissionEntity(npc, true, true)
    SetBlockingOfNonTemporaryEvents(npc, true)
    FreezeEntityPosition(npc, true)
    SetEntityInvincible(npc, true)
    ActivatePedTarget(npc, SpawnedPed)
    Config.Peds[SpawnedPed].spawned = true
end)

RegisterNetEvent('cr-talktopeds:client:NPC')
AddEventHandler('cr-talktopeds:client:NPC', function(data)
    local Name = Config.Peds[data.ped].PedName
    local line = 1
    if data.hookto then
        line = data.hookto
    end
    if line ~= 0 then
        local msg = Config.Peds[data.ped].Lines[line].npc
        local myMenu = {
            {
                id = 1,
                header = Name,
                isMenuHeader = true
            },
            {
                header = msg,
                params = {
                event = "cr-talktopeds:client:Talk",
                args = {
                    ped = data.ped,
                    hookto = line
                }
            }
            }
        }
        exports['qb-menu']:openMenu(myMenu)
    end
end)

RegisterNetEvent('cr-talktopeds:client:Talk')
AddEventHandler('cr-talktopeds:client:Talk', function(data)
    local line = 1
    local msg
    local myMenu = {
        {
            id = 1,
            header = "You",
            isMenuHeader = true
        },
    }
    if data.hookto ~= nil then
        line = data.hookto
    end
    for _, v in pairs (Config.Peds[data.ped].Lines[line].player) do
        msg = v.text
        myMenu[#myMenu+1] = {
            header = msg,
            --text = desc,
            params = {
                event = "cr-talktopeds:client:NPC",
                args = {
                    ped = data.ped,
                    hookto = v.LineHook
                }
            }
        }
    end
    exports['qb-menu']:openMenu(myMenu)
end)
