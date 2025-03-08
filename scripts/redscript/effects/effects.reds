module ChaosMod.Effects.All

import ChaosMod.Effects.*
import ChaosMod.Effects.LaunchEveryone.*
import ChaosMod.Effects.EveryoneExitsVehicle.*
import ChaosMod.Effects.SpammyVehDoors.*

/// Returns list of built-in effects
public func GetEffects() -> array<ref<ChaosEffect>> {
    return [
        new LaunchEveryoneEffect(),
        new EveryoneExitsVehicleEffect(),
        new SpammyVehDoorsEffect()
    ];
}

