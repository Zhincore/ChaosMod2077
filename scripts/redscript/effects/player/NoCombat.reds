module ChaosMod.Effects.NoCombat

import ChaosMod.Effects.*

/// https://github.com/justarandomguyintheinternet/CP77_ChaosMod/blob/main/events/noWeapons.lua
public class NoCombatEffect extends ChaosEffect {
    public func GetDuration() -> ChaosTimedType {
        return ChaosTimedType.Normal;
    }

    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        return new NoCombatActiveEffect();
    }
}

private class NoCombatActiveEffect extends ActiveChaosEffect {
    public func OnStart() {
        let player = GetPlayer(GetGameInstance());
        StatusEffectHelper.ApplyStatusEffect(player, t"GameplayRestriction.NoCombat");
    }

    public func OnStop() {
        let player = GetPlayer(GetGameInstance());
        StatusEffectHelper.RemoveStatusEffect(player, t"GameplayRestriction.NoCombat");
    }
}

