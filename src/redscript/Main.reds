module ChaosMod

import ChaosMod.Util.*
import ChaosMod.UI.*

public static func IsPresent() {
}

public class ChaosModSystem extends ScriptableSystem {
  private let ui: ref<ChaosUIComponent>;
  private let timer: ref<Timer>;

  private func OnAttach() {
    this.timer = Timer.Create(5, this, n"OnTimerUpdate");
  }

  private func OnDetach() {
    this.disable();
  }

  public cb func OnTimerUpdate(progress: Float) {
    this.ui.SetTime(progress);
  }

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

