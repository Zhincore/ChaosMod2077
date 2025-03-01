module ChaosMod.Effects

import ChaosMod.*

public static func GetEffects() -> array<ref<IChaosEffect>> {
  return [new LaunchEveryoneEffect(), new IChaosEffect()];
}

