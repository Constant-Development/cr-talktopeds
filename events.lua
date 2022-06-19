-- This file is to make events for you to be able to trigger after any lines said by either the player or the NPC
-- You need to match the "event" with the event name you put in either the "npcEventTrigger" or the "Triggers" values in the config file.
-- You can then put anything you want as a result. The simplest is triggering an other script's event like the example below.
-- To trigger Client Events use 'TriggerEvent(event)' | To trigger Server Events use 'TriggerServerEvent(event)'
-- You can trigger events from any scripts in your server.
-- This is a client file.

function TalkToPedsEvents(event)
    if event == "WeedBlip" then
        TriggerEvent("cr-talktopeds:client:SendWeedBlip")

    elseif event == "example" then
        TriggerServerEvent("cr-exampleresource:server:exampleEvent")

    elseif event == "example_2" then
        local loc = vector3(2207.09, 5596.46, 53.74)
        SetNewWaypoint(loc.x, loc.y)
    --elseif event == "YourTriggerName" then
        -- TriggerEvent (Client Sided Event)
        -- TriggerServerEvent (Server Sided Event)
        -- Any Code
    end
end

-- This is an example event. You don't need to place your events below, you can simply call them from any script.

RegisterNetEvent("cr-talktopeds:client:SendWeedBlip", function()
    local loc = vector3(2207.09, 5596.46, 53.74)
    SetNewWaypoint(loc.x, loc.y)
end)