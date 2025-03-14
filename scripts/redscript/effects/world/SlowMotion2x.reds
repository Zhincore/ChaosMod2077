module ChaosMod.Effects.SlowMotion2x

import ChaosMod.Effects.*

public class SlowMotion2xEffect extends ChaosEffect {
    public func GetIncompatible() -> array<CName> {
        return [n"SlowMotion4x"];
    }

    public func GetDuration() -> ChaosTimedType {
        return ChaosTimedType.Short;
    }

    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        return new SlowMotion2xActiveEffect();
    }
}

private class SlowMotion2xActiveEffect extends ActiveChaosEffect {
    public func OnStart() {
        GameInstance.GetTimeSystem(GetGameInstance()).SetTimeDilation(n"ChaosMod", 0.5);
    }

    public func OnStop() {
        GameInstance.GetTimeSystem(GetGameInstance()).UnsetTimeDilation(n"ChaosMod");
    }
}

