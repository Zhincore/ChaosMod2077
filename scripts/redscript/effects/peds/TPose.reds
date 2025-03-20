module ChaosMod.Effects.TPose

import ChaosMod.Effects.*

/// https://github.com/justarandomguyintheinternet/CP77_ChaosMod/blob/b740f05918a6905e8b654dd5fe4c4b4a1bf0f4d7/events/tPose.lua
public class TPoseEffect extends ChaosEffect {
    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        return new TPoseActiveEffect();
    }
}

// TODO: Make this much more obnoxious? LODs, make npcs slide, etc?
private class TPoseActiveEffect extends ActiveChaosEffect {
    public func OnStart() {
        for entity in GameInstance.GetEntityList(GetGameInstance()) {
            let puppet = entity as gamePuppet;
            if IsDefined(puppet) {
                StatusEffectHelper.ApplyStatusEffect(puppet, t"BaseStatusEffect.AndroidTurnOff");
            }
        }
    }
}

