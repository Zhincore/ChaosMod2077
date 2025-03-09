module ChaosMod.Effects

public enum ChaosTimedType {
    Instant = 0,
    Short = 1,
    Normal = 3,
}

/// Base class for all effects.
public abstract class ChaosEffect {
    /// Get ids of incompatible effects. Default is none.
    public func GetIncompatible() -> array<CName> {
        return [];
    }

    /// Get the duration of the effect. Default is instant.
    public func GetDuration() -> ChaosTimedType {
        return ChaosTimedType.Instant;
    }

    /// Return ID of the effect, used also for localization. Class name by default.
    public func GetId() -> CName {
        let key = StrAfterLast(NameToString(this.GetClassName()), ".");

        // Remove trailing "Effect"
        if StrEndsWith(key, "Effect") {
            key = StrBeforeLast(key, "Effect");
        }

        return StringToName(key);
    }

    /// Return an instance of ActiveChaosEffect.
    public func ActivateEffect() -> ref<ActiveChaosEffect>;
}

/// "Interface" for a active chaos effect.
public abstract class ActiveChaosEffect {
    /// Called when the effect begins. Required.
    public func OnStart();

    // TODO: Is this needed?
    /// Called every timer update while the effect is active. Optional.
    public func OnUpdate() {
    }

    /// Called when the effect ends, use this for clean up. Optional.
    public func OnStop() {
    }
}

