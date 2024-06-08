DrogueBoi = {
    ["lateActivation"] = false,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = true,
    ["task"] = "Refueling",
    ["uncontrolled"] = false,
    ["route"] =
    {
        ["routeRelativeTOT"] = false,
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 7620,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 248.20833333333,
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
                                ["auto"] = true,
                                ["id"] = "Tanker",
                                ["number"] = 1,
                                ["params"] =
                                {
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
                                        ["id"] = "ActivateBeacon",
                                        ["params"] =
                                        {
                                            ["type"] = 4,
                                            ["AA"] = false,
                                            ["unitId"] = 142,
                                            ["modeChannel"] = "Y",
                                            ["channel"] = 24,
                                            ["system"] = 5,
                                            ["callsign"] = "Tex",
                                            ["bearing"] = true,
                                            ["frequency"] = 1111000000,
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
                                        ["id"] = "EPLRS",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["groupId"] = 11,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 4,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "SetInvisible",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 5,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 7,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 45226.485002751,
                ["x"] = 1307.2202213906,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 7620,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 177.29166666667,
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
                ["ETA"] = 57.624872254841,
                ["ETA_locked"] = false,
                ["y"] = 46728.635099352,
                ["x"] = 11412.593598529,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
            [3] =
            {
                ["alt"] = 7620,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 177.29166666667,
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
                ["ETA"] = 573.69540253661,
                ["ETA_locked"] = false,
                ["y"] = 47001.753298734,
                ["x"] = 102907.19039154,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [3]
            [4] =
            {
                ["alt"] = 7620,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 177.29166666667,
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
                ["ETA"] = 597.57318636038,
                ["ETA_locked"] = false,
                ["y"] = 51235.085389158,
                ["x"] = 102907.19039154,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [4]
            [5] =
            {
                ["alt"] = 7620,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 177.29166666667,
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
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 1,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "SwitchWaypoint",
                                        ["params"] =
                                        {
                                            ["goToWaypointIndex"] = 2,
                                            ["fromWaypointIndex"] = 5,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [1]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 1114.4168340739,
                ["ETA_locked"] = false,
                ["y"] = 50825.408090085,
                ["x"] = 11276.034498838,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [5]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 41,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 7620,
            ["alt_type"] = "BARO",
            ["livery_id"] = "100th arw",
            ["skill"] = "Excellent",
            ["speed"] = 248.20833333333,
            ["type"] = "KC135MPRS",
            ["unitId"] = 142,
            ["psi"] = -0.14756807131393,
            ["onboard_num"] = "030",
            ["y"] = 45226.485002751,
            ["x"] = 1307.2202213906,
            ["name"] = "DrogueBoi",
            ["payload"] =
            {
                ["pylons"] =
                {
                }, -- end of ["pylons"]
                ["fuel"] = 90700,
                ["flare"] = 60,
                ["chaff"] = 120,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = 0.14756807131393,
            ["callsign"] =
            {
                [1] = 1,
                [2] = 1,
                ["name"] = "Texaco11",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 45226.485002751,
    ["x"] = 1307.2202213906,
    ["name"] = "DrogueBoi",
    ["communication"] = true,
    ["uncontrollable"] = false,
    ["start_time"] = 0,
    ["modulation"] = 0,
    ["frequency"] = 245,
}

StickBoi = {
    ["lateActivation"] = false,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = true,
    ["task"] = "Refueling",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["routeRelativeTOT"] = false,
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 7010.4,
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
                                ["auto"] = true,
                                ["id"] = "Tanker",
                                ["enabled"] = true,
                                ["params"] =
                                {
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
                                        ["id"] = "ActivateBeacon",
                                        ["params"] =
                                        {
                                            ["type"] = 4,
                                            ["AA"] = false,
                                            ["unitId"] = 144,
                                            ["system"] = 5,
                                            ["channel"] = 22,
                                            ["modeChannel"] = "Y",
                                            ["callsign"] = "SHL",
                                            ["bearing"] = true,
                                            ["frequency"] = 1109000000,
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
                                        ["id"] = "EPLRS",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["groupId"] = 29,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 4,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "SetInvisible",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 5,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["name"] = 7,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 54166.516373545,
                ["x"] = 475.11896444349,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 7010.4,
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
                ["ETA"] = 52.80127282443,
                ["ETA_locked"] = false,
                ["y"] = 55058.740180507,
                ["x"] = 11549.15269822,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
            [3] =
            {
                ["alt"] = 7010.4,
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
                ["ETA"] = 468.13797964795,
                ["ETA_locked"] = false,
                ["y"] = 56424.331177418,
                ["x"] = 103316.86769061,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [3]
            [4] =
            {
                ["alt"] = 7010.4,
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
                ["ETA"] = 488.56914048565,
                ["ETA_locked"] = false,
                ["y"] = 60930.781467223,
                ["x"] = 103589.98588999,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [4]
            [5] =
            {
                ["alt"] = 7010.4,
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
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 1,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "SwitchWaypoint",
                                        ["params"] =
                                        {
                                            ["goToWaypointIndex"] = 2,
                                            ["fromWaypointIndex"] = 5,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [1]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 903.91084109844,
                ["ETA_locked"] = false,
                ["y"] = 58882.394971857,
                ["x"] = 11276.034498838,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [5]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 43,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 7010.4,
            ["alt_type"] = "BARO",
            ["livery_id"] = "air micronesia 707",
            ["skill"] = "Excellent",
            ["speed"] = 220.97222222222,
            ["AddPropAircraft"] =
            {
                ["VoiceCallsignLabel"] = "SL",
                ["VoiceCallsignNumber"] = "11",
                ["STN_L16"] = "00420",
            }, -- end of ["AddPropAircraft"]
            ["type"] = "KC-135",
            ["unitId"] = 144,
            ["psi"] = -0.080395340119326,
            ["onboard_num"] = "032",
            ["y"] = 54166.516373545,
            ["x"] = 475.11896444349,
            ["name"] = "StickBoi",
            ["payload"] =
            {
                ["pylons"] =
                {
                }, -- end of ["pylons"]
                ["fuel"] = 90700,
                ["flare"] = 0,
                ["chaff"] = 0,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = 0.080395340119326,
            ["callsign"] =
            {
                [1] = 3,
                [2] = 2,
                ["name"] = "Shell21",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 54166.516373545,
    ["x"] = 475.11896444349,
    ["name"] = "StickBoi",
    ["communication"] = true,
    ["start_time"] = 0,
    ["modulation"] = 0,
    ["frequency"] = 243,
}

SlowBoi = {
    ["lateActivation"] = false,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = true,
    ["task"] = "Refueling",
    ["uncontrolled"] = false,
    ["taskSelected"] = true,
    ["route"] =
    {
        ["routeRelativeTOT"] = false,
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
                ["speed"] = 167.01388888889,
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
                                ["auto"] = true,
                                ["id"] = "Tanker",
                                ["number"] = 1,
                                ["params"] =
                                {
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
                                        ["id"] = "ActivateBeacon",
                                        ["params"] =
                                        {
                                            ["type"] = 4,
                                            ["AA"] = false,
                                            ["unitId"] = 143,
                                            ["modeChannel"] = "Y",
                                            ["channel"] = 20,
                                            ["system"] = 5,
                                            ["callsign"] = "ARC",
                                            ["bearing"] = true,
                                            ["frequency"] = 1107000000,
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
                                        ["id"] = "EPLRS",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["groupId"] = 12,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 4,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "SetInvisible",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                            [5] =
                            {
                                ["number"] = 5,
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
                                            ["value"] = true,
                                            ["name"] = 7,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 62706.049763207,
                ["x"] = 624.42472293517,
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
                ["speed"] = 167.01388888889,
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
                ["ETA"] = 63.598334649503,
                ["ETA_locked"] = false,
                ["y"] = 64208.199859808,
                ["x"] = 11139.475399147,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
            [3] =
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
                ["speed"] = 167.01388888889,
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
                ["ETA"] = 616.39099146374,
                ["ETA_locked"] = false,
                ["y"] = 65573.790856719,
                ["x"] = 103453.4267903,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [3]
            [4] =
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
                ["speed"] = 167.01388888889,
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
                ["ETA"] = 644.19113084367,
                ["ETA_locked"] = false,
                ["y"] = 70216.800246215,
                ["x"] = 103453.4267903,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [4]
            [5] =
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
                ["speed"] = 167.01388888889,
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
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 1,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "SwitchWaypoint",
                                        ["params"] =
                                        {
                                            ["goToWaypointIndex"] = 2,
                                            ["fromWaypointIndex"] = 5,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [1]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 1197.0103940555,
                ["ETA_locked"] = false,
                ["y"] = 68578.091049922,
                ["x"] = 11139.475399147,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [5]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 42,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 4572,
            ["alt_type"] = "BARO",
            ["livery_id"] = "Standard USAF",
            ["skill"] = "Excellent",
            ["speed"] = 167.01388888889,
            ["AddPropAircraft"] =
            {
                ["STN_L16"] = "00417",
                ["VoiceCallsignNumber"] = "11",
                ["VoiceCallsignLabel"] = "AO",
            }, -- end of ["AddPropAircraft"]
            ["type"] = "KC-135",
            ["unitId"] = 143,
            ["psi"] = -0.1418970546041,
            ["onboard_num"] = "031",
            ["y"] = 62706.049763207,
            ["x"] = 624.42472293517,
            ["name"] = "SlowBoi",
            ["payload"] =
            {
                ["pylons"] =
                {
                }, -- end of ["pylons"]
                ["fuel"] = 90700,
                ["flare"] = 0,
                ["chaff"] = 0,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = 0.1418970546041,
            ["callsign"] =
            {
                [1] = 2,
                [2] = 3,
                ["name"] = "Arco31",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 62706.049763207,
    ["x"] = 624.42472293517,
    ["name"] = "SlowBoi",
    ["communication"] = true,
    ["start_time"] = 0,
    ["modulation"] = 0,
    ["frequency"] = 234,
}

BigDaddy = {
    ["lateActivation"] = false,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["radioSet"] = true,
    ["task"] = "AWACS",
    ["uncontrolled"] = false,
    ["route"] =
    {
        ["routeRelativeTOT"] = false,
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 9144,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 207.09722222222,
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
                                ["auto"] = true,
                                ["id"] = "AWACS",
                                ["number"] = 1,
                                ["params"] =
                                {
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
                                        ["id"] = "EPLRS",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                            ["groupId"] = 2,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["number"] = 3,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["enabled"] = true,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "SetInvisible",
                                        ["params"] =
                                        {
                                            ["value"] = true,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["ETA_locked"] = true,
                ["y"] = 37688.637711995,
                ["x"] = 128189.97541777,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [1]
            [2] =
            {
                ["alt"] = 9144,
                ["action"] = "Turning Point",
                ["alt_type"] = "BARO",
                ["properties"] =
                {
                    ["addopt"] =
                    {
                    }, -- end of ["addopt"]
                }, -- end of ["properties"]
                ["speed"] = 207.09722222222,
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
                                ["auto"] = false,
                                ["id"] = "Orbit",
                                ["number"] = 1,
                                ["params"] =
                                {
                                    ["altitude"] = 9144,
                                    ["pattern"] = "Circle",
                                    ["speed"] = 207.09722222222,
                                    ["speedEdited"] = true,
                                }, -- end of ["params"]
                            }, -- end of [1]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["type"] = "Turning Point",
                ["ETA"] = 79.624625203837,
                ["ETA_locked"] = false,
                ["y"] = 54177.855119191,
                ["x"] = 128354.55254964,
                ["speed_locked"] = true,
                ["formation_template"] = "",
            }, -- end of [2]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 21,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["alt"] = 9144,
            ["alt_type"] = "BARO",
            ["livery_id"] = "nato",
            ["skill"] = "Excellent",
            ["speed"] = 207.09722222222,
            ["AddPropAircraft"] =
            {
                ["STN_L16"] = "00372",
                ["VoiceCallsignNumber"] = "11",
                ["VoiceCallsignLabel"] = "HG",
            }, -- end of ["AddPropAircraft"]
            ["type"] = "E-3A",
            ["unitId"] = 122,
            ["psi"] = -1.5608157641538,
            ["onboard_num"] = "018",
            ["y"] = 37688.637711995,
            ["x"] = 128189.97541777,
            ["name"] = "Big Daddy",
            ["payload"] =
            {
                ["pylons"] =
                {
                }, -- end of ["pylons"]
                ["fuel"] = "65000",
                ["flare"] = 60,
                ["chaff"] = 120,
                ["gun"] = 100,
            }, -- end of ["payload"]
            ["heading"] = 1.5608157641538,
            ["callsign"] =
            {
                [1] = 1,
                [2] = 1,
                ["name"] = "Overlord11",
                [3] = 1,
            }, -- end of ["callsign"]
        }, -- end of [1]
    }, -- end of ["units"]
    ["y"] = 37688.637711995,
    ["x"] = 128189.97541777,
    ["name"] = "Big Daddy",
    ["communication"] = true,
    ["start_time"] = 0,
    ["modulation"] = 0,
    ["frequency"] = 251,
}
