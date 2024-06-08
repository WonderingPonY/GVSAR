TomcatA = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 6096,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 220.97222222222,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["enabled"] = true,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["number"] = 1,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["number"] = 2,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["number"] = 3,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["number"] = 4,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["number"] = 5,
                                ["params"] =
                                {
                                    ["y"] = 132596.22676725,
                                    ["x"] = 170045.12199961,
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 6,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 7,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["number"] = 9,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 157485.49586335,
                ["x"] = 207244.48905405,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 6096,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 220.97222222222,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 202.29713254151,
                ["ETA_locked"] = false,
                ["y"] = 132798.03165181,
                ["x"] = 169977.85370475,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 15,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 6096,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "rogue nation(top gun - maverick)",
            ["skill"] = "High",
            ["speed"] = 220.97222222222,
            ["type"] = "F-14A-135-GR",
            ["unitId"] = 116,
            ["psi"] = 2.5565115776233,
            ["onboard_num"] = "010",
            ["y"] = 157485.49586335,
            ["x"] = 207244.48905405,
            ["name"] = "TomcatA Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "{LAU-138 wtip - AIM-9L}",
                    }, -- end of [1]
                    [2] =
                    {
                        ["CLSID"] = "{SHOULDER AIM-7F}",
                    }, -- end of [2]
                    [3] =
                    {
                        ["CLSID"] = "{F14-300gal}",
                    }, -- end of [3]
                    [4] =
                    {
                        ["CLSID"] = "{AIM_54A_Mk47}",
                    }, -- end of [4]
                    [7] =
                    {
                        ["CLSID"] = "{AIM_54A_Mk47}",
                    }, -- end of [7]
                    [8] =
                    {
                        ["CLSID"] = "{F14-300gal}",
                    }, -- end of [8]
                    [9] =
                    {
                        ["CLSID"] = "{SHOULDER AIM-7F}",
                    }, -- end of [9]
                    [10] =
                    {
                        ["CLSID"] = "{LAU-138 wtip - AIM-9L}",
                    }, -- end of [10]
                }, -- end of ["pylons"]
                ["fuel"] = 7348,
                ["flare"] = 60,
                ["ammo_type"] = 1,
                ["chaff"] = 140,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.5565115776233,
            ["callsign"] =
            {
                [1] = 1,
                [2] = 1,
                ["name"] = "Enfield11",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 157485.49586335,
    ["x"] = 207244.48905405,
    ["name"] = "TomcatA Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 124,
}

Eagle = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 6096,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 220.97222222222,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["enabled"] = true,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["number"] = 1,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["number"] = 2,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["number"] = 3,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["number"] = 4,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["number"] = 5,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["number"] = 6,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "EPLRS",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["groupId"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["number"] = 7,
                                ["params"] =
                                {
                                    ["y"] = 132596.22676725,
                                    ["x"] = 170045.12199961,
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 8,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 9,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["number"] = 10,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                            [11] =
                            {
                                ["number"] = 11,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [11]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 158023.64222218,
                ["x"] = 206437.26951579,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 6096,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 220.97222222222,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 201.81257463304,
                ["ETA_locked"] = false,
                ["y"] = 132730.76335696,
                ["x"] = 169708.78052533,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 16,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 6096,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "65th Aggressor SQN (WA) Flanker",
            ["skill"] = "High",
            ["speed"] = 220.97222222222,
            ["AddPropAircraft"] =
            {
                ["STN_L16"] = "00365",
                ["VoiceCallsignNumber"] = "11",
                ["VoiceCallsignLabel"] = "SD",
            }, -- end of ["AddPropAircraft"]
            ["type"] = "F-15C",
            ["unitId"] = 117,
            ["psi"] = 2.5385284275614,
            ["onboard_num"] = "011",
            ["y"] = 158023.64222218,
            ["x"] = 206437.26951579,
            ["name"] = "Eagle Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                    }, -- end of [1]
                    [2] =
                    {
                        ["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
                    }, -- end of [2]
                    [3] =
                    {
                        ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
                    }, -- end of [3]
                    [5] =
                    {
                        ["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
                    }, -- end of [5]
                    [6] =
                    {
                        ["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
                    }, -- end of [6]
                    [7] =
                    {
                        ["CLSID"] = "{8D399DDA-FF81-4F14-904D-099B34FE7918}",
                    }, -- end of [7]
                    [9] =
                    {
                        ["CLSID"] = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
                    }, -- end of [9]
                    [10] =
                    {
                        ["CLSID"] = "{E1F29B21-F291-4589-9FD8-3272EEC69506}",
                    }, -- end of [10]
                    [11] =
                    {
                        ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                    }, -- end of [11]
                }, -- end of ["pylons"]
                ["fuel"] = "6103",
                ["flare"] = 60,
                ["chaff"] = 120,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.5385284275614,
            ["callsign"] =
            {
                [1] = 2,
                [2] = 1,
                ["name"] = "Springfield11",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 158023.64222218,
    ["x"] = 206437.26951579,
    ["name"] = "Eagle Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 124,
}

Viper = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 6096,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 220.97222222222,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["enabled"] = true,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["number"] = 1,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["number"] = 2,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["number"] = 3,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["number"] = 4,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["number"] = 5,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["number"] = 6,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "EPLRS",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["groupId"] = 2,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["number"] = 7,
                                ["params"] =
                                {
                                    ["y"] = 132596.22676725,
                                    ["x"] = 170045.12199961,
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 8,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 9,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["number"] = 10,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                            [11] =
                            {
                                ["number"] = 11,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [11]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 156611.00803024,
                ["x"] = 207513.56223346,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 6096,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 220.97222222222,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 202.99201475819,
                ["ETA_locked"] = false,
                ["y"] = 132259.88529298,
                ["x"] = 169843.31711504,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 17,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 6096,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "usaf 64th aggressor sqn-splinter",
            ["skill"] = "High",
            ["speed"] = 220.97222222222,
            ["AddPropAircraft"] =
            {
                ["STN_L16"] = "00366",
                ["VoiceCallsignNumber"] = "11",
                ["VoiceCallsignLabel"] = "UI",
            }, -- end of ["AddPropAircraft"]
            ["type"] = "F-16C_50",
            ["unitId"] = 118,
            ["psi"] = 2.5677322019964,
            ["onboard_num"] = "012",
            ["y"] = 156611.00803024,
            ["x"] = 207513.56223346,
            ["name"] = "Viper Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
                    }, -- end of [1]
                    [2] =
                    {
                        ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                    }, -- end of [2]
                    [3] =
                    {
                        ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                    }, -- end of [3]
                    [4] =
                    {
                        ["CLSID"] = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}",
                    }, -- end of [4]
                    [5] =
                    {
                        ["CLSID"] = "{8A0BE8AE-58D4-4572-9263-3144C0D06364}",
                    }, -- end of [5]
                    [6] =
                    {
                        ["CLSID"] = "{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}",
                    }, -- end of [6]
                    [7] =
                    {
                        ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                    }, -- end of [7]
                    [8] =
                    {
                        ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                    }, -- end of [8]
                    [9] =
                    {
                        ["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
                    }, -- end of [9]
                }, -- end of ["pylons"]
                ["fuel"] = 3249,
                ["flare"] = 60,
                ["ammo_type"] = 5,
                ["chaff"] = 60,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.5677322019964,
            ["callsign"] =
            {
                [1] = 3,
                [2] = 1,
                ["name"] = "Uzi11",
                [3] = 1,
            }, -- end of ["callsign"]
            ["datalinks"] =
            {
                ["Link16"] =
                {
                    ["settings"] =
                    {
                        ["flightLead"] = true,
                        ["transmitPower"] = 3,
                        ["specialChannel"] = 1,
                        ["fighterChannel"] = 1,
                        ["missionChannel"] = 1,
                    }, -- end of ["settings"]
                    ["network"] =
                    {
                        ["teamMembers"] =
                        {
                            [1] =
                            {
                                ["TDOA"] = true,
                                ["missionUnitId"] = 118,
                            }, -- end of [1]
                        }, -- end of ["teamMembers"]
                        ["donors"] =
                        {
                        }, -- end of ["donors"]
                    }, -- end of ["network"]
                }, -- end of ["Link16"]
            }, -- end of ["datalinks"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 156611.00803024,
    ["x"] = 207513.56223346,
    ["name"] = "Viper Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 305,
}

FulcrumA = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = false,
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 220.97222222222,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["number"] = 1,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["number"] = 2,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["number"] = 6,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["x"] = 169959.41999232,
                                    ["y"] = 132301.76903301,
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["number"] = 7,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 9,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 10,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 161922.81849399,
                ["x"] = 204205.14447989,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 220.97222222222,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 222.94517393835,
                ["ETA_locked"] = false,
                ["y"] = 133248.30653427,
                ["x"] = 169595.21495757,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 182,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "Mary-1 Agressors",
            ["skill"] = "High",
            ["speed"] = 220.97222222222,
            ["type"] = "MiG-29A",
            ["unitId"] = 396,
            ["psi"] = 2.449710449592,
            ["onboard_num"] = "021",
            ["y"] = 161922.81849399,
            ["x"] = 204205.14447989,
            ["name"] = "FulcrumA Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                    }, -- end of [1]
                    [3] =
                    {
                        ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                    }, -- end of [3]
                    [4] =
                    {
                        ["CLSID"] = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}",
                    }, -- end of [4]
                    [5] =
                    {
                        ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                    }, -- end of [5]
                    [7] =
                    {
                        ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                    }, -- end of [7]
                }, -- end of ["pylons"]
                ["fuel"] = "3376",
                ["flare"] = 30,
                ["chaff"] = 30,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.449710449592,
            ["callsign"] =
            {
                [1] = 4,
                [2] = 2,
                ["name"] = "Colt21",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 161922.81849399,
    ["x"] = 204205.14447989,
    ["name"] = "FulcrumA Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 124,
}

FulcrumS = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = false,
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 220.97222222222,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["number"] = 1,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["number"] = 2,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["number"] = 6,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["x"] = 169959.41999232,
                                    ["y"] = 132301.76903301,
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["number"] = 7,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 9,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 10,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 161447.77908482,
                ["x"] = 203866.43989071,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 220.97222222222,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 222.94517393835,
                ["ETA_locked"] = false,
                ["y"] = 132773.26712511,
                ["x"] = 169256.5103684,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 183,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "air force standard",
            ["skill"] = "High",
            ["speed"] = 220.97222222222,
            ["type"] = "MiG-29S",
            ["unitId"] = 397,
            ["psi"] = 2.4497104495921,
            ["onboard_num"] = "022",
            ["y"] = 161447.77908482,
            ["x"] = 203866.43989071,
            ["name"] = "FulcrumS Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                    }, -- end of [1]
                    [2] =
                    {
                        ["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
                    }, -- end of [2]
                    [3] =
                    {
                        ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                    }, -- end of [3]
                    [4] =
                    {
                        ["CLSID"] = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}",
                    }, -- end of [4]
                    [5] =
                    {
                        ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                    }, -- end of [5]
                    [6] =
                    {
                        ["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
                    }, -- end of [6]
                    [7] =
                    {
                        ["CLSID"] = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",
                    }, -- end of [7]
                }, -- end of ["pylons"]
                ["fuel"] = "3493",
                ["flare"] = 30,
                ["chaff"] = 30,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.4497104495921,
            ["callsign"] =
            {
                [1] = 5,
                [2] = 2,
                ["name"] = "Dodge21",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 161447.77908482,
    ["x"] = 203866.43989071,
    ["name"] = "FulcrumS Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 124,
}

J11 = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = false,
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 169.58333333333,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["number"] = 1,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["number"] = 2,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["number"] = 6,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["x"] = 169959.41999232,
                                    ["y"] = 132301.76903301,
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["number"] = 7,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 9,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 10,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 161604.27004871,
                ["x"] = 204154.8808524,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 169.58333333333,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 222.94517393835,
                ["ETA_locked"] = false,
                ["y"] = 132943.04067656,
                ["x"] = 169518.38615496,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 177,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "usaf 65th aggressor sqn 'desert' (fictional)",
            ["skill"] = "High",
            ["speed"] = 169.58333333333,
            ["type"] = "J-11A",
            ["unitId"] = 391,
            ["psi"] = 2.450314945583,
            ["onboard_num"] = "016",
            ["y"] = 161604.27004871,
            ["x"] = 204154.8808524,
            ["name"] = "J11 Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "{RKL609_L}",
                    }, -- end of [1]
                    [2] =
                    {
                        ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                    }, -- end of [2]
                    [3] =
                    {
                        ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                    }, -- end of [3]
                    [5] =
                    {
                        ["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
                    }, -- end of [5]
                    [6] =
                    {
                        ["CLSID"] = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
                    }, -- end of [6]
                    [8] =
                    {
                        ["CLSID"] = "{9B25D316-0434-4954-868F-D51DB1A38DF0}",
                    }, -- end of [8]
                    [10] =
                    {
                        ["CLSID"] = "{RKL609_R}",
                    }, -- end of [10]
                    [9] =
                    {
                        ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                    }, -- end of [9]
                }, -- end of ["pylons"]
                ["fuel"] = 9400,
                ["flare"] = 96,
                ["chaff"] = 96,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.450314945583,
            ["callsign"] =
            {
                [1] = 7,
                [2] = 1,
                ["name"] = "Chevy11",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 161604.27004871,
    ["x"] = 204154.8808524,
    ["name"] = "J11 Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 127.5,
}

Viggen = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = false,
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 154.16666666667,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["number"] = 1,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["number"] = 2,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["number"] = 6,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["x"] = 169959.41999232,
                                    ["y"] = 132301.76903301,
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["number"] = 7,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 9,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 10,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 161187.92180621,
                ["x"] = 204032.00519024,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 154.16666666667,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 222.94517393835,
                ["ETA_locked"] = false,
                ["y"] = 132945.80168599,
                ["x"] = 169407.48504285,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 172,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "37",
            ["skill"] = "High",
            ["speed"] = 154.16666666667,
            ["AddPropAircraft"] =
            {
                ["Rb04GroupTarget"] = 3,
                ["WeapSafeHeight"] = 1,
                ["Rb04VinkelHopp"] = 0,
                ["MissionGeneratorSetting"] = 0,
            }, -- end of ["AddPropAircraft"]
            ["type"] = "AJS37",
            ["unitId"] = 386,
            ["psi"] = 2.4573706792299,
            ["onboard_num"] = "011",
            ["y"] = 161187.92180621,
            ["x"] = 204032.00519024,
            ["name"] = "Viggen Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [2] =
                    {
                        ["CLSID"] = "{AKAN}",
                    }, -- end of [2]
                    [3] =
                    {
                        ["CLSID"] = "{Robot74}",
                    }, -- end of [3]
                    [4] =
                    {
                        ["CLSID"] = "{VIGGEN_X-TANK}",
                    }, -- end of [4]
                    [5] =
                    {
                        ["CLSID"] = "{Robot74}",
                    }, -- end of [5]
                    [6] =
                    {
                        ["CLSID"] = "{AKAN}",
                    }, -- end of [6]
                }, -- end of ["pylons"]
                ["fuel"] = 4476,
                ["flare"] = 72,
                ["chaff"] = 210,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.4573706792299,
            ["callsign"] =
            {
                [1] = 2,
                [2] = 1,
                ["name"] = "Springfield11",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 161187.92180621,
    ["x"] = 204032.00519024,
    ["name"] = "Viggen Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 305,
}

Jeff = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = false,
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 220.97222222222,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["number"] = 1,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["number"] = 2,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["number"] = 6,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "EPLRS",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["groupId"] = 32,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["number"] = 7,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["x"] = 169959.41999232,
                                    ["y"] = 132301.76903301,
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["number"] = 9,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 10,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                            [11] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 11,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [11]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 161670.44933023,
                ["x"] = 204557.13305038,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 220.97222222222,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 222.94517393835,
                ["ETA_locked"] = false,
                ["y"] = 132962.73090161,
                ["x"] = 169887.43188402,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 178,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "insky satac2022",
            ["skill"] = "High",
            ["speed"] = 220.97222222222,
            ["AddPropAircraft"] =
            {
            }, -- end of ["AddPropAircraft"]
            ["type"] = "JF-17",
            ["unitId"] = 392,
            ["psi"] = 2.4499895511445,
            ["onboard_num"] = "017",
            ["y"] = 161670.44933023,
            ["x"] = 204557.13305038,
            ["name"] = "Jeff Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "DIS_PL-5EII",
                    }, -- end of [1]
                    [2] =
                    {
                        ["CLSID"] = "DIS_SD-10",
                    }, -- end of [2]
                    [4] =
                    {
                        ["CLSID"] = "DIS_TANK800",
                    }, -- end of [4]
                    [6] =
                    {
                        ["CLSID"] = "DIS_SD-10",
                    }, -- end of [6]
                    [7] =
                    {
                        ["CLSID"] = "DIS_PL-5EII",
                    }, -- end of [7]
                }, -- end of ["pylons"]
                ["fuel"] = 2325,
                ["flare"] = 32,
                ["chaff"] = 36,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.4499895511445,
            ["callsign"] =
            {
                [1] = 8,
                [2] = 1,
                ["name"] = "Pontiac11",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 161670.44933023,
    ["x"] = 204557.13305038,
    ["name"] = "Jeff Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 243,
}

TomcatB = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = false,
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 220.97222222222,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["number"] = 1,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["number"] = 2,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["number"] = 6,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["x"] = 169959.41999232,
                                    ["y"] = 132301.76903301,
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["number"] = 7,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 9,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 10,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 161292.93174728,
                ["x"] = 204538.06645416,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 220.97222222222,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 222.94517393835,
                ["ETA_locked"] = false,
                ["y"] = 132739.47332563,
                ["x"] = 169781.82625616,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 174,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "rogue nation(top gun - maverick)",
            ["skill"] = "High",
            ["speed"] = 220.97222222222,
            ["AddPropAircraft"] =
            {
            }, -- end of ["AddPropAircraft"]
            ["type"] = "F-14B",
            ["unitId"] = 388,
            ["psi"] = 2.4538580126922,
            ["onboard_num"] = "013",
            ["y"] = 161292.93174728,
            ["x"] = 204538.06645416,
            ["name"] = "TomcatB Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "{LAU-138 wtip - AIM-9M}",
                    }, -- end of [1]
                    [2] =
                    {
                        ["CLSID"] = "{SHOULDER AIM-7M}",
                    }, -- end of [2]
                    [3] =
                    {
                        ["CLSID"] = "{F14-300gal}",
                    }, -- end of [3]
                    [4] =
                    {
                        ["CLSID"] = "{AIM_54A_Mk47}",
                    }, -- end of [4]
                    [7] =
                    {
                        ["CLSID"] = "{AIM_54A_Mk47}",
                    }, -- end of [7]
                    [8] =
                    {
                        ["CLSID"] = "{F14-300gal}",
                    }, -- end of [8]
                    [10] =
                    {
                        ["CLSID"] = "{LAU-138 wtip - AIM-9M}",
                    }, -- end of [10]
                    [9] =
                    {
                        ["CLSID"] = "{SHOULDER AIM-7M}",
                    }, -- end of [9]
                }, -- end of ["pylons"]
                ["fuel"] = 7348,
                ["flare"] = 60,
                ["ammo_type"] = 1,
                ["chaff"] = 140,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.4538580126922,
            ["callsign"] =
            {
                [1] = 4,
                [2] = 1,
                ["name"] = "Colt11",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 161292.93174728,
    ["x"] = 204538.06645416,
    ["name"] = "TomcatB Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 124,
}

Skyhawk = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = false,
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 200.41666666667,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["number"] = 1,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["number"] = 2,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["number"] = 6,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["x"] = 169959.41999232,
                                    ["y"] = 132301.76903301,
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["number"] = 7,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 9,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 10,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 160783.22915425,
                ["x"] = 204344.60013869,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 200.41666666667,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 222.94517393835,
                ["ETA_locked"] = false,
                ["y"] = 132541.10903403,
                ["x"] = 169720.0799913,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 171,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "aggressor usmc topgun mig-17",
            ["skill"] = "High",
            ["speed"] = 200.41666666667,
            ["AddPropAircraft"] =
            {
                ["HideECMPanel"] = false,
                ["Auto_Catapult_Power"] = false,
                ["Night_Vision"] = false,
            }, -- end of ["AddPropAircraft"]
            ["type"] = "A-4E-C",
            ["unitId"] = 385,
            ["psi"] = 2.4573706792299,
            ["onboard_num"] = "010",
            ["y"] = 160783.22915425,
            ["x"] = 204344.60013869,
            ["name"] = "Skyhawk Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [2] =
                    {
                        ["CLSID"] = "{AIM-9P5-ON-ADAPTER}",
                    }, -- end of [2]
                    [3] =
                    {
                        ["CLSID"] = "{DFT-150gal}",
                    }, -- end of [3]
                    [4] =
                    {
                        ["CLSID"] = "{AIM-9P5-ON-ADAPTER}",
                    }, -- end of [4]
                }, -- end of ["pylons"]
                ["fuel"] = 2467.5454273299,
                ["flare"] = 30,
                ["ammo_type"] = 1,
                ["chaff"] = 30,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.4573706792299,
            ["callsign"] =
            {
                [1] = 1,
                [2] = 1,
                ["name"] = "Enfield11",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 160783.22915425,
    ["x"] = 204344.60013869,
    ["name"] = "Skyhawk Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 254,
}

Mirage2000 = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = false,
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 251.80555555556,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["number"] = 1,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["number"] = 2,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["number"] = 6,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["x"] = 169959.41999232,
                                    ["y"] = 132301.76903301,
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["number"] = 7,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 9,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 10,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 161398.15628513,
                ["x"] = 204895.83903331,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 251.80555555556,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 222.94517393835,
                ["ETA_locked"] = false,
                ["y"] = 132690.43785651,
                ["x"] = 170226.13786695,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 179,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "brasilian air force",
            ["skill"] = "High",
            ["speed"] = 251.80555555556,
            ["AddPropAircraft"] =
            {
                ["ReadyQRA"] = false,
                ["ReadyALCM"] = true,
                ["WpBullseye"] = 0,
                ["LoadNVGCase"] = false,
                ["ForceINSRules"] = false,
                ["InitHotDrift"] = 0,
                ["EnableTAF"] = true,
            }, -- end of ["AddPropAircraft"]
            ["type"] = "M-2000C",
            ["unitId"] = 393,
            ["psi"] = 2.4499895511445,
            ["onboard_num"] = "018",
            ["y"] = 161398.15628513,
            ["x"] = 204895.83903331,
            ["name"] = "Mirage Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "{MMagicII}",
                    }, -- end of [1]
                    [2] =
                    {
                        ["CLSID"] = "{Matra_S530D}",
                    }, -- end of [2]
                    [8] =
                    {
                        ["CLSID"] = "{Matra_S530D}",
                    }, -- end of [8]
                    [10] =
                    {
                        ["CLSID"] = "{EclairM_42}",
                    }, -- end of [10]
                    [9] =
                    {
                        ["CLSID"] = "{MMagicII}",
                    }, -- end of [9]
                    [5] =
                    {
                        ["CLSID"] = "{M2KC_RPL_522}",
                    }, -- end of [5]
                }, -- end of ["pylons"]
                ["fuel"] = 3165,
                ["flare"] = 64,
                ["ammo_type"] = 1,
                ["chaff"] = 234,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.4499895511445,
            ["callsign"] =
            {
                [1] = 1,
                [2] = 2,
                ["name"] = "Enfield21",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 161398.15628513,
    ["x"] = 204895.83903331,
    ["name"] = "Mirage Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 251,
}

Phantom = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = false,
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 256.94444444444,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["number"] = 1,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["number"] = 2,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["number"] = 6,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["x"] = 169959.41999232,
                                    ["y"] = 132301.76903301,
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["number"] = 7,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 9,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 10,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 160957.64434574,
                ["x"] = 204801.50655537,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 256.94444444444,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 222.94517393835,
                ["ETA_locked"] = false,
                ["y"] = 132296.41497359,
                ["x"] = 170093.16455759,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 175,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "iriaf-3-6564",
            ["skill"] = "High",
            ["speed"] = 256.94444444444,
            ["AddPropAircraft"] =
            {
            }, -- end of ["AddPropAircraft"]
            ["type"] = "F-4E-45MC",
            ["unitId"] = 389,
            ["psi"] = 2.4513325326278,
            ["onboard_num"] = "014",
            ["y"] = 160957.64434574,
            ["x"] = 204801.50655537,
            ["name"] = "Phantom Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "{F4_SARGENT_TANK_370_GAL}",
                    }, -- end of [1]
                    [2] =
                    {
                        ["CLSID"] = "{AIM-9J}",
                    }, -- end of [2]
                    [4] =
                    {
                        ["CLSID"] = "{AIM-9J}",
                    }, -- end of [4]
                    [6] =
                    {
                        ["CLSID"] = "{HB_F4E_AIM-7E}",
                    }, -- end of [6]
                    [8] =
                    {
                        ["CLSID"] = "{HB_F4E_AIM-7E}",
                    }, -- end of [8]
                    [14] =
                    {
                        ["CLSID"] = "{HB_ALE_40_30_60}",
                    }, -- end of [14]
                    [10] =
                    {
                        ["CLSID"] = "{AIM-9J}",
                    }, -- end of [10]
                    [12] =
                    {
                        ["CLSID"] = "{AIM-9J}",
                    }, -- end of [12]
                    [13] =
                    {
                        ["CLSID"] = "{F4_SARGENT_TANK_370_GAL_R}",
                    }, -- end of [13]
                }, -- end of ["pylons"]
                ["fuel"] = 5510.5,
                ["flare"] = 30,
                ["ammo_type"] = 1,
                ["chaff"] = 120,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.4513325326278,
            ["callsign"] =
            {
                [1] = 5,
                [2] = 1,
                ["name"] = "Dodge11",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 160957.64434574,
    ["x"] = 204801.50655537,
    ["name"] = "Phantom Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 305,
}

Harrier = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = false,
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 226.11111111111,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["number"] = 1,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["number"] = 2,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["number"] = 6,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["x"] = 169959.41999232,
                                    ["y"] = 132301.76903301,
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["number"] = 7,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 9,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 10,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 160464.66508841,
                ["x"] = 204616.1740777,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 226.11111111111,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 222.94517393835,
                ["ETA_locked"] = false,
                ["y"] = 132222.54496818,
                ["x"] = 169991.65393031,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 173,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "vma-542",
            ["skill"] = "High",
            ["speed"] = 226.11111111111,
            ["AddPropAircraft"] =
            {
                ["ClockTime"] = 1,
                ["EWDispenserBR"] = 2,
                ["AAR_Zone3"] = 0,
                ["AAR_Zone2"] = 0,
                ["EWDispenserBL"] = 2,
                ["AAR_Zone1"] = 0,
                ["LaserCode100"] = 6,
                ["RocketBurst"] = 1,
                ["LoadWater"] = true,
                ["MountNVG"] = false,
                ["EWDispenserTBL"] = 2,
                ["GBULaserCode1"] = 8,
                ["GBULaserCode100"] = 6,
                ["LaserCode1"] = 8,
                ["EWDispenserTFL"] = 1,
                ["EWDispenserTFR"] = 1,
                ["GBULaserCode10"] = 8,
                ["LaserCode10"] = 8,
                ["EWDispenserTBR"] = 2,
            }, -- end of ["AddPropAircraft"]
            ["type"] = "AV8BNA",
            ["unitId"] = 387,
            ["psi"] = 2.4573706792298,
            ["onboard_num"] = "012",
            ["y"] = 160464.66508841,
            ["x"] = 204616.1740777,
            ["name"] = "Harrier Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "CATM-9M",
                    }, -- end of [1]
                    [4] =
                    {
                        ["CLSID"] = "{GAU_12_Equalizer}",
                    }, -- end of [4]
                    [8] =
                    {
                        ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                    }, -- end of [8]
                }, -- end of ["pylons"]
                ["fuel"] = 3519.423,
                ["flare"] = 120,
                ["chaff"] = 60,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.4573706792298,
            ["callsign"] =
            {
                [1] = 3,
                [2] = 1,
                ["name"] = "Uzi11",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 160464.66508841,
    ["x"] = 204616.1740777,
    ["name"] = "Harrier Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 243,
}

Farmer = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = false,
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 236.38888888889,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["number"] = 1,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["number"] = 2,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["number"] = 6,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["x"] = 169959.41999232,
                                    ["y"] = 132301.76903301,
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["number"] = 7,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 9,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 10,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 160966.47218924,
                ["x"] = 205188.05595976,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 236.38888888889,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 222.94517393835,
                ["ETA_locked"] = false,
                ["y"] = 132298.60152331,
                ["x"] = 170544.91996854,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 180,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "czechoslovakia",
            ["skill"] = "High",
            ["speed"] = 236.38888888889,
            ["AddPropAircraft"] =
            {
                ["MissileToneVolume"] = 5,
                ["NAV_Initial_Hdg"] = 0,
                ["ADF_Selected_Frequency"] = 1,
                ["ADF_NEAR_Frequency"] = 303,
                ["ADF_FAR_Frequency"] = 625,
                ["MountSIRENA"] = false,
            }, -- end of ["AddPropAircraft"]
            ["type"] = "MiG-19P",
            ["unitId"] = 394,
            ["psi"] = 2.450295315578,
            ["onboard_num"] = "019",
            ["y"] = 160966.47218924,
            ["x"] = 205188.05595976,
            ["name"] = "Farmer Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "{K-13A}",
                    }, -- end of [1]
                    [2] =
                    {
                        ["CLSID"] = "PTB760_MIG19",
                    }, -- end of [2]
                    [6] =
                    {
                        ["CLSID"] = "{K-13A}",
                    }, -- end of [6]
                    [5] =
                    {
                        ["CLSID"] = "PTB760_MIG19",
                    }, -- end of [5]
                }, -- end of ["pylons"]
                ["fuel"] = 1800,
                ["flare"] = 0,
                ["ammo_type"] = 1,
                ["chaff"] = 0,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.450295315578,
            ["callsign"] =
            {
                [1] = 2,
                [2] = 2,
                ["name"] = "Springfield21",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 160966.47218924,
    ["x"] = 205188.05595976,
    ["name"] = "Farmer Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 124,
}

Hornet = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = false,
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 179.86111111111,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["number"] = 1,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["number"] = 2,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["number"] = 6,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "EPLRS",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["groupId"] = 31,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["number"] = 7,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["x"] = 169959.41999232,
                                    ["y"] = 132301.76903301,
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["number"] = 9,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 10,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                            [11] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 11,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [11]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 160598.40784409,
                ["x"] = 205124.81940685,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 179.86111111111,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 222.94517393835,
                ["ETA_locked"] = false,
                ["y"] = 131925.20392189,
                ["x"] = 170452.40105924,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 176,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "nawdc black",
            ["skill"] = "High",
            ["speed"] = 179.86111111111,
            ["AddPropAircraft"] =
            {
                ["VoiceCallsignLabel"] = "FD",
                ["VoiceCallsignNumber"] = "11",
                ["STN_L16"] = "01006",
            }, -- end of ["AddPropAircraft"]
            ["type"] = "FA-18C_hornet",
            ["unitId"] = 390,
            ["psi"] = 2.4506189191166,
            ["onboard_num"] = "015",
            ["dataCartridge"] =
            {
                ["GroupsPoints"] =
                {
                    ["Initial Point"] =
                    {
                    }, -- end of ["Initial Point"]
                    ["Sequence 2 Red"] =
                    {
                    }, -- end of ["Sequence 2 Red"]
                    ["PB"] =
                    {
                    }, -- end of ["PB"]
                    ["Sequence 1 Blue"] =
                    {
                    }, -- end of ["Sequence 1 Blue"]
                    ["Sequence 3 Yellow"] =
                    {
                    }, -- end of ["Sequence 3 Yellow"]
                    ["A/A Waypoint"] =
                    {
                    }, -- end of ["A/A Waypoint"]
                    ["PP"] =
                    {
                    }, -- end of ["PP"]
                    ["Start Location"] =
                    {
                    }, -- end of ["Start Location"]
                }, -- end of ["GroupsPoints"]
                ["Points"] =
                {
                }, -- end of ["Points"]
            }, -- end of ["dataCartridge"]
            ["y"] = 160598.40784409,
            ["x"] = 205124.81940685,
            ["name"] = "Hornet Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                    }, -- end of [1]
                    [2] =
                    {
                        ["CLSID"] = "{LAU-115 - AIM-7M}",
                    }, -- end of [2]
                    [3] =
                    {
                        ["CLSID"] = "{FPU_8A_FUEL_TANK}",
                    }, -- end of [3]
                    [4] =
                    {
                        ["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
                    }, -- end of [4]
                    [5] =
                    {
                        ["CLSID"] = "{FPU_8A_FUEL_TANK}",
                    }, -- end of [5]
                    [6] =
                    {
                        ["CLSID"] = "{C8E06185-7CD6-4C90-959F-044679E90751}",
                    }, -- end of [6]
                    [7] =
                    {
                        ["CLSID"] = "{FPU_8A_FUEL_TANK}",
                    }, -- end of [7]
                    [8] =
                    {
                        ["CLSID"] = "{LAU-115 - AIM-7M}",
                    }, -- end of [8]
                    [9] =
                    {
                        ["CLSID"] = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}",
                    }, -- end of [9]
                }, -- end of ["pylons"]
                ["fuel"] = 4900,
                ["flare"] = 60,
                ["ammo_type"] = 1,
                ["chaff"] = 60,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.4506189191166,
            ["callsign"] =
            {
                [1] = 6,
                [2] = 1,
                ["name"] = "Ford11",
                [3] = 1,
            }, -- end of ["callsign"]
            ["datalinks"] =
            {
                ["Link16"] =
                {
                    ["settings"] =
                    {
                        ["FF1_Channel"] = 2,
                        ["FF2_Channel"] = 3,
                        ["transmitPower"] = 0,
                        ["AIC_Channel"] = 1,
                        ["VOCA_Channel"] = 4,
                        ["VOCB_Channel"] = 5,
                    }, -- end of ["settings"]
                    ["network"] =
                    {
                        ["teamMembers"] =
                        {
                            [1] =
                            {
                                ["missionUnitId"] = 390,
                            }, -- end of [1]
                        }, -- end of ["teamMembers"]
                        ["donors"] =
                        {
                        }, -- end of ["donors"]
                    }, -- end of ["network"]
                }, -- end of ["Link16"]
            }, -- end of ["datalinks"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 160598.40784409,
    ["x"] = 205124.81940685,
    ["name"] = "Hornet Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 305,
}

MirageF1 = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = false,
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 298.05555555556,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["number"] = 1,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["number"] = 2,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["number"] = 6,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["x"] = 169959.41999232,
                                    ["y"] = 132301.76903301,
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["number"] = 7,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 9,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 10,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 160328.57977994,
                ["x"] = 204921.54408122,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 298.05555555556,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 222.94517393835,
                ["ETA_locked"] = false,
                ["y"] = 131654.06782023,
                ["x"] = 170311.61455891,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 184,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "114th combat wing tanagra ab (fictional c version)",
            ["skill"] = "High",
            ["speed"] = 298.05555555556,
            ["AddPropAircraft"] =
            {
            }, -- end of ["AddPropAircraft"]
            ["type"] = "Mirage-F1CE",
            ["unitId"] = 398,
            ["psi"] = 2.4497104495921,
            ["onboard_num"] = "023",
            ["y"] = 160328.57977994,
            ["x"] = 204921.54408122,
            ["name"] = "MirageF1 Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "{AIM-9JULI}",
                    }, -- end of [1]
                    [3] =
                    {
                        ["CLSID"] = "PTB-1200-F1",
                    }, -- end of [3]
                    [4] =
                    {
                        ["CLSID"] = "{R530F_EM}",
                    }, -- end of [4]
                    [5] =
                    {
                        ["CLSID"] = "PTB-1200-F1",
                    }, -- end of [5]
                    [7] =
                    {
                        ["CLSID"] = "{AIM-9JULI}",
                    }, -- end of [7]
                }, -- end of ["pylons"]
                ["fuel"] = 3356,
                ["flare"] = 15,
                ["chaff"] = 30,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.4497104495921,
            ["callsign"] =
            {
                [1] = 6,
                [2] = 2,
                ["name"] = "Ford21",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 160328.57977994,
    ["x"] = 204921.54408122,
    ["name"] = "MirageF1 Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 127.5,
}

Fishbed = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = false,
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 220.97222222222,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["number"] = 1,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["number"] = 2,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["number"] = 6,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["x"] = 169959.41999232,
                                    ["y"] = 132301.76903301,
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["number"] = 7,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 9,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 10,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 160660.97267522,
                ["x"] = 205533.40323648,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 220.97222222222,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 222.94517393835,
                ["ETA_locked"] = false,
                ["y"] = 131986.46071551,
                ["x"] = 170910.1911266,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 181,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "iran - standard",
            ["skill"] = "High",
            ["speed"] = 220.97222222222,
            ["type"] = "MiG-21Bis",
            ["unitId"] = 395,
            ["psi"] = 2.4498989500601,
            ["onboard_num"] = "020",
            ["y"] = 160660.97267522,
            ["x"] = 205533.40323648,
            ["name"] = "Fishbed Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "{R-3S}",
                    }, -- end of [1]
                    [2] =
                    {
                        ["CLSID"] = "{R-3R}",
                    }, -- end of [2]
                    [3] =
                    {
                        ["CLSID"] = "{PTB_800_MIG21}",
                    }, -- end of [3]
                    [4] =
                    {
                        ["CLSID"] = "{R-3R}",
                    }, -- end of [4]
                    [5] =
                    {
                        ["CLSID"] = "{R-3S}",
                    }, -- end of [5]
                    [6] =
                    {
                        ["CLSID"] = "{ASO-2}",
                    }, -- end of [6]
                }, -- end of ["pylons"]
                ["fuel"] = 2280,
                ["flare"] = 40,
                ["ammo_type"] = 1,
                ["chaff"] = 18,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.4498989500601,
            ["callsign"] =
            {
                [1] = 3,
                [2] = 2,
                ["name"] = "Uzi21",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 160660.97267522,
    ["x"] = 205533.40323648,
    ["name"] = "Fishbed Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 124,
}

Flanker = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = false,
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 169.58333333333,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["number"] = 1,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["number"] = 2,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["number"] = 6,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["x"] = 169959.41999232,
                                    ["y"] = 132301.76903301,
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["number"] = 7,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 9,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 10,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 160121.50325657,
                ["x"] = 205128.62060459,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 169.58333333333,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 222.94517393835,
                ["ETA_locked"] = false,
                ["y"] = 131456.85208368,
                ["x"] = 170518.69108228,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 185,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "Air Force Standard Early",
            ["skill"] = "High",
            ["speed"] = 169.58333333333,
            ["type"] = "Su-27",
            ["unitId"] = 399,
            ["psi"] = 2.4498794180383,
            ["onboard_num"] = "024",
            ["y"] = 160121.50325657,
            ["x"] = 205128.62060459,
            ["name"] = "Flanker Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
                    }, -- end of [1]
                    [2] =
                    {
                        ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                    }, -- end of [2]
                    [3] =
                    {
                        ["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
                    }, -- end of [3]
                    [4] =
                    {
                        ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                    }, -- end of [4]
                    [7] =
                    {
                        ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                    }, -- end of [7]
                    [8] =
                    {
                        ["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
                    }, -- end of [8]
                    [10] =
                    {
                        ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
                    }, -- end of [10]
                    [9] =
                    {
                        ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                    }, -- end of [9]
                }, -- end of ["pylons"]
                ["fuel"] = 5590.18,
                ["flare"] = 96,
                ["chaff"] = 96,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.4498794180383,
            ["callsign"] =
            {
                [1] = 7,
                [2] = 2,
                ["name"] = "Chevy21",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 160121.50325657,
    ["x"] = 205128.62060459,
    ["name"] = "Flanker Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 127.5,
}

FlankerD = {
    ["modulation"] = 0,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = false,
    ["task"] = "CAP",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 169.58333333333,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                            [1] =
                            {
                                ["number"] = 1,
                                ["key"] = "CAP",
                                ["id"] = "EngageTargets",
                                ["enabled"] = true,
                                ["auto"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Air",
                                    }, -- end of ["targetTypes"]
                                    ["priority"] = 0,
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["number"] = 2,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 17,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 4,
                                            ["name"] = 18,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 19,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
                                ["auto"] = true,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["targetTypes"] =
                                            {
                                            }, -- end of ["targetTypes"]
                                            ["name"] = 21,
                                            ["value"] = "none;",
                                            ["noTargetTypes"] =
                                            {
                                                [1] = "Fighters",
                                                [2] = "Multirole fighters",
                                                [3] = "Bombers",
                                                [4] = "Helicopters",
                                                [5] = "UAVs",
                                                [6] = "Infantry",
                                                [7] = "Fortifications",
                                                [8] = "Tanks",
                                                [9] = "IFV",
                                                [10] = "APC",
                                                [11] = "Artillery",
                                                [12] = "Unarmed vehicles",
                                                [13] = "AAA",
                                                [14] = "SR SAM",
                                                [15] = "MR SAM",
                                                [16] = "LR SAM",
                                                [17] = "Aircraft Carriers",
                                                [18] = "Cruisers",
                                                [19] = "Destroyers",
                                                [20] = "Frigates",
                                                [21] = "Corvettes",
                                                [22] = "Light armed ships",
                                                [23] = "Unarmed ships",
                                                [24] = "Submarines",
                                                [25] = "Cruise missiles",
                                                [26] = "Antiship Missiles",
                                                [27] = "AA Missiles",
                                                [28] = "AG Missiles",
                                                [29] = "SA Missiles",
                                            }, -- end of ["noTargetTypes"]
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                            [6] =
                            {
                                ["number"] = 6,
                                ["auto"] = false,
                                ["id"] = "EngageTargetsInZone",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["targetTypes"] =
                                    {
                                        [1] = "Fighters",
                                        [2] = "Multirole fighters",
                                        [3] = "Interceptors",
                                    }, -- end of ["targetTypes"]
                                    ["x"] = 169959.41999232,
                                    ["y"] = 132301.76903301,
                                    ["value"] = "Fighters;Multirole fighters;Interceptors;",
                                    ["noTargetTypes"] =
                                    {
                                        [1] = "Bombers",
                                        [2] = "Helicopters",
                                        [3] = "UAVs",
                                        [4] = "Cruise missiles",
                                        [5] = "Antiship Missiles",
                                        [6] = "AA Missiles",
                                        [7] = "AG Missiles",
                                        [8] = "SA Missiles",
                                    }, -- end of ["noTargetTypes"]
                                    ["priority"] = 0,
                                    ["zoneRadius"] = 46300.0344,
                                }, -- end of ["params"]
                            }, -- end of [6]
                            [7] =
                            {
                                ["number"] = 7,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [7]
                            [8] =
                            {
                                ["number"] = 8,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 3,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [8]
                            [9] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 9,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 1,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [9]
                            [10] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 10,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 1,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [10]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 160303.92781287,
                ["x"] = 205424.44420941,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 4572,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 169.58333333333,
                ["task"] =
                {
                    ["id"] = "ComboTask",
                    ["params"] =
                    {
                        ["tasks"] =
                        {
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 222.94517393835,
                ["ETA_locked"] = false,
                ["y"] = 131614.62467292,
                ["x"] = 170853.9578344,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 186,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["hardpoint_racks"] = true,
            ["alt_type"] = "BARO",
            ["livery_id"] = "279th kiap 1st squad Syria 2017",
            ["skill"] = "High",
            ["speed"] = 169.58333333333,
            ["type"] = "Su-33",
            ["unitId"] = 400,
            ["psi"] = 2.4488967668679,
            ["onboard_num"] = "025",
            ["y"] = 160303.92781287,
            ["x"] = 205424.44420941,
            ["name"] = "FlankerD Spawn",
            ["payload"] =
            {
                ["pylons"] =
                {
                    [1] =
                    {
                        ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
                    }, -- end of [1]
                    [2] =
                    {
                        ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                    }, -- end of [2]
                    [3] =
                    {
                        ["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
                    }, -- end of [3]
                    [4] =
                    {
                        ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                    }, -- end of [4]
                    [11] =
                    {
                        ["CLSID"] = "{FBC29BFE-3D24-4C64-B81D-941239D12249}",
                    }, -- end of [11]
                    [10] =
                    {
                        ["CLSID"] = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
                    }, -- end of [10]
                    [12] =
                    {
                        ["CLSID"] = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
                    }, -- end of [12]
                    [9] =
                    {
                        ["CLSID"] = "{E8069896-8435-4B90-95C0-01A03AE6E400}",
                    }, -- end of [9]
                }, -- end of ["pylons"]
                ["fuel"] = 4750,
                ["flare"] = 48,
                ["chaff"] = 48,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = -2.4488967668679,
            ["callsign"] =
            {
                [1] = 8,
                [2] = 2,
                ["name"] = "Pontiac21",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 160303.92781287,
    ["x"] = 205424.44420941,
    ["name"] = "FlankerD Spawn",
    ["communication"] = false,
    ["start_time"] = 0,
    ["frequency"] = 124,
}
