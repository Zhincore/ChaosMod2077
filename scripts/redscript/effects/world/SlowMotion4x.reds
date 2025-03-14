module ChaosMod.Effects.SlowMotion4x

import ChaosMod.Effects.*

public class SlowMotion4xEffect extends ChaosEffect {
    public func GetIncompatible() -> array<CName> {
        return [n"SlowMotion2x"];
    }

    public func GetDuration() -> ChaosTimedType {
        return ChaosTimedType.Short;
    }

    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        return new SlowMotion4xActiveEffect();
    }
}

private class SlowMotion4xActiveEffect extends ActiveChaosEffect {
    public func OnStart() {
        GameInstance.GetTimeSystem(GetGameInstance()).SetTimeDilation(n"ChaosMod", 0.25);
    }

    public func OnStop() {
        GameInstance.GetTimeSystem(GetGameInstance()).UnsetTimeDilation(n"ChaosMod");
    }
}

