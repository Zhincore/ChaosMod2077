module ChaosMod

import ChaosMod.UI.*
import ChaosMod.UI.ActiveEffect.*
import ChaosMod.Utils.Timer.*
import ChaosMod.Effects.*
import ChaosMod.Registry.*
import ChaosMod.Config.*

public func IsPresent() {
}

// MARK: Utility commands
public func StartEffect(name: CName) {
    let chaosmod = GameInstance
        .GetScriptableSystemsContainer(GetGameInstance())
        .Get(n"ChaosMod.ChaosModSystem") as ChaosModSystem;
    let effect = chaosmod.registry.FindEffect(name);
    if IsDefined(effect) {
        chaosmod.ActivateEffect(effect);
    } else {
        FTLogError("Effect not found!");
    }
}

// MARK: Main functionality
public class ChaosModSystem extends ScriptableSystem {
    private let registry: ref<EffectRegistryService>;
    private let config: ref<ConfigService>;
    private let ui: ref<ChaosUIComponent>;
    private let timer: ref<Timer>;
    private let activeEffects: array<ref<ActiveEffectRecord>>;
    private let lastProgress: Float;

    // MARK: Callbacks
    private func OnAttach() {
        this.timer = Timer.Create(5, this, n"OnTimerUpdate");

        this.config = GameInstance
            .GetScriptableServiceContainer()
            .GetService(n"ChaosMod.Config.ConfigService") as ConfigService;
        this.config.BindChaosMod(this);

        this.registry = GameInstance
            .GetScriptableServiceContainer()
            .GetService(n"ChaosMod.Registry.EffectRegistryService") as EffectRegistryService;

        this.ui = new ChaosUIComponent();
    }

    private func OnDetach() {
        this.disable();
        this.config.UnbindChaosMod(this);
    }

    private cb func OnTimerUpdate(progress: Float) {
        this.ui.SetTime(progress);
        //this.UpdateEffects(progress - this.lastProgress);

        if progress >= 1.0 {
            this.lastProgress = 0.0;
            this.ActivateRandomEffect();
        } else {
            this.lastProgress = progress;
        }
    }

    // MARK: Settings stuff
    public func Toggle(enabled: Bool) {
        if enabled {
            this.enable();
        } else {
            this.disable();
        }
    }

    public func IsEnabled() -> Bool {
        return this.timer.IsActive();
    }

    public func GetConfig() -> ref<ConfigService> {
        return this.config;
    }

    // MARK: Base stuff
    private func enable() {
        let window = GameInstance
            .GetInkSystem()
            .GetLayer(n"inkHUDLayer")
            .GetVirtualWindow();
        let root = window.GetWidgetByPathName(n"Root") as inkCanvas;
        this.ui.Reparent(root);
        this.ui.Toggle(true);

        this.timer.Start();
    }

    private func disable() {
        this.ui.Toggle(false);
        this.timer.Stop();
        this.lastProgress = 0.0;
        this.StopAllEffects();
    }

    // MARK: Effect stuff
    public func ActivateRandomEffect() {
        let effect = this.registry.GetRandomEffect();
        this.ActivateEffect(effect);
    }

    public func ActivateEffect(effect: ref<ChaosEffect>) {
        let record = ActiveEffectRecord.SpawnEffect(effect);
        ArrayPush(this.activeEffects, record);
        record.component = this.ui.AddEffect(record.id, record.isInstant);
        record.runtime.OnStart();
    }

    private func UpdateEffects(delta: Float) {
        let stillActiveEffects: array<ref<ActiveEffectRecord>> = [];
        ArrayResize(stillActiveEffects, ArraySize(this.activeEffects));

        for effect in this.activeEffects {
            effect.remaining -= delta;

            if effect.remaining <= -1.0 {
                this.StopEffect(effect);
            } else {
                effect.runtime.OnUpdate();
                ArrayPush(stillActiveEffects, effect);

                effect.component.SetTime(effect.remaining / effect.duration);
            }
        }

        this.activeEffects = stillActiveEffects;
    }

    private func StopEffect(effect: ref<ActiveEffectRecord>) {
        effect.runtime.OnEnd();
        this.ui.RemoveEffect(effect.component);
    }

    public func StopAllEffects() {
        for effect in this.activeEffects {
            this.StopEffect(effect);
        }
        this.activeEffects = [];
    }
}

private class ActiveEffectRecord {
    public let id: CName;
    public let runtime: ref<ActiveChaosEffect>;
    public let component: ref<ActiveEffectComponent>;
    public let remaining: Float;
    public let duration: Float;
    public let isInstant: Bool;

    public static func SpawnEffect(effect: ref<ChaosEffect>) -> ref<ActiveEffectRecord> {
        let record = new ActiveEffectRecord();
        record.id = effect.GetId();
        FTLog(s"\(record.id) = \(effect)");
        record.runtime = effect.ActivateEffect();
        record.duration = Cast<Float>(EnumInt(effect.GetDuration()));
        record.remaining = record.duration;
        record.isInstant = record.duration == 0.0;
        return record;
    }
}

