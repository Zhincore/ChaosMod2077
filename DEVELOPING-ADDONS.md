# Developing Addons

If you want to release a set of custom effects as your own mod (e.g., to add effects compatible with another mod) or use Lua, creating an addon is the best approach.

For RedScript-based addons, effects function exactly like non-addon effects. See [Developing Effects](./DEVELOPING-EFFECTS.md) for details.

Below is an example of how to develop an addon using CET Lua. Most of the logic is the same as a [RedScript effect](./DEVELOPING-EFFECTS.md):

```lua
-- init.lua

registerForEvent("onInit", function()
    --- Import the ChaosMod to interact with it
    --- @type ChaosMod
    local ChaosMod = GetMod("ChaosMod2077")

    -- Register an effect (you can call this multiple times to register more)
    ChaosMod.RegisterEffect({
        -- Unique ID of your effect; add an onscreen translation (in this case the key would be `ChaosMod-Effects-MyLua`)
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
```
