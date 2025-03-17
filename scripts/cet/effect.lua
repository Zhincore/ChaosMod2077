---@enum ChaosTimedType
ChaosTimedType = {
    Instant = ChaosMod_Effects_ChaosTimedType.Instant,
    Short = ChaosMod_Effects_ChaosTimedType.Short,
    Normal = ChaosMod_Effects_ChaosTimedType.Normal
}

---@class Effect
---@field id string The unique identifier of the effect
---@field duration? ChaosTimedType The duration type of the effect
---@field incompatibleEffects? string[] List of ids of incompatible effects
---@field onStart function Called when the effect begins. Required.
---@field onUpdate? function Called every timer update while the effect is active. Optional.
---@field onStop? function Called when the effect ends, use this for clean up. Optional.

--- Register a LUA effect.
---@param effect Effect
function RegisterEffect(effect)
    listener = NewProxy({
        onStart = {
            args = {},
            callback = effect.onStart
        },
        onStop = {
            args = {},
            callback = effect.onStop or function() end
        },
        onUpdate = {
            args = {},
            callback = effect.onUpdate or function() end
        },
    })

    activeEffect = ChaosMod_Effects_External_ExternalActiveEffect.Create(
        listener:Target(),
        listener:Function("onStart"),
        listener:Function("onUpdate"),
        listener:Function("onStop")
    )

    CName.add(effect.id)
    return ChaosMod_Effects_External_ExternalEffect.Create(
        effect.id,
        effect.duration or ChaosTimedType.Instant,
        effect.incompatibleEffects or {},
        activeEffect
    )
end

return {
    ChaosTimedType = ChaosTimedType,
    RegisterEffect = RegisterEffect
}
