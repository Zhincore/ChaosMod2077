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

    public func RegisterEffect(effect: ref<ChaosEffect>) {
        //FTLog(s"Registering effect: \(effect.GetId())");
        if !IsDefined(this.effects) {
            this.effects = new ChaosCNameMap();
        }
        this.effects.Insert(effect.GetId(), effect);
    }

    public func UnregisterEffect(effect: ref<ChaosEffect>) {
        this.effects.Remove(effect.GetId());
    }

    public func GetEffect(name: CName) -> ref<ChaosEffect> {
        return this.effects.Get(name) as ChaosEffect;
    }

    public func GetRandomEffect() -> ref<ChaosEffect> {
        let effects = this.effects.GetAll();
        return effects[RandRange(0, ArraySize(effects))] as ChaosEffect;
    }
}

