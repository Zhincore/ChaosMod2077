module ChaosMod.UI

public class ChaosUIComponent extends inkComponent {
  private let timer: ref<TimerBarComponent>;

  protected cb func OnCreate() -> ref<inkWidget> {
    let root = new inkCanvas();
    root.SetName(n"ChaosMod UI");
    root.SetAnchor(inkEAnchor.Fill);

    this.timer = new TimerBarComponent();
    this.timer.Reparent(root);

    return root;
  }

  public func Toggle(shown: Bool) {
    this.GetRootWidget().SetVisible(shown);
  }

  public func SetTime(progress: Float) {
    this.timer.SetProgress(progress);
  }
}

