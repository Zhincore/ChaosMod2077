module ChaosMod.Effects.DrunkPlayer

import ChaosMod.Effects.*

/// https://github.com/justarandomguyintheinternet/CP77_ChaosMod/blob/main/events/drunk.lua
public class DrunkPlayerEffect extends ChaosEffect {
    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        return new DrunkPlayerActiveEffect();
    }
}

private class DrunkPlayerActiveEffect extends ActiveChaosEffect {
    public func OnStart() {
        let player = GetPlayer(GetGameInstance());
        StatusEffectHelper.ApplyStatusEffect(player, t"BaseStatusEffect.Drunk");
        StatusEffectHelper.ApplyStatusEffect(player, t"BaseStatusEffect.Drunk");
        StatusEffectHelper.ApplyStatusEffect(player, t"BaseStatusEffect.Drunk");
        StatusEffectHelper.ApplyStatusEffect(player, t"BaseStatusEffect.Drunk");
    }
}

