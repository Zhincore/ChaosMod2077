-- This is an example of a Chaos Mod addon in CET Lua

registerForEvent("onInit", function()
    ---Import the ChaosMod so you can interact with it
    ---@type ChaosMod
    local ChaosMod = GetMod("ChaosMod2077")

    -- Register your effect, you can register multiple by calling ChaosMod.RegisterEffect multiple times
    ChaosMod.RegisterEffect({
        -- Unique id of your effect, remember to add an onscreen translation (in this case the key would be `ChaosMod-Effects-MyLua`)
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
