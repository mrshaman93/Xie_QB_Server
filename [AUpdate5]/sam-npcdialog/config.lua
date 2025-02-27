Config = {}

Config.Peds = {
    [1] = {
        ["model"] = "s_m_y_cop_01",
        ["coords"] = vector4(437.20, -978.73, 29.67, 185.0),
        ["cam"] = vector4(437.25, -979.13, 31.30, 0.0), -- If the camera angle doesn't look right, give the heading a full negative value, e.g. -93.0 instead of 93.0. If this doesn't work, enter the heading value of the direction your pad is facing the npc!
        ["markerCoord"] = vector3(437.25, -979.00, 30.85),
        ["interactive"] = {
            --["type"] = "target", -- or fivem keys https://docs.fivem.net/docs/game-references/controls/
            ["type"] = 38,-- https://docs.fivem.net/docs/game-references/controls/

            ["key_label"] = "e", -- If type fivem is converted to index key, the name of the key must be entered "E"
            ["text"] = "Talk to npc", -- Text that will appear when you approach the npc
            ["icon"] = "fa-solid fa-people-arrows",
            ["distance"] = 2, -- Interactive distance
            
            ["uiMarker"] = false, -- If you make it True, you will have a nice image on the screen, but I do not recommend it for resmon.
            ["uiDrawText"] = true, -- If you make it True, you will have a nice text on the screen, but I do not recommend it for resmon.

            ["drawmarker_distance"] = 4,
            ["interactiveState"] = false, -- -- Don't touch this
            ["drawmarker_math"] = 46 -- 它是根據近距離和距離放大標記的分裂過程的一部分。
        },
        ["modal_style"] = "error", -- warning, error, success, question or np
        ["animDict"] = "amb@code_human_police_investigate@idle_a",
        ["animName"] = "idle_b",
        ["name"] = { -- Ped name
            ["firstname"] = "Frank", 
            ["lastname"] = "Miller",
        },
        ["title"] = "police", -- the text you want to appear maybe character task etc.
        ["question"] = "You want to work with us? Being a cop is hard. You have to know the law well and know how to fight criminals. If you want to work with us as a trainee and learn many things from the beginning, I can say yes!", -- question or text
        ["options"] = {
            ["option1"] = {
                ["button"] = 1, -- A, B, C, D or 1, 2, 3, 4, 
                ["label"] = "Yes, Start as an assistant.", -- The answer to the option will appear in the person
                ["funcion_name"] = "setNewJob", -- Function name
                ["selected"] = false, -- Don't touch this
            },
            ["option2"] = {
                ["button"] = 2, -- A, B, C, D or 1, 2, 3, 4, 
                ["label"] = "I don't trust myself", -- The answer to the option will appear in the person  
                -- ["funcion_name"] = "setNewJob", -- Function name
                ["selected"] = false, -- Don't touch this
            },
        },
        setNewJob = function()
            -- Your export or triggers here
        end
    }
}

