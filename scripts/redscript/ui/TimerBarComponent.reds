module ChaosMod.UI

import Codeware.*

public class TimerBarComponent extends inkComponent {
  private let bar: ref<inkRectangle>;

  protected cb func OnCreate() -> ref<inkWidget> {
    let root = new inkCanvas();
    root.SetName(n"ChaosMod timer bar");
    root.SetAnchor(inkEAnchor.TopCenter);
    root.SetAnchorPoint(0.5, 0.0);
    root.SetMargin(0, 16, 0, 0);
    root.SetHeight(16.0);
    root.SetWidth(1024.0);

    let background = new inkRectangle();
    background.SetAnchor(inkEAnchor.Fill);
    background.SetOpacity(0.5);
    background.SetTintColor(new HDRColor(0, 0, 0, 0));
    background.Reparent(root, 0);

    let foreground = new inkRectangle();
    foreground.SetAnchor(inkEAnchor.LeftFillVerticaly);
    foreground.SetWidth(0.0);
    foreground.SetOpacity(0.9);
    foreground
      .SetTintColor(Cast<Uint8>(0), Cast<Uint8>(127), Cast<Uint8>(255), Cast<Uint8>(255));
    foreground.Reparent(root, 1);
    this.bar = foreground;

    return root;
  }

  public func SetProgress(percentage: Float) {
    this.bar.SetWidth(percentage * 1024.0);
    this.bar.FlagForVisualInvalidation();
  }
}

