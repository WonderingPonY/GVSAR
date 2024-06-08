Hawk = {
    ["visible"] = false,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["uncontrollable"] = false,
    ["task"] = "Ground Nothing",
    ["taskSelected"] = true,
    ["route"] =
    {
        ["spans"] =
        {
        }, -- end of ["spans"]
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 516,
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 428970.0923586,
                ["x"] = -156054.78808179,
                ["ETA_locked"] = true,
                ["speed"] = 0,
                ["action"] = "Off Road",
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
                                            ["groupId"] = 9,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 2,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["name"] = 8,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 3,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 9,
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
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 0,
                                            ["name"] = 0,
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
                                            ["value"] = 80,
                                            ["name"] = 24,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["speed_locked"] = true,
            }, -- end of [1]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 155,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Hawk cwar",
            ["unitId"] = 261,
            ["y"] = 428970.0923586,
            ["x"] = -156054.78808179,
            ["name"] = "Hawk SAM Site-5",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [1]
        [2] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Hawk ln",
            ["unitId"] = 260,
            ["y"] = 428857.0563813,
            ["x"] = -156118.30299547,
            ["name"] = "Hawk SAM LN Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [2]
        [3] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Hawk ln",
            ["unitId"] = 259,
            ["y"] = 429097.38500104,
            ["x"] = -156119.36581259,
            ["name"] = "Hawk SAM LN Site-2",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [3]
        [4] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Hawk sr",
            ["unitId"] = 258,
            ["y"] = 428903.03086893,
            ["x"] = -156195.12045833,
            ["name"] = "Hawk SAM SR Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [4]
        [5] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Hawk pcp",
            ["unitId"] = 257,
            ["y"] = 428973.1970572,
            ["x"] = -156110.67265652,
            ["name"] = "Hawk SAM CC Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [5]
        [6] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Ural-375",
            ["unitId"] = 378,
            ["y"] = 428971.33423804,
            ["x"] = -156140.47776304,
            ["name"] = "Hawk SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [6]
        [7] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Hawk tr",
            ["unitId"] = 256,
            ["y"] = 429041.50042631,
            ["x"] = -156199.46703636,
            ["name"] = "Hawk SAM SR Site",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [7]
    }, -- end of ["units"]
    ["y"] = 428970.0923586,
    ["x"] = -156054.78808179,
    ["name"] = "Hawk SAM Site",
    ["start_time"] = 0,
}

NASAM = {
    ["visible"] = false,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["uncontrollable"] = false,
    ["task"] = "Ground Nothing",
    ["taskSelected"] = true,
    ["route"] =
    {
        ["spans"] =
        {
        }, -- end of ["spans"]
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 538,
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 430167.36776683,
                ["x"] = -155962.83739823,
                ["ETA_locked"] = true,
                ["speed"] = 0,
                ["action"] = "Off Road",
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
                                            ["groupId"] = 10,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 2,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["name"] = 8,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 3,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 9,
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
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 0,
                                            ["name"] = 0,
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
                                            ["value"] = 80,
                                            ["name"] = 24,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [5]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["speed_locked"] = true,
            }, -- end of [1]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 156,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "NASAMS_Command_Post",
            ["unitId"] = 262,
            ["y"] = 430167.36776683,
            ["x"] = -155962.83739823,
            ["name"] = "NASAM CC SAM Site",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [1]
        [2] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Ural-375",
            ["unitId"] = 377,
            ["y"] = 430170.33192921,
            ["x"] = -156088.06904703,
            ["name"] = "NASAM SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [2]
        [3] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "NASAMS_Radar_MPQ64F1",
            ["unitId"] = 269,
            ["y"] = 430174.85487236,
            ["x"] = -156189.57255485,
            ["name"] = "NASAM SR SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [3]
        [4] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "NASAMS_LN_C",
            ["unitId"] = 268,
            ["y"] = 430273.32102431,
            ["x"] = -156089.08861886,
            ["name"] = "NASAM LN SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [4]
        [5] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "NASAMS_LN_C",
            ["unitId"] = 263,
            ["y"] = 430062.97139712,
            ["x"] = -156088.27013782,
            ["name"] = "NASAM LN SAM Site",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [5]
    }, -- end of ["units"]
    ["y"] = 430167.36776683,
    ["x"] = -155962.83739823,
    ["name"] = "NASAM SAM Site",
    ["start_time"] = 0,
}

Patriot = {
    ["visible"] = false,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["uncontrollable"] = false,
    ["task"] = "Ground Nothing",
    ["taskSelected"] = true,
    ["route"] =
    {
        ["spans"] =
        {
        }, -- end of ["spans"]
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 539,
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 434410.10202365,
                ["x"] = -155867.16304682,
                ["ETA_locked"] = true,
                ["speed"] = 0,
                ["action"] = "Off Road",
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
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["name"] = 8,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 2,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 9,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 3,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 0,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
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
                                            ["value"] = 80,
                                            ["name"] = 24,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["speed_locked"] = true,
            }, -- end of [1]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 158,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Patriot cp",
            ["unitId"] = 294,
            ["y"] = 434410.10202365,
            ["x"] = -155867.16304682,
            ["name"] = "Patriot SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [1]
        [2] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Patriot str",
            ["unitId"] = 304,
            ["y"] = 434771.42153734,
            ["x"] = -155988.56674836,
            ["name"] = "Patriot TR SAM Site-1",
            ["heading"] = 1.7453292519943,
            ["playerCanDrive"] = false,
        }, -- end of [2]
        [3] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Patriot str",
            ["unitId"] = 303,
            ["y"] = 434040.78176388,
            ["x"] = -156012.44386514,
            ["name"] = "Patriot TR SAM Site-5",
            ["heading"] = 4.7996554429844,
            ["playerCanDrive"] = false,
        }, -- end of [3]
        [4] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Patriot str",
            ["unitId"] = 302,
            ["y"] = 434438.34069485,
            ["x"] = -156430.15436027,
            ["name"] = "Patriot SAM Site-4",
            ["heading"] = 3.1764992386297,
            ["playerCanDrive"] = false,
        }, -- end of [4]
        [5] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Patriot str",
            ["unitId"] = 301,
            ["y"] = 434413.2724116,
            ["x"] = -155680.97339211,
            ["name"] = "Patriot TR SAM Site-4",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [5]
        [6] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Ural-375",
            ["unitId"] = 376,
            ["y"] = 434621.95444444,
            ["x"] = -155783.02934293,
            ["name"] = "Patriot SAM Site-8",
            ["heading"] = 5.550147021342,
            ["playerCanDrive"] = false,
        }, -- end of [6]
        [7] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Ural-375",
            ["unitId"] = 375,
            ["y"] = 434148.62243811,
            ["x"] = -155794.03706401,
            ["name"] = "Patriot SAM Site-7",
            ["heading"] = 5.550147021342,
            ["playerCanDrive"] = false,
        }, -- end of [7]
        [8] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Ural-375",
            ["unitId"] = 374,
            ["y"] = 434224.57571354,
            ["x"] = -156287.18296828,
            ["name"] = "Patriot SAM Site-6",
            ["heading"] = 5.550147021342,
            ["playerCanDrive"] = false,
        }, -- end of [8]
        [9] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Ural-375",
            ["unitId"] = 373,
            ["y"] = 434712.21775727,
            ["x"] = -156232.14436289,
            ["name"] = "Patriot SAM Site-5",
            ["heading"] = 5.550147021342,
            ["playerCanDrive"] = false,
        }, -- end of [9]
        [10] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Patriot ln",
            ["unitId"] = 300,
            ["y"] = 434753.75786906,
            ["x"] = -156306.13739912,
            ["name"] = "Patriot LN SAM Site-2",
            ["heading"] = 5.550147021342,
            ["playerCanDrive"] = false,
        }, -- end of [10]
        [11] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Patriot ln",
            ["unitId"] = 299,
            ["y"] = 434705.94873753,
            ["x"] = -155692.86481986,
            ["name"] = "Patriot LN SAM Site-5",
            ["heading"] = 3.9095375244673,
            ["playerCanDrive"] = false,
        }, -- end of [11]
        [12] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Patriot ln",
            ["unitId"] = 298,
            ["y"] = 434045.44038422,
            ["x"] = -155707.43485706,
            ["name"] = "Patriot LN SAM Site-1",
            ["heading"] = 2.0594885173533,
            ["playerCanDrive"] = false,
        }, -- end of [12]
        [13] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Patriot ln",
            ["unitId"] = 297,
            ["y"] = 434099.77683016,
            ["x"] = -156366.46575078,
            ["name"] = "Patriot LN SAM Site-4",
            ["heading"] = 0.75049157835756,
            ["playerCanDrive"] = false,
        }, -- end of [13]
        [14] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Patriot EPP",
            ["unitId"] = 296,
            ["y"] = 434451.23504915,
            ["x"] = -156139.02263929,
            ["name"] = "Patriot SAM Site-3",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [14]
        [15] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Patriot ECS",
            ["unitId"] = 295,
            ["y"] = 434520.95367001,
            ["x"] = -155986.51315616,
            ["name"] = "Patriot SAM Site-2",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [15]
        [16] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Patriot AMG",
            ["unitId"] = 290,
            ["y"] = 434337.94229025,
            ["x"] = -156006.12151828,
            ["name"] = "Patriot SR SAM Site",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [16]
    }, -- end of ["units"]
    ["y"] = 434410.10202365,
    ["x"] = -155867.16304682,
    ["name"] = "Patriot SAM Site",
    ["start_time"] = 0,
}

Rapier = {
    ["visible"] = false,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["uncontrollable"] = false,
    ["task"] = "Ground Nothing",
    ["taskSelected"] = true,
    ["route"] =
    {
        ["spans"] =
        {
        }, -- end of ["spans"]
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 523,
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 439028.7074278,
                ["x"] = -155981.25651517,
                ["ETA_locked"] = true,
                ["speed"] = 0,
                ["action"] = "Off Road",
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
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["name"] = 8,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 2,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 9,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 3,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 0,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
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
                                            ["value"] = 80,
                                            ["name"] = 24,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["speed_locked"] = true,
            }, -- end of [1]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 159,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "rapier_fsa_blindfire_radar",
            ["unitId"] = 312,
            ["y"] = 439028.7074278,
            ["x"] = -155981.25651517,
            ["name"] = "Rapier TR SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [1]
        [2] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Ural-375",
            ["unitId"] = 372,
            ["y"] = 439029.99382979,
            ["x"] = -156076.4123591,
            ["name"] = "Rapier SAM Site-2",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [2]
        [3] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "rapier_fsa_optical_tracker_unit",
            ["unitId"] = 314,
            ["y"] = 439039.0133889,
            ["x"] = -156172.05770586,
            ["name"] = "Rapier TR SAM Site-2",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [3]
        [4] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "rapier_fsa_launcher",
            ["unitId"] = 313,
            ["y"] = 439133.93014631,
            ["x"] = -156075.27983556,
            ["name"] = "Rapier SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [4]
        [5] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "rapier_fsa_launcher",
            ["unitId"] = 308,
            ["y"] = 438910.59659946,
            ["x"] = -156086.4465129,
            ["name"] = "Rapier LN SAM Site",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [5]
    }, -- end of ["units"]
    ["y"] = 439028.7074278,
    ["x"] = -155981.25651517,
    ["name"] = "Rapier SAM Site",
    ["start_time"] = 0,
}

SA11 = {
    ["visible"] = false,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["uncontrollable"] = false,
    ["task"] = "Ground Nothing",
    ["taskSelected"] = true,
    ["route"] =
    {
        ["spans"] =
        {
        }, -- end of ["spans"]
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 524,
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 0,
                ["x"] = 0,
                ["ETA_locked"] = true,
                ["speed"] = 0,
                ["action"] = "Off Road",
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
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["name"] = 8,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 2,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 9,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 3,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 0,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
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
                                            ["value"] = 80,
                                            ["name"] = 24,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["speed_locked"] = true,
            }, -- end of [1]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 160,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "SA-11 Buk CC 9S470M1",
            ["unitId"] = 319,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-11 CC Buk SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [1]
        [2] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "SA-11 Buk LN 9A310M1",
            ["unitId"] = 320,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-11 Buk SAM Site-2",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [2]
        [3] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "SA-11 Buk SR 9S18M1",
            ["unitId"] = 322,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-11 SR Buk SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [3]
        [4] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Ural-375",
            ["unitId"] = 371,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-11 Buk SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [4]
        [5] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "SA-11 Buk SR 9S18M1",
            ["unitId"] = 321,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-11 SR Buk SAM Site-3",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [5]
        [6] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "SA-11 Buk LN 9A310M1",
            ["unitId"] = 315,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-11 LN Buk SAM Site",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [6]
    }, -- end of ["units"]
    ["y"] = 0,
    ["x"] = 0,
    ["name"] = "SA-11 Buk SAM Site",
    ["start_time"] = 0,
}

SA2 = {
    ["visible"] = false,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["uncontrollable"] = false,
    ["task"] = "Ground Nothing",
    ["taskSelected"] = true,
    ["route"] =
    {
        ["spans"] =
        {
        }, -- end of ["spans"]
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 516,
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 0,
                ["x"] = 0,
                ["ETA_locked"] = true,
                ["speed"] = 0,
                ["action"] = "Off Road",
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
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["name"] = 8,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 2,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 9,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 3,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 0,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
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
                                            ["value"] = 80,
                                            ["name"] = 24,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["speed_locked"] = true,
            }, -- end of [1]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 161,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "SNR_75V",
            ["unitId"] = 328,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-2 SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [1]
        [2] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "S_75M_Volhov",
            ["unitId"] = 331,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-2 SAM Site-4",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [2]
        [3] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "S_75M_Volhov",
            ["unitId"] = 330,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-2 SAM Site-3",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [3]
        [4] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Ural-375",
            ["unitId"] = 370,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-2 SAM Site-8",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [4]
        [5] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Ural-375",
            ["unitId"] = 369,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-2 SAM Site-7",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [5]
        [6] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "S_75M_Volhov",
            ["unitId"] = 329,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-2 SAM Site-2",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [6]
        [7] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "S_75M_Volhov",
            ["unitId"] = 333,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-2 SAM Site-6",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [7]
        [8] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "S_75M_Volhov",
            ["unitId"] = 332,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-2 SAM Site-5",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [8]
        [9] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "p-19 s-125 sr",
            ["unitId"] = 335,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-2 SR SAM Site-7",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [9]
        [10] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "RD_75",
            ["unitId"] = 334,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-2 CC SAM Site-7",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [10]
        [11] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "S_75M_Volhov",
            ["unitId"] = 323,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-2 LN SAM Site",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [11]
    }, -- end of ["units"]
    ["y"] = 0,
    ["x"] = 0,
    ["name"] = "SA-2 SAM Site",
    ["start_time"] = 0,
}

SA10 = {
    ["visible"] = false,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["uncontrollable"] = false,
    ["task"] = "Ground Nothing",
    ["taskSelected"] = true,
    ["route"] =
    {
        ["spans"] =
        {
        }, -- end of ["spans"]
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 519,
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 0,
                ["x"] = 0,
                ["ETA_locked"] = true,
                ["speed"] = 0,
                ["action"] = "Off Road",
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
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["name"] = 8,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 2,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 9,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 3,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 0,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
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
                                            ["value"] = 80,
                                            ["name"] = 24,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["speed_locked"] = true,
            }, -- end of [1]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 164,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "S-300PS 64H6E sr",
            ["unitId"] = 358,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-10 SR SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [1]
        [2] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "S-300PS 40B6MD sr_19J6",
            ["unitId"] = 364,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-10 SR SAM Site-3",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [2]
        [3] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "S-300PS 5P85C ln",
            ["unitId"] = 363,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-10 LN SAM Site-2",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [3]
        [4] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "S-300PS 5P85C ln",
            ["unitId"] = 362,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-10 LN SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [4]
        [5] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "S-300PS 5H63C 30H6_tr",
            ["unitId"] = 361,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-10 TR SAM Site-2",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [5]
        [6] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "S-300PS 40B6M tr",
            ["unitId"] = 360,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-10 TR SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [6]
        [7] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "S-300PS 40B6MD sr",
            ["unitId"] = 359,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-10 SR SAM Site-2",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [7]
        [8] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Ural-375",
            ["unitId"] = 366,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-10 SAM Site-2",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [8]
        [9] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Ural-375",
            ["unitId"] = 365,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-10 SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [9]
        [10] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "S-300PS 54K6 cp",
            ["unitId"] = 357,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-10 CC SAM Site",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [10]
    }, -- end of ["units"]
    ["y"] = 0,
    ["x"] = 0,
    ["name"] = "SA-10 SAM Site",
    ["start_time"] = 0,
}

SA6 = {
    ["visible"] = false,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["uncontrollable"] = false,
    ["task"] = "Ground Nothing",
    ["taskSelected"] = true,
    ["route"] =
    {
        ["spans"] =
        {
        }, -- end of ["spans"]
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 526,
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 0,
                ["x"] = 0,
                ["ETA_locked"] = true,
                ["speed"] = 0,
                ["action"] = "Off Road",
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
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["name"] = 8,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 2,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 9,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 3,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 0,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
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
                                            ["value"] = 80,
                                            ["name"] = 24,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["speed_locked"] = true,
            }, -- end of [1]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 163,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Kub 2P25 ln",
            ["unitId"] = 349,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-6 Kub LN SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [1]
        [2] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Kub 1S91 str",
            ["unitId"] = 351,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-6 Kub SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [2]
        [3] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Kub 1S91 str",
            ["unitId"] = 350,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-6 Kub TR SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [3]
        [4] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Ural-375",
            ["unitId"] = 367,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-6 Kub SAM Site-2",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [4]
        [5] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Kub 2P25 ln",
            ["unitId"] = 352,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-6 Kub LN SAM Site-2",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [5]
        [6] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Kub 2P25 ln",
            ["unitId"] = 348,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-6 Kub LN SAM Site",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [6]
    }, -- end of ["units"]
    ["y"] = 0,
    ["x"] = 0,
    ["name"] = "SA-6 Kub SAM Site",
    ["start_time"] = 0,
}

SA3 = {
    ["visible"] = false,
    ["tasks"] =
    {
    }, -- end of ["tasks"]
    ["uncontrollable"] = false,
    ["task"] = "Ground Nothing",
    ["taskSelected"] = true,
    ["route"] =
    {
        ["spans"] =
        {
        }, -- end of ["spans"]
        ["points"] =
        {
            [1] =
            {
                ["alt"] = 531,
                ["type"] = "Turning Point",
                ["ETA"] = 0,
                ["alt_type"] = "BARO",
                ["formation_template"] = "",
                ["y"] = 0,
                ["x"] = 0,
                ["ETA_locked"] = true,
                ["speed"] = 0,
                ["action"] = "Off Road",
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
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["name"] = 8,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [1]
                            [2] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 2,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 2,
                                            ["name"] = 9,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [2]
                            [3] =
                            {
                                ["enabled"] = true,
                                ["auto"] = false,
                                ["id"] = "WrappedAction",
                                ["number"] = 3,
                                ["params"] =
                                {
                                    ["action"] =
                                    {
                                        ["id"] = "Option",
                                        ["params"] =
                                        {
                                            ["value"] = 0,
                                            ["name"] = 0,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [3]
                            [4] =
                            {
                                ["number"] = 4,
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
                                            ["value"] = 80,
                                            ["name"] = 24,
                                        }, -- end of ["params"]
                                    }, -- end of ["action"]
                                }, -- end of ["params"]
                            }, -- end of [4]
                        }, -- end of ["tasks"]
                    }, -- end of ["params"]
                }, -- end of ["task"]
                ["speed_locked"] = true,
            }, -- end of [1]
        }, -- end of ["points"]
    }, -- end of ["route"]
    ["groupId"] = 162,
    ["hidden"] = false,
    ["units"] =
    {
        [1] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "p-19 s-125 sr",
            ["unitId"] = 342,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-3 SR SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [1]
        [2] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "Ural-375",
            ["unitId"] = 368,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-3 SAM Site-1",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [2]
        [3] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "snr s-125 tr",
            ["unitId"] = 344,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-3 TR SAM Site-2",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [3]
        [4] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "5p73 s-125 ln",
            ["unitId"] = 343,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-3 LN SAM Site-2",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [4]
        [5] =
        {
            ["skill"] = "Average",
            ["coldAtStart"] = false,
            ["type"] = "5p73 s-125 ln",
            ["unitId"] = 337,
            ["y"] = 0,
            ["x"] = 0,
            ["name"] = "SA-3 LN SAM Site",
            ["heading"] = 0,
            ["playerCanDrive"] = false,
        }, -- end of [5]
    }, -- end of ["units"]
    ["y"] = 0,
    ["x"] = 0,
    ["name"] = "SA-3 SAM Site",
    ["start_time"] = 0,
}
