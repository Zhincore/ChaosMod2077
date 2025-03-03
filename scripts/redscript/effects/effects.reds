module ChaosMod.Effects

import ChaosMod.*

public static func GetEffects() -> array<ref<ChaosEffect>> {
  return [new LaunchEveryoneEffect(), new EveryoneExitsVehicleEffect()];
}

