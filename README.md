# Developed By Constant Development #

Direct Creators: xoraphox#2938 | SixGrams#0544

Constant Development Discord: https://discord.gg/gSQbshCNv4

Constant Development Tebex: https://constant-development.tebex.io/

Constant RolePlay Discord: https://discord.gg/constantroleplay

If you run into any issues with this Resource, please Contact a member of the Constant Development Team via our Discord! :)

## Dependenices
Either
- [qb-menu](https://github.com/qbcore-framework/qb-menu)
or
- [nh-context](https://github.com/qbcore-framework/qb-menu)
This is a Standalone Menu System which any Framework is permitted to use. This further relates to this Resource being useful for ESX and QBCore directly though with simple Target changes can be useful for vRP.

## Targets Supported
- [qb-target](https://github.com/Renewed-Scripts/qb-target) 
- [qtarget](https://github.com/overextended/qtarget) qtarget is compatible with ESX, please notify us if you would like other Target Systems added

## Features
* Talk To PEDs System
- Have conversations with PEDs !
- Possibility to trigger different events after every line said! 
- System is Standalone and Target Required

## Event Triggering (How To)
- 1. First create the trigger for the event in cr-talktopeds/events.lua
- 2. In the TalkToPedsEvents function, add an elseif statement comparing the 'event' variable to your Trigger Name, to the list seen in the function.
- 3. Compare the elseif with the Trigger Name chosen (ie. elseif event  == "TriggerName then)
- 4. Inside the newly made elseif statement, add the event that you want to trigger. It can be made inside the statement, in the file, or simply an event from an other resource. (See examples in the events.lua file.)
- 5. You can add as many elseif statements as you want.

## Changelog
- v1.1
    Added Ped Idle (Looped) Animations
    Added Event Triggering
    Added Debug Prints
    Fix Peds sometimes not spawning issue
- v1.0.3
    Added nh-context support
- v1.0.2
    Linting (Thanks iLLeniumStudios#6144)
- v1.0.1
    Multiple Ped Spawning Fix
- v1.0
    Initial Release


https://www.dmca.com/r/9kxjrkm
