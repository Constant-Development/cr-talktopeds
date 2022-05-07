Config = {}

Config.Target = 'QB'
 -- 'QB' = qb-target | https://github.com/Renewed-Scripts/qb-target
 -- 'ESX' = qtarget | https://github.com/overextended/qtarget
Config.Menu = "nh"
 -- 'qb' = qb-menu | https://github.com/qbcore-framework/qb-menu
 -- 'nh' = nh-context | https://github.com/nerohiro/nh-context
Config.Peds = {
    [1] = { -- Copy the template and add it below other entries to add as many peds as you would like.
        coords = vector3(257.32, -257.33, 54.04), -- Coordinates for the ped to spawn
        heading = 356.82, -- Heading where the ped is facing
        ped = 'a_m_m_mexlabor_01', -- Ped Hash (https://docs.fivem.net/docs/game-references/ped-models/)
        PedName = "Lucius", -- Ped Name
        Lines = { -- This is the "Discussion Matrix, with simple question/answers."
            [1] = {
                npc = "Hey... Do you want to make some money?", -- This is the line the ped says
                player = { -- These are the options the player can reply. "LineHook", is the 'Lines#' to which this answer redirects to. You can make complexe discussions by adding as much "Lines" as you would like.
                    [1] = {text = "Not really, don\'t talk to me!", LineHook = 0}, -- Set the LineHook to 0 to end the conversation.
                    [2] = {text = "Sure, what do I need to do?", LineHook = 2},
                },
            },
            [2] = {
                npc = "I know where to pick weed, are you interested?",
                player = {
                    [1] = {text ="No Nevermind!", LineHook = 0},
                    [2] = {text ="Sure, where is it?", LineHook = 3}
                }
            },
            [3] = {
                npc = "Go to the small cabin between Grapeseed and Paleto, you\'ll find some weed over there",
                player = {
                    [1] = {text = "Thank you!", LineHook = 0},
                }
            }
        },
    },
    [2] = {
        coords = vector3(254.76, -254.1, 54.0),
        heading = 281.01,
        ped = 'a_f_y_bevhills_04',
        PedName = "Livia",
        Lines = {
            [1] = {
                npc = "Hey... Are you interested in some wine?",
                player = {
                    [1] = {text = "No, I don\'t drink...", LineHook = 0},
                    [2] = {text = "Yes! I love wine!", LineHook = 2},
                },
            },
            [2] = {
                npc = "You should go to the vineyard, they have great stock!",
                player = {
                    [1] = {text ="Yeah no... That\'s too far..", LineHook = 0},
                    [2] = {text ="Sure, where is it?", LineHook = 3}
                }
            },
            [3] = {
                npc = "You should see a \"blip\" on your GPS called \"Vineyard\", go to it!",
                player = {
                    [1] = {text = "Okay thank you!", LineHook = 0},
                }
            },
            [4] = {
                npc = "Alright, you do you!",
            }
        },
    },
}