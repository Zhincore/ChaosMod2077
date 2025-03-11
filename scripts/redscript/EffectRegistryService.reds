module ChaosMod.Registry

import ChaosMod.Lib.ChaosCNameMap
import ChaosMod.Effects.ChaosEffect

public class RegisterEffectsEvent extends CallbackSystemEvent {
    private let registry: ref<EffectRegistryService>;

    public func GetRegistry() -> ref<EffectRegistryService> {
        return this.registry;
    }

    public static func Create(registry: ref<EffectRegistryService>) -> ref<RegisterEffectsEvent> {
        let event = new RegisterEffectsEvent();
        event.registry = registry;
        return event;
    }
}

public class EffectRegistryService extends ScriptableService {
    private let effects: ref<ChaosCNameMap>;

    private cb func OnLoad() {
        this.effects = new ChaosCNameMap();
        GameInstance.GetCallbackSystem().DispatchEvent(RegisterEffectsEvent.Create(this));
    }

    private cb func OnReload() {
        this.OnLoad();
    }

    public func RegisterEffect(effect: ref<ChaosEffect>) {
        FTLog(s"Registering effect: \(effect.GetId())");
        this.effects.Insert(effect.GetId(), effect);
    }

    public func UnregisterEffect(effect: ref<ChaosEffect>) {
        this.effects.Remove(effect.GetId());
    }

    /// Tries to find a registered effect by class name, null if not found
    public func GetEffect(name: CName) -> ref<ChaosEffect> {
        return this.effects.Get(name) as ChaosEffect;
    }

    public func GetRandomEffect() -> ref<ChaosEffect> {
        let effects = this.effects.GetAll();
        return effects[RandRange(0, ArraySize(effects))] as ChaosEffect;
    }
}

