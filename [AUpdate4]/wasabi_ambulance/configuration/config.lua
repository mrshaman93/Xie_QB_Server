-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

local seconds, minutes = 1000, 60000
Config = {}

-------------------------------------------------------------------
-- TO MODIFY NOTIFICATIONS TO YOUR OWN CUSTOM NOTIFICATIONS:-------
------ Navigate to wasabi_bridge/customize/cl_customize.lua -------
-------------------------------------------------------------------
Config.CheckForUpdates = true     -- Check for updates? Who would not want to know updates!?

Config.ambulanceJob = 'ambulance' -- If you need rename your ambulancejob to something else? Likely will stay as is
Config.MuteDeadPlayers = false    -- If a player is dead, should he be muted?
Config.DeathLogs = false          -- Enable death logs via Discord webhook?(Set up in configuration/deathlogs.lua)
Config.ReviveLogs = false         -- Enable admin revive logs via Discord webhook? (Linked specifically to admin revives / will not log ALL revives)
Config.LogIPs = false             -- If Config.DeathLogs/Config.ReviveLogs enabled, do you want to logs IP addresses as well?
Config.BagProp = `xm_prop_x17_bag_med_01a`
Config.StretcherProp = 'prop_ld_binbag_01'
Config.UseRadialMenu = false   -- Enable use of radial menu built in to ox_lib? (REQUIRES OX_LIB 3.0 OR HIGHER - Editable in client/radial.lua)
Config.StretcherKey = 38       -- Key to place the stretcher on the ground
Config.EnableAnimReset = false -- If your death animation does not run correctly, then enable this
Config.MobileMenu = {          -- Enabling this will use ox_lib menu rather than ox_lib context menu!
    enabled = false,           -- Use a mobile menu from ox_lib rather than context? (Use arrow keys to navigate menu rather than mouse)
    position =
    'bottom-right'             -- Choose where menu is positioned. Options : 'top-left' or 'top-right' or 'bottom-left' or 'bottom-right'
}
Config.ProgressCircle = true   -- Set to false to use a progress bar, set to true for progress circle(For checking in, diagnosing, etc)

Config.policeCanTreat = {
    enabled = true, -- Police can treat patients?
    jobs = {        -- Police / other jobs
        'police',
        --    'sheriff',
    }
}

-- Enabled keys while dead and while on stretcher
-- https://docs.fivem.net/docs/game-references/controls/
Config.EnabledKeys = {
    dead = { -- while dead
        1,   -- Camera Pan(Mouse)
        2,   -- Camera Tilt(Mouse)
        38,  -- E Key
        46,  -- E Key
        47,  -- G Key
        245, -- T Key
        --249 -- N Key (default key to speak while dead)
    },

    stretcher = { -- while alive on stretcher
        1,        -- Camera Pan(Mouse)
        2,        -- Camera Tilt(Mouse)
        245,      -- T Key
        249       -- N Key (default key to speak while dead)
    }
}

-- Ambulances and their offsets for placing stretcher within vehicle
Config.AmbulanceOffsets = {

    ['ambulance'] = {            -- Vehicle model name
        trunkAsBackDoor = false, -- If the back doors are the trunk, if they are doors then set as false
        --    pos = { x = -0.26, y = -1.3, z = 0.3 }, -- Offset position
        --    rot = { x = -1.3, y = 0.0, z = 360.0 } -- Rotation
        pos = { x = 0.0, y = -3.0, z = 0.68 },
        rot = { x = -1.3, y = 0.0, z = 90.0 }
    },

    ['20ramambo'] = {           -- Rednecks generic 2020 ambulance
        trunkAsBackDoor = true, -- If the back doors are the trunk, if they are doors then set as false
        pos = { x = 0.0, y = -3.0, z = 1.0 },
        rot = { x = -1.3, y = 0.0, z = 360.0 }
    },

    ['ec135'] = {
        trunkAsBackDoor = false, -- If the back doors are the trunk, if they are doors then set as false
        pos = { x = -0.26, y = -0.6, z = -0.1 },
        rot = { x = -1.3, y = 0.0, z = 360.0 }
    }
}

Config.GPSBlips = {  -- Warning: May experience high usage when at high player count. Possibly turn up refreshrate as remedy!
    enabled = false, -- Enabled?
    refreshrate = 5, -- In Seconds Note: it could impact the server performance
    item = false,    -- Item required? Note: You have to use it then
    blip = {
        sprite = 1,
        color = 1,
        scale = 1.0,
        short = false,
    }
}

-- Position for the draw Text while you are dead
Config.MessagePosition = {
    respawn = { x = 0.5, y = 0.8 },
    bleedout = { x = 0.5, y = 0.8 },
    distress = { x = 0.175, y = 0.8 },
}

-- Dead animation
Config.DeathAnimation = {
    anim = 'mini@cpr@char_b@cpr_def',
    lib = 'cpr_pumpchest_idle'
}

-- Knockout Feature (If you want players to be knocked out)
Config.KnockoutFeature = {
    enabled = false,           -- Enable knockout features? (player's can knock eachother out using fist fighting)
    healthForKnockout = 150,   -- At what HP will player knockout from fist fighting
    fistDamageModifier = 0.25, -- How much damage will fist cause? (1.0 is default, 0.5 is half as strong, etc)
    duration = 7 * seconds     -- Time to be knocked out when occurs?
}

-- Last Stand (2 Stage death)
Config.LastStand = true                -- Enable a 2 stage death. Where initially you can crawl around(Similiar to qb-ambulancejob)
Config.DisableLastStandCrawl = false   -- Disable crawling within last stand
Config.LastStandTickTime = 5 * seconds -- Everytime this time passes while in last stand, a random amount(8-15) amount of
-- health will be deducted to similuate bleeding out

-- Death screen effects
Config.DeathScreenEffects = true -- 在死亡时，在死者屏幕上启用黑暗的覆盖层

-- Live injury
Config.EnableLiveInjury = true                             -- Enable live injury system?

Config.DamageDetectThreshold = { armour = 5, health = 10 } -- Damage threshold to detect injury (Default: {armour = 5, health = 10})

Config.BleedMultiplier = {
    shot = 2,    -- How much blood rate to loose when shot
    stabbed = 2, -- How much blood rate to loose when stabbed
    beat = 0,    -- How much blood rate to loose when beat
    burned = 0,  -- How much blood rate to loose when burned
}

Config.BypassInjuryWeapons = { -- Hashes placed in this table will bypass injury reasons
    `WEAPON_UNARMED`,
    `WEAPON_STUNGUN`,
    `WEAPON_DROWNING`,
    `WEAPON_DROWNING_IN_VEHICLE`,
    --  `WEAPON_FALL`,
}


Config.InjuryNotification = true                 -- Enable injury notification?
Config.InjuryNotificationFrequency = 1 * minutes -- How often to notify player of injury

Config.DisableNoJumpInjury = false               -- Disable when being injured that you cant job on occasion
Config.EnablePainPills = true                    -- Enable pain pills? Used to aliviate injurys temporarily

Config.PainPills = {                             -- Add more as you please. The level field simulates the severity of the narcodic; exceed 10 and it could be deadly
    --  ['ITEM_NAME'] = { label = 'ITEM_LABEL', duration = SECONDS }
    ['morphine30'] = { label = '吗啡 30MG', duration = 120, level = 9 },
    ['morphine15'] = { label = '吗啡 15MG', duration = 50, level = 5 },
    ['perc30'] = { label = '乙醯胺酚 30MG', duration = 60, level = 6 },
    ['perc10'] = { label = '乙醯胺酚 10MG', duration = 45, level = 4 },
    ['perc5'] = { label = '乙醯胺酚 5MG', duration = 30, level = 2 },
    ['vic10'] = { label = '氢可酮 10MG', duration = 40, level = 3 },
    ['vic5'] = { label = '氢可酮 5MG', duration = 20, level = 2 },

}

-- 3rd party scripts
Config.wasabi_crutch = { -- If you use wasabi_crutch:
    ------------------------------------------------------
    --             If you use wasabi_crutch             --
    -- https://store.wasabiscripts.com/category/2080869 --
    ------------------------------------------------------

    -- Crutch Settings
    crutchInMedbag = { -- Enabled? Item name? REQUIRES WASABI_CRUTCH
        enabled = false,
        item = 'crutch'
    },
    crutchInJobMenu = false, -- Crutch menu accessible from job menu if true. REQUIRES WASABI_CRUTCH
    crutchOnBleedout = {     -- Place crutch for certain amount of time if they fully bleedout to hospital
        enabled = false,     -- Requires wasabi_crutch
        duration = 3         -- How long stuck with crutch after respawn(In minutes)
    },
    crutchOnCheckIn = {      -- Place crutch for certain amount of time if they check in to hospital REQUIRES WASABI_CRUTCH
        enabled = false,     -- Requires wasabi_crutch
        duration = 3         -- How long stuck with crutch after check-in(In minutes)
    },
    -- Chair settings
    chairInMedbag = { -- Enabled? Item name? REQUIRES WASABI_CRUTCH
        enabled = false,
        item = 'wheelchair'
    },
    chairInJobMenu = false -- Chair menu accessible from job menu if true. REQUIRES WASABI_CRUTCH
}

Config.EnviPrescriptions = {
    ---------------------------------------------------
    --       If you use Envi Prescriptions:          --
    -- https://envi-scripts.tebex.io/package/5604452 --
    ---------------------------------------------------
    enabled = false, --启用可以将处方的选项添加到作业菜单
    minRank = 1      -- Minimum job level/grade to have this option available
}

Config.phoneDistress = false        -- Options: 'gks' (GKS Phone - ESX ONLY) / 'qs' (qs-smartphone) / 'd-p' (d-phone) / 'lb' (lb-phone) WILL REPLACE BUILT IN DISPATCH WITH PHONE DISPATCH / Add additonal dispatch in client/cl_customize.lua
Config.customCarlock = false        -- If you use wasabi_carlock OR qb-carlock(Or want to add your own key system to wasabi_bridge/customize/cl_customize.lua)
Config.MythicHospital = false       -- If you use that old injury script by mythic. (Added per request to reset injuries on respawn)
Config.AdvancedParking = false      -- If you use AdvancedParking (Deletes vehicles with their exports)
Config.FuelSystem = 'legacy'        -- 'legacy' (LegacyFuel) / 'ox' (ox_fuel) / 'default'

Config.jobMenu = 'F6'               -- Default job menu key
Config.billingSystem = 'qb'                                -- Current options: 'esx' (For esx_billing) / 'qb' (For qbcore users) 'okok' (For okokBilling) / 'pefcl' (For NPWD billing system) (Easy to add more in editable client - SET TO false IF UNDESIRED) or of course false to disable
Config.targetSystem = true          -- Target system for targetting players, medbags, and stretcher(If disabled with replace with menus/3D text) (Compatible out of the box with qTarget, qb-target, and ox_target)

Config.RespawnTimer = 5 * minutes   -- Time before optional respawn
Config.BleedoutTimer = 10 * minutes -- Time before it forces respawn

Config.removeItemsOnDeath = false   -- Must have Config.Inventory set properly
Config.Inventory = 'qb'                                --Options include: 'ox' - (ox_inventory) / 'qb' - (QBCore qb-inventory) 'mf' - (mf-inventory) / 'qs' (qs-inventory) / 'esx' (default esx) / 'other' (whatever else can customize in client/cl_customize.lua)

Config.AntiCombatLog = {            -- 启用后会杀死死者时登记的球员
    enabled = false,                --  enabled?
    notification = {
        enabled = true,             -- enabled notify of wrong-doings??
        title = '死亡后重登',
        desc = '你离线时死亡，现在恢复死亡状态'
    }
}

Config.CompleteDeath = { --DOES NOT APPLY TO QBCORE --  When enabled players can no longer use their character after x deaths
    --DOES NOT APPLY TO QBCORE --  ONLY SUPPORTS esx_multicharacter / You can edit it in server/sv_customize.lua
    enabled = false,     -- enabled?
    maxDeaths = 100,     -- Max 255
}

Config.Bandages = {
    enabled = false,       -- Useable bandages? (Leave false if ox_inventory because they're built in)
    item = 'bandage',      -- YOU MUST ADD THIS ITEM TO YOUR ITEMS, IT DOES NOT COME IN INSTALLATION(COMES WITH QBCORE BY DEFAULT AS ITEM)
    hpRegen = 30,          -- Percentage of health it replenishes (30% by default)
    duration = 7 * seconds -- Time to use
}

Config.EMSItems = {
    revive = {
        item = 'defib', -- Item used for reviving
        remove = false  -- Remove item when using?
    },
    heal = {
        item = 'medikit',       -- Item used for healing
        duration = 5 * seconds, -- Time to use
        remove = true           -- Remove item when using?
    },
    sedate = {
        item = 'sedative',      -- Item used to sedate players temporarily
        duration = 8 * seconds, -- Time sedative effects last
        remove = true           -- Remove item when using?
    },
    medbag = 'medbag',          -- Medbag item name used for getting supplies to treat patient
}

Config.ReviveRewards = {
    enabled = true,           -- Enable cash rewards for reviving
    paymentAccount = 'money', -- If you have old ESX 1.1 you may need to switch to 'cash'
    no_injury = 400,          -- If above enabled, how much reward for fully treated patient with no injury in diagnosis
    burned = 600,             -- How much if player is burned and revived without being treated
    beat = 800,               -- So on, so forth
    stabbed = 1000,
    bleedout = 1000,          -- NEW
    shot = 1500,
}

Config.ReviveHealth = { -- How much health to deduct for those revived without proper treatment
    shot = 60,          -- Ex. If player is shot and revived without having the gunshots treated; they will respond with 60 health removed
    stabbed = 50,
    beat = 40,
    burned = 20
}

Config.TreatmentTime = 9 * seconds -- Time to perform treatment
Config.DiagnoseTime = 7 * seconds  -- Time to diagnose patient

Config.TreatmentItems = {
    shot = 'tweezers',
    stabbed = 'suturekit',
    beat = 'icepack',
    burned = 'burncream'
}

Config.lowHealthAlert = {
    enabled = false,
    health = 140, -- Notify when at HP (200 full health / 100 is death)
    notification = {
        title = '注意',
        description = '你身体不好，你应该快去看医生!'
    }
}

Config.EnableStandaloneCheckIns = false -- Enable stand-alone check-in locations? For grandmas, prisons, whatever
Config.StandaloneCheckIns = {

    Prison = { -- Example, QB Prison check-in
        Ped = 's_m_m_scientist_01', -- Check in ped
        Coords = vec3(1729.03, 2563.33, 45.56 - 0.9), -- Coords of ped
        Distance = 4.85, -- Distance to show textUI (If target is not enabled below)
        Heading = 181.42, -- Heading of ped
        Cost = 5, -- Cost of using hospital check-in. Set to false for free
        Duration = 15 * seconds, -- Time it takes to spend in hospital bed
        PayAccount = 'bank', -- Account dead player pays from to check-in
        Label = '[E] - 住院', -- label of text UI if target is not enabled below
        HotKey = 38, -- Default: 38 (E) (If target below is not enabled)
        Target = {
            enabled = true, -- Enable Target? (Can be customized in wasabi_bridge/customize/cl_customize.lua the target system)
            label = '住院',
            coords = vec3(1729.03, 2563.33, 45.56),
            heading = 63.26,
            distance = 5.0,
            width = 2.0,
            length = 1.0,
            minZ = 43.28 - 0.9,
            maxZ = 43.28 + 0.9
        },
        DisableHospitalBeds = true, -- Disable hospital beds for check-in at this location?(Player will spend Duration checking in before respawning in place when set to false)
        HospitalBeds = {
            --              { coords = vec3(332.62, -587.17, 42.84), heading = 160.0, model = 1631638868 },
            { coords = vec3(-1862.7, -334.29, 49.19), heading = 322.0, model = 1570477186 },
        }
    },


}

Config.Locations = {
    Pillbox = {
        RespawnPoint = { -- When player dies and bleeds out; they will revive at nearest hospital; Define the coords of this hospital here.
            coords = vector3(329.68, -595.77, 43.25),
            heading = 43.6
        },

        Blip = {
            Enabled = true,
            Coords = vec3(295.05, -579.67, 43.18),
            Sprite = 61,
            Color = 2,
            Scale = 1.0,
            String = '洛圣都医院'
        },

        clockInAndOut = {
            enabled = true, -- Enable clocking in and out at a set location? (If using ESX you must have a off duty job for Config.ambulanceJob with same grades - example in main _install_first directory)
            coords = vector3(303.96, -595.29, 43.25), -- Location of where to go on and off duty(If not using target)
            label = '[E] - 值班/下班', -- Text to display(If not using target)
            distance = 3.0, -- Distance to display text UI(If not using target)
            target = {
                enabled = false, -- If enabled, the location and distance above will be obsolete
                label = '值班/下班',
                coords = vector3(303.96, -595.29, 43.25),
                heading = 337.07,
                width = 2.0,
                length = 1.0,
                minZ = 43.28 - 0.9,
                maxZ = 43.28 + 0.9
            }
        },

        PersonalLocker = {
            enabled = true, -- Enable personal locker(stash) - THIS IS CURRENTLY ONLY AVALIABLE IN QB-INVENTORY
            coords = vector3(307.66, -599.43, 43.22), -- Location of where to access personal locker (If target is disabled)vector3(-1854.82, -331.31, 49.45)
            label = '[E] - 访问个人储物柜', -- Text to display(If not using target)
            distance = 1.5, -- Distance to display text UI(If not using target)
            target = {
                enabled = false, -- If enabled, the location and distance above will be obsolete
                label = '个人储物柜',
                coords = vector3(307.66, -599.43, 43.22),
                heading = 70.18,
                width = 2.0,
                length = 1.0,
                minZ = 43.28 - 0.9,
                maxZ = 43.28 + 0.9
            }
        },


        BossMenu = {
            Enabled = true, -- Enabled boss menu?
            Coords = vector3(299.68, -594.91, 43.25), -- Location of boss menu (If not using target)vector3(-1888.27, -321.24, 84.01)
            Label = '[E] - 领导菜单', -- Text UI label string (If not using target)
            Distance = 2.5, -- Distance to allow access/prompt with text UI (If not using target)
            Target = {
                enabled = false, -- Enable Target? (Can be customized in wasabi_bridge/customize/cl_customize.lua the target system)
                label = '领导菜单',
                coords = vector3(299.68, -594.91, 43.25),
                heading = 269.85,
                width = 2.0,
                length = 1.0,
                minZ = 43.21 - 0.9,
                maxZ = 43.21 + 0.9
            }
        },

        CheckIn = { -- Hospital check-in
            Enabled = true, -- Enabled?
            Ped = 's_m_m_scientist_01', -- Check in ped
            Coords = vector3(309.9, -580.91, 42.25), -- Coords of ped vector3(-1850.94, -339.55, 49.44)
            Distance = 4.85, -- Distance to show textUI (If target is not enabled below)
            Heading = 67.76, -- Heading of ped
            Cost = 300, -- Cost of using hospital check-in. Set to false for free
            Duration = 15 * seconds, -- Time it takes to spend in hospital bed
            MaxOnDuty = 3, -- If this amount or less you can use, otherwise it will tell you that EMS is avaliable(Set to false to always enable check-in)
            PayAccount = 'bank', -- Account dead player pays from to check-in
            Label = '[E] - 住院', -- label of text UI if target is not enabled below
            HotKey = 38, -- Default: 38 (E) (If target below is not enabled)
            Target = {
                enabled = false, -- Enable Target? (Can be customized in wasabi_bridge/customize/cl_customize.lua the target system)
                label = '住院',
                coords = vector3(309.9, -580.91, 43.25),
                heading = 307.95,
                distance = 5.0,
                width = 2.0,
                length = 1.0,
                minZ = 43.28 - 0.9,
                maxZ = 43.28 + 0.9
            },
            DisableHospitalBeds = false, -- Disable hospital beds for check-in at this location?(Player will spend Duration checking in before respawning in place when set to false)
            HospitalBeds = {
                --              { coords = vec3(332.62, -587.17, 42.84), heading = 160.0, model = 1631638868 },
                --[[ { coords = vec3(-247.76, 6314.3, 32.45),  heading = 43.95, model = 1004440924 }, --vector4(-1862.7, -334.29, 50.19, 322.94)
                { coords = vec3(-251.71, 6310.57, 32.45), heading = 43.95, model = 1004440924 }, --vector4(-1865.92, -332.13, 50.19, 327.82)
                { coords = vec3(-255.2, 6306.93, 32.45), heading = 43.95, model = 1004440924 }, ]] --vector4(-1868.66, -329.69, 50.19, 317.65)
                --[[ { coords = vec3(313.93, -579.04, 42.84), heading = 340.0, model = 1570477186 },
                { coords = vec3(311.06, -582.96, 42.84), heading = 160.0, model = 1570477186 },
                { coords = vec3(307.72, -581.75, 42.84), heading = 160.0, model = 1570477186 },
                { coords = vec3(309.35, -577.38, 42.84), heading = 340.0, model = 1631638868 },
                { coords = vec3(361.36, -581.3, 42.83), heading = 250.0, model = 1631638868 },
                { coords = vec3(359.54, -586.23, 42.84), heading = 250.0, model = 1631638868 },
                { coords = vec3(354.44, -600.19, 42.85), heading = 250.0, model = 1631638868 },
                { coords = vec3(324.26, -582.8, 42.84), heading = 340.0, model = 1631638868 }, ]]
                { coords = vector3(309.55, -572.35, 42.8), heading = 337.17, model = -919002147 },
                { coords = vector3(310.82, -569.12, 42.79), heading = 337.17, model = 1352121867 },
                { coords = vector3(312.03, -565.96, 42.79), heading = 337.17, model = 1352121867 },
                -- Stock qb-ambulance hospital bed coords:
                --                { coords = vec3(353.1, -584.6, 43.11), heading = 152.08, model = 1631638868 },
                --                { coords = vec3(356.79, -585.86, 43.11), heading = 152.08, model = 1631638868 },
                --                { coords = vec3(354.12, -593.12, 43.1), heading = 336.32, model = 2117668672 },
                --                { coords = vec3(350.79, -591.8, 43.1), heading = 336.32, model = 2117668672 },
                --                { coords = vec3(346.99, -590.48, 43.1), heading = 336.32, model = 2117668672 },
                --                { coords = vec3(360.32, -587.19, 43.02), heading = 152.08, model = -1091386327 },
                --                { coords = vec3(349.82, -583.33, 43.02), heading = 152.08, model = -1091386327 },
                --                { coords = vec3(326.98, -576.17, 43.02), heading = 152.08, model = -1091386327 }
            }

        },

        Cloakroom = {
            Enabled = true,
            Coords = vec3(332.59, -591.15, 43.28), -- Coords of cloakroom
            Label = '[E] - 更衣', -- String of text ui of cloakroom
            HotKey = 38, -- Default: 38 (E)
            Range = 1.5, -- Range away from coords you can use.
            Uniforms = { -- Uniform choices
                [1] = { -- Order it will display
                    label = '医护', -- Name of outfit that will display in menu
                    minGrade = 0, -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = { -- Male variation
                        ['tshirt_1'] = 15,
                        ['tshirt_2'] = 0,
                        ['torso_1'] = 5,
                        ['torso_2'] = 2,
                        ['arms'] = 5,
                        ['pants_1'] = 6,
                        ['pants_2'] = 1,
                        ['shoes_1'] = 16,
                        ['shoes_2'] = 7,
                        ['helmet_1'] = 44,
                        ['helmet_2'] = 7,
                    },
                    female = {
                        ['tshirt_1'] = 15,
                        ['tshirt_2'] = 0,
                        ['torso_1'] = 4,
                        ['torso_2'] = 14,
                        ['arms'] = 4,
                        ['pants_1'] = 25,
                        ['pants_2'] = 1,
                        ['shoes_1'] = 16,
                        ['shoes_2'] = 4,
                    }
                },
                [2] = {
                    label = '医生',
                    minGrade = 1, -- Min grade level that can access? Set to 0 or false for everyone to use
                    male = {
                        ['tshirt_1'] = 15,
                        ['tshirt_2'] = 0,
                        ['torso_1'] = 5,
                        ['torso_2'] = 2,
                        ['arms'] = 5,
                        ['pants_1'] = 6,
                        ['pants_2'] = 1,
                        ['shoes_1'] = 16,
                        ['shoes_2'] = 7,
                        ['helmet_1'] = 44,
                        ['helmet_2'] = 7,
                    },
                    female = {
                        ['tshirt_1'] = 15,
                        ['tshirt_2'] = 0,
                        ['torso_1'] = 4,
                        ['torso_2'] = 14,
                        ['arms'] = 4,
                        ['pants_1'] = 25,
                        ['pants_2'] = 1,
                        ['shoes_1'] = 16,
                        ['shoes_2'] = 4,
                    }
                },
            }
        },

        MedicalSupplies = { -- EMS Shop for supplies
            Enabled = true, -- If set to false, rest of this table do not matter
            Ped = 's_m_m_doctor_01', -- Ped to target
            Coords = vector3(311.4, -600.63, 43.25), -- Coords of ped/target
            Heading = 40.98, -- Heading of ped
            Supplies = { -- Supplies
                { item = 'medbag', label = '医疗包', price = 1000 }, -- Pretty self explanatory, price may be set to 'false' to make free
                { item = 'medikit', label = '急救套件', price = 250 },
                { item = 'morphine30', label = '吗啡 30MG', price = 100 },
                { item = 'morphine10', label = '吗啡 10MG', price = 45 },
                { item = 'perc30', label = '乙醯胺酚 30MG', price = 60 },
                { item = 'perc10', label = '乙醯胺酚 10MG', price = 40 },
                { item = 'perc5', label = '乙醯胺酚 5MG', price = 30 },
                { item = 'vic10', label = '氢可酮 10MG', price = 30 },
                { item = 'vic5', label = '氢可酮 5MG', price = 15 },
            }
        },

        Vehicles = {                                   -- Vehicle Garage
            Enabled = true,                            -- Enable? False if you have you're own way for medics to obtain vehicles.
            Zone = {
                coords = vector3(301.13, -571.19, 43.26), -- Area to prompt vehicle garage
                range = 5.5,                           -- Range it will prompt from coords above
                label = '[E] - 车库',
                return_label = '[E] - 还车'
            },
            Spawn = {
                land = {
                    coords = vector3(284.26, -581.28, 42.72),
                    heading = 70.77
                },
                air = {
                    coords = vector3(345.2, -583.46, 92.63),
                    heading = 289.29
                }
            },
            Options = {
                [0] = {                    -- Job grade as table name
                    ['Aemsv450'] = {      -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = '救护车',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polmav'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Maverick',
                        category = 'air',  -- Options are 'land' and 'air'
                    },
                },

                [1] = {
                    ['Aemsv450'] = {      -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = '救护车',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polmav'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Maverick',
                        category = 'air',  -- Options are 'land' and 'air'
                    },
                },

                [2] = {
                    ['Aemsv450'] = {      -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = '救护车',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polmav'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Maverick',
                        category = 'air',  -- Options are 'land' and 'air'
                    },
                },

                [3] = {
                    ['Aemsv450'] = {      -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = '救护车',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polmav'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Maverick',
                        category = 'air',  -- Options are 'land' and 'air'
                    },
                },

                [4] = {
                    ['Aemsv450'] = {      -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = '救护车',
                        category = 'land', -- Options are 'land' and 'air'
                    },
                    ['polmav'] = {         -- Car/Helicopter/Vehicle Spawn Code/Model Name
                        label = 'Maverick',
                        category = 'air',  -- Options are 'land' and 'air'
                    },
                }
            }
        },
    },
}

--[[ IMPORTANT THIS COULD BREAK SOMETHING ]]
                                             --
Config.DisableDeathAnimation = false         -- Really, really, REALLY do not recommend setting this to true and it was added per request
