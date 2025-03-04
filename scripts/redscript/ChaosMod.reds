module ChaosMod

import ChaosMod.UI.*
import ChaosMod.Utils.*
import ChaosMod.Effects.*

public static func IsPresent() {
}

private class ActiveEffectRecord {
  public let info: ref<ChaosEffectInfo>;
  public let runtime: ref<ActiveChaosEffect>;
  public let age: Float;

  public static func SpawnEffect(effect: ref<ChaosEffect>) -> ref<ActiveEffectRecord> {
    let record = new ActiveEffectRecord();
    record.info = effect.GetInfo();
    record.runtime = effect.ActivateEffect();
    return record;
  }
}

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

    this.config = GameInstance.GetScriptableServiceContainer().GetService(n"ChaosMod.ConfigService") as ConfigService;
    this.config.BindChaosMod(this);

    this.registry = GameInstance
      .GetScriptableServiceContainer()
      .GetService(n"ChaosMod.EffectRegistryService") as EffectRegistryService;

    this.ui = new ChaosUIComponent();
  }

  private func OnDetach() {
    this.disable();
    this.config.UnbindChaosMod(this);
  }

  private cb func OnTimerUpdate(progress: Float) {
    this.ui.SetTime(progress);
    this.UpdateEffects(progress - this.lastProgress);

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

  // MARK: Effect stuff
  public func ActivateRandomEffect() {
    let effect = this.registry.GetRandomEffect();
    this.ActivateEffect(effect);
  }

  public func ActivateEffect(effect: ref<ChaosEffect>) {
    let record = ActiveEffectRecord.SpawnEffect(effect);
    ArrayPush(this.activeEffects, record);
    record.runtime.OnStart();
    // TODO: UI
    true;
  }

  private func UpdateEffects(delta: Float) {
    let stillActiveEffects: array<ref<ActiveEffectRecord>>;
    ArrayResize(stillActiveEffects, ArraySize(this.activeEffects));

    for effect in this.activeEffects {
      effect.age += delta;

      if effect.age >= effect.info.duration {
        this.StopEffect(effect);
      } else {
        effect.runtime.OnUpdate();
        ArrayPush(stillActiveEffects, effect);
        // TODO: UI
        true;
      }
    }

    this.activeEffects = stillActiveEffects;
  }

  private func StopEffect(effect: ref<ActiveEffectRecord>) {
    effect.runtime.OnEnd();
    // TODO: UI
    true;
  }

  public func StopAllEffects() {
    for effect in this.activeEffects {
      this.StopEffect(effect);
    }
    this.activeEffects = [];
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
}

