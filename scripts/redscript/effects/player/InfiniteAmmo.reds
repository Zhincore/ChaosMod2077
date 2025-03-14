module ChaosMod.Effects.InfiniteAmmo

import ChaosMod.Effects.*

/// https://github.com/justarandomguyintheinternet/CP77_ChaosMod/blob/main/events/infiniteAmmo.lua
public class InfiniteAmmoEffect extends ChaosEffect {
    public func GetDuration() -> ChaosTimedType {
        return ChaosTimedType.Normal;
    }

    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        return new InfiniteAmmoActiveEffect();
    }
}

private class InfiniteAmmoActiveEffect extends ActiveChaosEffect {
    public func OnStart() {
        let player = GetPlayer(GetGameInstance());
        StatusEffectHelper.ApplyStatusEffect(player, t"GameplayRestriction.InfiniteAmmo");
    }

    public func OnStop() {
        let player = GetPlayer(GetGameInstance());
        StatusEffectHelper.RemoveStatusEffect(player, t"GameplayRestriction.InfiniteAmmo");
    }
}

