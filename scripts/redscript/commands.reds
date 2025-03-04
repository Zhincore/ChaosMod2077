module ChaosMod

import ChaosMod.Effects.ChaosEffect

// Utility commands
public static func StartEffect(name: CName) {
  let chaosmod = GetGameInstance().GetScriptableSystemsContainer().Get(n"ChaosMod.ChaosModSystem") as ChaosModSystem;
  let effect = chaosmod.registry.FindEffect(n"ChaosMod.Effects." + name + n"Effect");
  if IsDefined(effect) {
    chaosmod.ActivateEffect(effect);
  } else {
    LogError("Effect not found!");
  }
}

