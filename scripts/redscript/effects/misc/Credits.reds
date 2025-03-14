module ChaosMod.Effects.Credits

import ChaosMod.Effects.*
import ChaosMod.Utils.Callback
import ChaosMod.Support.*

/// https://github.com/justarandomguyintheinternet/CP77_ChaosMod/blob/main/events/credits.lua
public class CreditsEffect extends ChaosEffect {
    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        return new CreditsActiveEffect();
    }
}

private class CreditsActiveEffect extends ActiveChaosEffect {
    public func OnStart() {
        let support = GetSupportService();
        support.inGameUI.SpawnMenuInstanceEvent(n"OnOpenPauseMenu");

        GameInstance
            .GetCallbackSystem()
            .RegisterCallback(n"InkWidget/Spawn", this, n"OnSpawn")
            .SetRunMode(CallbackRunMode.Once);
    }

    private cb func OnSpawn(evt: ref<inkWidgetSpawnEvent>) {
        let support = GetSupportService();
        support.pauseMenu.SwitchToScenario(n"MenuScenario_CreditsPickerPause");
        support.creditsPickerPause.SwitchMenu(n"finalboards_credits");
    }
}

