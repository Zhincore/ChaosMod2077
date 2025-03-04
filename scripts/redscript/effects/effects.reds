module ChaosMod.Effects

import ChaosMod.*

public static func GetEffects() -> array<ref<ChaosEffect>> {
  let a = new LaunchEveryoneEffect();

  Log(ToString(a.GetLocalization()));

  return [new LaunchEveryoneEffect(), new EveryoneExitsVehicleEffect()];
}

