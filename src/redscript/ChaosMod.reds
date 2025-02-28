module ChaosMod

import ChaosMod.Util.*
import ChaosMod.UI.*

public static func IsPresent() {
}

public class ChaosModSystem extends ScriptableSystem {
  private let ui: ref<ChaosUIComponent>;
  private let timer: ref<Timer>;
  private let config: ref<ConfigService>;

  // MARK: Stuff
  private func OnAttach() {
    this.timer = Timer.Create(5, this, n"OnTimerUpdate");

    this.config = GameInstance.GetScriptableServiceContainer().GetService(n"ChaosMod.ConfigService") as ConfigService;
    this.config.BindChaosMod(this);
  }

  private func OnDetach() {
    this.disable();
    this.config.UnbindChaosMod(this);
  }

  private cb func OnTimerUpdate(progress: Float) {
    this.ui.SetTime(progress);
  }

  // MARK: Public stuff
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

  // MARK: Private stuff
  private func enable() {
    if !IsDefined(this.ui) {
      this.createUI();
    }

    this.ui.Toggle(true);
    this.timer.Start();
  }

  private func disable() {
    if !IsDefined(this.ui) {
      return;
    }

    this.ui.Toggle(false);
    this.timer.Stop();
  }

  private func createUI() {
    let window = GameInstance
      .GetInkSystem()
      .GetLayer(n"inkHUDLayer")
      .GetVirtualWindow();
    let root = window.GetWidgetByPathName(n"Root") as inkCanvas;

    this.ui = new ChaosUIComponent();
    this.ui.Reparent(root);
  }
}

