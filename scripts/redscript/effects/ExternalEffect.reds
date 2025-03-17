module ChaosMod.Effects.External

import ChaosMod.Effects.*
import ChaosMod.Registry.*
import ChaosMod.Utils.Callback

/// Allows registering effects from external sources (CET).
public class ExternalEffect extends ChaosEffect {
    private let id: CName;
    private let duration: ChaosTimedType;
    private let incompatibleEffects: array<CName>;
    private let activeEffect: ref<ExternalActiveEffect>;

    public static func Create(
        id: CName,
        duration: ChaosTimedType,
        incompatibleEffects: array<CName>,
        activeEffect: ref<ExternalActiveEffect>
    ) -> ref<ExternalEffect> {
        let effect = new ExternalEffect();
        effect.id = id;
        effect.duration = duration;
        effect.incompatibleEffects = incompatibleEffects;
        effect.activeEffect = activeEffect;
        // Register
        GetEffectRegistry().RegisterEffect(effect);
        return effect;
    }

    // No automatic registration
    protected cb func OnLoad() {
    }

    public func GetIncompatible() -> array<CName> {
        return this.incompatibleEffects;
    }

    public func GetDuration() -> ChaosTimedType {
        return this.duration;
    }

    public func GetId() -> CName {
        return this.id;
    }

    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        return this.activeEffect;
    }
}

public class ExternalActiveEffect extends ActiveChaosEffect {
    private let OnStartCb: ref<Callback>;
    private let OnUpdateCb: ref<Callback>;
    private let OnStopCb: ref<Callback>;

    public static func Create(target: ref<IScriptable>, start: CName, update: CName, stop: CName) -> ref<ExternalActiveEffect> {
        let effect = new ExternalActiveEffect();
        effect.OnStartCb = Callback.Create(target, start);
        effect.OnUpdateCb = Callback.Create(target, update);
        effect.OnStopCb = Callback.Create(target, stop);
        return effect;
    }

    public func OnStart() {
        this.OnStartCb.Call();
    }

    public func OnUpdate() {
        this.OnUpdateCb.Call();
    }

    public func OnStop() {
        this.OnStopCb.Call();
    }
}

