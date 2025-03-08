module ChaosMod.UI

import ChaosMod.UI.ProgressBar.*
import ChaosMod.UI.ActiveEffect.*
import ChaosMod.Utils.*

public class ChaosUIComponent extends inkComponent {
    private let timer: ref<ProgressBar>;
    private let effects: ref<inkVerticalPanel>;

    protected cb func OnCreate() -> ref<inkWidget> {
        let root = new inkCanvas();
        root.SetName(n"ChaosMod UI");
        root.SetAnchor(inkEAnchor.Fill);

        this.timer = new ProgressBar();
        this.timer.SetColor(Color.ChaosCreate(0, 127, 255, 255));
        let timerRoot = this.timer.GetRootWidget();
        timerRoot.SetName(n"ChaosMod Main Timer");
        timerRoot.SetAnchor(inkEAnchor.TopCenter);
        timerRoot.SetAnchorPoint(0.5, 0.0);
        timerRoot.SetMargin(0, 16, 0, 0);
        this.timer.Reparent(root);

        this.effects = new inkVerticalPanel();
        this.effects.SetMargin(4, 128, 0, 0);
        this.effects.Reparent(root);

        return root;
    }

    public func Toggle(shown: Bool) {
        this.GetRootWidget().SetVisible(shown);
    }

    public func SetTime(progress: Float) {
        this.timer.SetProgress(progress);
    }

    public func AddEffect(id: CName, isInstant: Bool) -> ref<ActiveEffectComponent> {
        let effect = new ActiveEffectComponent();
        effect.SetTimerVisible(!isInstant);
        effect.SetName(GetEffectName(id));
        effect.Reparent(this.effects);

        return effect;
    }

    public func RemoveEffect(component: ref<ActiveEffectComponent>) {
        this.effects.RemoveChild(component.GetRootWidget());
    }
}

