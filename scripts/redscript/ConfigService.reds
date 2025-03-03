module ChaosMod

import ChaosMod.Effects.ChaosEffect

public class ConfigService extends ScriptableService {
  // MARK: Config
  persistent let timerDuration: Float = 30.0;
  //
  // MARK: Function
  private let effects: array<ref<ChaosEffect>>;
  private let chaosMod: wref<ChaosModSystem>;

  private cb func OnLoad() {
    this.effects = [];
  }

  public func BindChaosMod(chaosMod: wref<ChaosModSystem>) {
    this.chaosMod = chaosMod;

    // Update all properties
    this.SetTimerDuration(this.timerDuration);
  }

  public func UnbindChaosMod(chaosMod: wref<ChaosModSystem>) {
    if this.chaosMod == chaosMod {
      this.chaosMod = null;
    }
  }

  public func RegisterEffect(effect: ref<ChaosEffect>) {
    ArrayPush(this.effects, effect);
  }

  // MARK: Setters
  public func SetTimerDuration(duration: Float) {
    this.timerDuration = duration;
    if IsDefined(this.chaosMod) {
      this.chaosMod.timer.duration = duration;
    }
  }
}

