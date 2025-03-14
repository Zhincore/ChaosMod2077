module ChaosMod.Effects.MeleeOnly

import ChaosMod.Effects.*

/// https://github.com/justarandomguyintheinternet/CP77_ChaosMod/blob/main/events/forceMelee.lua
public class MeleeOnlyEffect extends ChaosEffect {
    public func GetDuration() -> ChaosTimedType {
        return ChaosTimedType.Normal;
    }

    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        return new MeleeOnlyActiveEffect();
    }
}

private class MeleeOnlyActiveEffect extends ActiveChaosEffect {
    public func OnStart() {
        let player = GetPlayer(GetGameInstance());
        StatusEffectHelper.ApplyStatusEffect(player, t"GameplayRestriction.Melee");
    }

    public func OnStop() {
        let player = GetPlayer(GetGameInstance());
        StatusEffectHelper.RemoveStatusEffect(player, t"GameplayRestriction.Melee");
    }
}

