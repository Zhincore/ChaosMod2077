module ChaosMod.UI.ActiveEffect

import ChaosMod.UI.ProgressBar.*

public class ActiveEffectComponent extends inkComponent {
    private let timer: ref<ProgressBar>;
    private let text: ref<inkText>;

    protected cb func OnCreate() -> ref<inkWidget> {
        let root = new inkHorizontalPanel();
        root.SetName(n"ChaosMod Effect Item");
        root.SetAnchor(inkEAnchor.TopLeft);
        root.SetAnchorPoint(0.0, 0.0);
        root.SetMargin(0, 16, 0, 0);

        this.timer = new ProgressBar();
        this.timer.SetWidth(128);
        this.timer.SetHeight(12);
        this.timer.SetCentered(true);
        this.timer.SetColor(Color.ChaosCreate(200, 200, 200, 200));
        let timerRoot = this.timer.GetRootWidget();
        timerRoot.SetName(n"ChaosMod Item Timer");
        timerRoot.SetAnchor(inkEAnchor.CenterLeft);
        timerRoot.SetAnchorPoint(0.0, 0.5);
        timerRoot.SetVisible(false);
        timerRoot.SetAffectsLayoutWhenHidden(true);
        this.timer.Reparent(root, 0);

        this.text = new inkText();
        this.text.SetFontFamily("base\\gameplay\\gui\\fonts\\raj\\raj.inkfontfamily");
        this.text.SetFontStyle(n"Regular");
        this.text.SetFontSize(22);
        this.text.SetMargin(16, 0, 0, 0);
        this.text.Reparent(root, 1);

        return root;
    }

    public func SetTimerVisible(visible: Bool) {
        this.timer.GetRootWidget().SetVisible(visible);
    }

    public func SetName(name: CName) {
        this.text.SetLocalizedText(name);
    }

    public func SetTime(progress: Float) {
        this.timer.SetProgress(progress);
    }
}

