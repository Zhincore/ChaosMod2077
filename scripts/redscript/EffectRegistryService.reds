module ChaosMod.Registry

import ChaosMod.Utils.Callback
import ChaosMod.Lib.ChaosCNameMap
import ChaosMod.Effects.ChaosEffect

public func GetEffectRegistry() -> ref<EffectRegistryService> {
    return GameInstance
        .GetScriptableServiceContainer()
        .GetService(n"ChaosMod.Registry.EffectRegistryService") as EffectRegistryService;
}

public class EffectRegistryService extends ScriptableService {
    private let effects: ref<ChaosCNameMap>;

    public func Reset() {
        this.effects = new ChaosCNameMap();
    }

    public func RegisterEffect(effect: ref<ChaosEffect>) {
        //FTLog(s"Registering effect: \(effect.GetId())");
        if !IsDefined(this.effects) {
            this.Reset();
        }
        this.effects.Insert(effect.GetId(), effect);
    }

    public func UnregisterEffect(effect: ref<ChaosEffect>) {
        this.effects.Remove(effect.GetId());
    }

    public func GetEffect(name: CName) -> ref<ChaosEffect> {
        return this.effects.Get(name) as ChaosEffect;
    }

    public func GetAllEffects() -> array<ref<IScriptable>> {
        return this.effects.GetAll();
    }

    public func GetRandomEffect() -> ref<ChaosEffect> {
        let effects = this.effects.GetAll();
        return effects[RandRange(0, ArraySize(effects))] as ChaosEffect;
    }
}

