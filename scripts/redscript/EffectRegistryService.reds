module ChaosMod

import ChaosMod.Effects.ChaosEffect
import ChaosMod.Effects.GetEffects

public class EffectRegistryService extends ScriptableService {
  private let effects: array<ref<ChaosEffect>>;

  private cb func OnLoad() {
    this.effects = GetEffects();
  }

  private cb func OnReload() {
    this.OnLoad();
  }

  public func RegisterEffect(effect: ref<ChaosEffect>) {
    ArrayPush(this.effects, effect);
  }

  public func GetEffects() -> array<ref<ChaosEffect>> {
    return this.effects;
  }

  /// Tries to find a registered effect by class name, null if not found
  public func FindEffect(name: CName) -> ref<ChaosEffect> {
    for effect in this.effects {
      if Equals(effect.GetClassName(), name) {
        return effect;
      }
    }
    return null;
  }

  public func GetRandomEffect() -> ref<ChaosEffect> {
    return this.effects[RandRange(0, ArraySize(this.effects))];
  }
}

