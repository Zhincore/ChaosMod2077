module ChaosMod.Effects.All

import ChaosMod.Effects.*
import ChaosMod.Effects.LaunchPeds.*
import ChaosMod.Effects.EveryoneExitsVehicle.*
import ChaosMod.Effects.DisassembleVeh.*
import ChaosMod.Effects.SpammyVehDoors.*

/// Returns list of built-in effects
public func GetEffects() -> array<ref<ChaosEffect>> {
    return [
        new LaunchPedsEffect(),
        new EveryoneExitsVehicleEffect(),
        new DisassembleVehEffect(),
        new SpammyVehDoorsEffect()
    ];
}

