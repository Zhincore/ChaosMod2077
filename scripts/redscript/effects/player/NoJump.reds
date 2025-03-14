module ChaosMod.Effects.NoJump

import ChaosMod.Effects.*

/// https://github.com/justarandomguyintheinternet/CP77_ChaosMod/blob/main/events/noJump.lua
public class NoJumpEffect extends ChaosEffect {
    public func GetDuration() -> ChaosTimedType {
        return ChaosTimedType.Normal;
    }

    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        return new NoJumpActiveEffect();
    }
}

private class NoJumpActiveEffect extends ActiveChaosEffect {
    public func OnStart() {
        let player = GetPlayer(GetGameInstance());
        StatusEffectHelper.ApplyStatusEffect(player, t"GameplayRestriction.NoJump");
    }

    public func OnStop() {
        let player = GetPlayer(GetGameInstance());
        StatusEffectHelper.RemoveStatusEffect(player, t"GameplayRestriction.NoJump");
    }
}

