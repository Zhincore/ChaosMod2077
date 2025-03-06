module ChaosMod.UI.ProgressBar

import ChaosMod.Utils.*

public class ProgressBar extends inkComponent {
    private let background: ref<inkRectangle>;
    private let bar: ref<inkRectangle>;

    protected cb func OnCreate() -> ref<inkWidget> {
        let root = new inkCanvas();
        root.SetName(n"ChaosMod Progress Bar");
        root.SetHeight(16.0);
        root.SetWidth(1024);

        let background = new inkRectangle();
        background.SetAnchor(inkEAnchor.Fill);
        background.SetOpacity(0.5);
        background.SetTintColor(Color.ChaosCreate(0, 0, 0, 0));
        background.Reparent(root, 0);
        this.background = background;

        let foreground = new inkRectangle();
        foreground.SetAnchor(inkEAnchor.LeftFillVerticaly);
        foreground.SetWidth(0.0);
        foreground.SetOpacity(0.9);
        foreground.SetTintColor(Color.ChaosCreate(255, 255, 255, 255));
        foreground.Reparent(root, 1);
        this.bar = foreground;

        return root;
    }

    public func SetWidth(width: Float) {
        this.GetRootWidget().SetWidth(width);
    }

    public func SetColor(color: Color) {
        this.bar.SetTintColor(color);
    }

    public func SetBarAlign(anchor: inkEAnchor) {
        this.bar.SetAnchor(anchor);
    }

    public func SetProgress(percentage: Float) {
        this.bar.SetWidth(percentage * this.GetRootWidget().GetWidth());
        this.bar.FlagForVisualInvalidation();
    }
}

