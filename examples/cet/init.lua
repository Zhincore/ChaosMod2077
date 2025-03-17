registerForEvent("onInit", function()
    ---@type ChaosMod
    local ChaosMod = GetMod("ChaosMod2077")

    ChaosMod.RegisterEffect({
        id = "MyLua",
        duration = ChaosMod.ChaosTimedType.Short,
        onStart = function()
            print("MyLua effect started")
        end,
        onStop = function()
            print("MyLua effect ended")
        end
    })
end)
