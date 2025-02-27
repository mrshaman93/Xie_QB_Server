-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

PlayerSkeleton = {
    head = { label = Strings.ply_injury_head, limp = false, level = 0, bleed = 0 },
    neck = { label = Strings.ply_injury_neck, limp = false, level = 0, bleed = 0 },
    spine = { label = Strings.ply_injury_spine, limp = true, level = 0, bleed = 0 },
    upper_body = { label = Strings.ply_injury_upper, limp = false, level = 0, bleed = 0 },
    lower_body = { label = Strings.ply_injury_lower, limp = true, level = 0, bleed = 0 },
    left_arm = { label = Strings.ply_injury_left_arm, limp = false, level = 0, bleed = 0 },
    left_leg = { label = Strings.ply_injury_left_leg, limp = true, level = 0, bleed = 0 },
    right_arm = { label = Strings.ply_injury_right_arm, limp = false, level = 0, bleed = 0 },
    right_leg = { label = Strings.ply_injury_right_leg, limp = true, level = 0, bleed = 0 },
}

DrugIntake = {}

PlayerInjury = {}

InjuryReasons = { -- Hashes or weapon names may be used. if using name you must add ` to each side like this: `WEAPON_PISTOL`,
    shot = { -- List of possible guns player may be shot with. 
        `WEAPON_ADVANCEDRIFLE`, `WEAPON_APPISTOL`, `WEAPON_ASSAULTRIFLE`, `WEAPON_ASSAULTSHOTGUN`,
        `WEAPON_ASSAULTSMG`, `WEAPON_AUTOSHOTGUN`, `WEAPON_BULLPUPRIFLE`, `WEAPON_BULLPUPSHOTGUN`,
        `WEAPON_CARBINERIFLE`, `WEAPON_COMBATMG`, `WEAPON_COMBATPDW`, `WEAPON_COMBATPISTOL`,
        `WEAPON_COMPACTRIFLE`, `WEAPON_DBSHOTGUN`, `WEAPON_DOUBLEACTION`, `WEAPON_GUSENBERG`,
        `WEAPON_HEAVYPISTOL`, `WEAPON_HEAVYSHOTGUN`, `WEAPON_HEAVYSNIPER`, `WEAPON_MACHINEPISTOL`,
        `WEAPON_MARKSMANPISTOL`, `WEAPON_MARKSMANRIFLE`, `WEAPON_MG`, `WEAPON_MICROSMG`,
        `WEAPON_MINISMG`, `WEAPON_MUSKET`, `WEAPON_PISTOL`, `WEAPON_PISTOL50`,
        `WEAPON_PISTOL_MK2`, `WEAPON_PUMPSHOTGUN`, `WEAPON_REVOLVER`, `WEAPON_SAWNOFFSHOTGUN`,
        `WEAPON_SMG`, `WEAPON_SNIPERRIFLE`, `WEAPON_SNSPISTOL`, `WEAPON_SPECIALCARBINE`,
        `WEAPON_VINTAGEPISTOL`
    },
    stabbed = { --  List of possible knives player may be stabbed with.
        `WEAPON_BATTLEAXE`,
        `WEAPON_BOTTLE`,
        `WEAPON_DAGGER`,
        `WEAPON_HATCHET`,
        `WEAPON_KNIFE`,
        `WEAPON_MACHETE`,
        `WEAPON_SWITCHBLADE`,
        `WEAPON_STONE_HATCHET`
    },
    beat = { -- List of possible melee(not including stabbing weapons) may be hit with.
        `WEAPON_BAT`,
        `WEAPON_BALL`,
        `WEAPON_CROWBAR`,
        `WEAPON_FLASHLIGHT`,
        `WEAPON_GOLFCLUB`,
        `WEAPON_HAMMER`,
        `WEAPON_KNUCKLE`,
        `WEAPON_NIGHTSTICK`,
        `WEAPON_POOLCUE`,
        `WEAPON_WRENCH`,
        `WEAPON_UNARMED`,
        `WEAPON_RUN_OVER_BY_CAR`,
        `WEAPON_FALL`,
        `WEAPON_RAMMED_BY_CAR`
    },
    burned = { -- List of others you want to require burn cream to heal on death.
        `WEAPON_BZGAS`,
        `WEAPON_FIREEXTINGUISHER`,
        `WEAPON_FIREWORK`,
        `WEAPON_FLARE`,
        `WEAPON_FLAREGUN`,
        `WEAPON_GRENADE`,
        `WEAPON_GRENADELAUNCHER`,
        `WEAPON_HOMINGLAUNCHER`,
        `WEAPON_MOLOTOV`,
        `WEAPON_PETROLCAN`,
        `WEAPON_PIPEBOMB`,
        `WEAPON_PROXMINE`,
        `WEAPON_RPG`,
        `WEAPON_SMOKEGRENADE`,
        `WEAPON_STICKYBOMB`
    }
}

WeaponInjuryTable = {
    -- Guns
    [`WEAPON_ADVANCEDRIFLE`] = 3, [`WEAPON_APPISTOL`] = 2, [`WEAPON_ASSAULTRIFLE`] = 3, [`WEAPON_ASSAULTSHOTGUN`] = 3, [`WEAPON_ASSAULTSMG`] = 2,
    [`WEAPON_AUTOSHOTGUN`] = 3, [`WEAPON_BULLPUPRIFLE`] = 3, [`WEAPON_BULLPUPSHOTGUN`] = 3, [`WEAPON_CARBINERIFLE`] = 3, [`WEAPON_COMBATMG`] = 3,
    [`WEAPON_COMBATPDW`] = 2, [`WEAPON_COMBATPISTOL`] = 2, [`WEAPON_COMPACTRIFLE`] = 2, [`WEAPON_DBSHOTGUN`] = 3, [`WEAPON_DOUBLEACTION`] = 2,
    [`WEAPON_GUSENBERG`] = 3, [`WEAPON_HEAVYPISTOL`] = 2, [`WEAPON_HEAVYSHOTGUN`] = 4, [`WEAPON_HEAVYSNIPER`] = 4, [`WEAPON_MACHINEPISTOL`] = 2,
    [`WEAPON_MARKSMANPISTOL`] = 1, [`WEAPON_MARKSMANRIFLE`] = 4, [`WEAPON_MG`] = 3, [`WEAPON_MICROSMG`] = 2, [`WEAPON_MINISMG`] = 2,
    [`WEAPON_MUSKET`] = 3, [`WEAPON_PISTOL`] = 1, [`WEAPON_PISTOL50`] = 2, [`WEAPON_PISTOL_MK2`] = 2, [`WEAPON_PUMPSHOTGUN`] = 3,
    [`WEAPON_REVOLVER`] = 2, [`WEAPON_SAWNOFFSHOTGUN`] = 3, [`WEAPON_SMG`] = 3, [`WEAPON_SNIPERRIFLE`] = 4, [`WEAPON_SNSPISTOL`] = 1,
    [`WEAPON_SPECIALCARBINE`] = 3, [`WEAPON_VINTAGEPISTOL`] = 1,

    -- Stabbed
    [`WEAPON_BATTLEAXE`] = 3, [`WEAPON_BOTTLE`] = 1, [`WEAPON_DAGGER`] = 2, [`WEAPON_HATCHET`] = 3, [`WEAPON_KNIFE`] = 2,
    [`WEAPON_MACHETE`] = 3, [`WEAPON_SWITCHBLADE`] = 2, [`WEAPON_STONE_HATCHET`] = 3,

    -- Beat
    [`WEAPON_BAT`] = 2, [`WEAPON_BALL`] = 1, [`WEAPON_CROWBAR`] = 1, [`WEAPON_FLASHLIGHT`] = 1, [`WEAPON_GOLFCLUB`] = 1,
    [`WEAPON_HAMMER`] = 1, [`WEAPON_KNUCKLE`] = 1, [`WEAPON_NIGHTSTICK`] = 1, [`WEAPON_POOLCUE`] = 1, [`WEAPON_WRENCH`] = 1,
    [`WEAPON_UNARMED`] = 1, [`WEAPON_RUN_OVER_BY_CAR`] = 3, [`WEAPON_FALL`] = 2, [`WEAPON_RAMMED_BY_CAR`] = 3,

    -- Burned
    [`WEAPON_BZGAS`] = 4, [`WEAPON_FIREEXTINGUISHER`] = 1, [`WEAPON_FIREWORK`] = 3, [`WEAPON_FLARE`] = 3, [`WEAPON_FLAREGUN`] = 3,
    [`WEAPON_GRENADE`] = 4, [`WEAPON_GRENADELAUNCHER`] = 4, [`WEAPON_HOMINGLAUNCHER`] = 4, [`WEAPON_MOLOTOV`] = 4, [`WEAPON_PETROLCAN`] = 2,
    [`WEAPON_PIPEBOMB`] = 4, [`WEAPON_PROXMINE`] = 4, [`WEAPON_RPG`] = 4, [`WEAPON_SMOKEGRENADE`] = 3, [`WEAPON_STICKYBOMB`] = 4
}




Bones = {
    [0]     = 'none', [31085] = 'head', [31086] = 'head', [39317] = 'neck', [57597] = 'spine',
    [23553] = 'spine', [24816] = 'upper_body', [24817] = 'upper_body', [24818] = 'spine', [10706] = 'upper_body',
    [64729] = 'upper_body', [11816] = 'lower_body', [45509] = 'left_arm', [61163] = 'left_arm', [18905] = 'left_arm',
    [4089]  = 'left_arm', [4090]  = 'left_arm', [4137]  = 'left_arm', [4138]  = 'left_arm', [4153]  = 'left_arm',
    [4154]  = 'left_arm', [4169]  = 'left_arm', [4170]  = 'left_arm', [4185]  = 'left_arm', [4186]  = 'left_arm',
    [26610] = 'left_arm', [26611] = 'left_arm', [26612] = 'left_arm', [26613] = 'left_arm', [26614] = 'left_arm',
    [58271] = 'left_leg', [63931] = 'left_leg', [2108]  = 'left_leg', [14201] = 'left_leg', [40269] = 'right_arm',
    [28252] = 'right_arm', [57005] = 'right_arm', [58866] = 'right_arm', [58867] = 'right_arm', [58868] = 'right_arm',
    [58869] = 'right_arm', [58870] = 'right_arm', [64016] = 'right_arm', [64017] = 'right_arm', [64064] = 'right_arm',
    [64065] = 'right_arm', [64080] = 'right_arm', [64081] = 'right_arm', [64096] = 'right_arm', [64097] = 'right_arm',
    [64112] = 'right_arm', [64113] = 'right_arm', [36864] = 'right_leg', [51826] = 'right_leg', [20781] = 'right_leg',
    [52301] = 'right_leg',
}
