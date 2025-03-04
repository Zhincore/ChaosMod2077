module ChaosMod.Effects

/// Base class for all effects.
public abstract class ChaosEffect {
  /// Return info about the effect, use `CreateInfo` function.
  public abstract func GetInfo() -> ref<ChaosEffectInfo>;

  /// Get the duration of the effect in cycles. 0 by default (instant effect).
  public func GetDuration() -> Float {
    return 0;
  }

  /// Return the begining of localization keys. Generated from class name by default.
  /// This gets appended with "-Name" and "-Desc" to obtain localization keys.
  public func GetLocalization() -> CName {
    let key = StrReplaceAll(NameToString(this.GetClassName()), ".", "-");
    if StrEndsWith(key, "Effect") {
      key = StrBeforeLast(key, "Effect");
    }
    return StringToName(key);
  }

  /// Return an instance of ActiveChaosEffect.
  public abstract func ActivateEffect() -> ref<ActiveChaosEffect>;
}

// TODO: remove
/// Info about given effect.
public class ChaosEffectInfo {
  /// Name of the effect.
  public let name: CName;
  /// Short description of the effect.
  public let description: CName;
  /// Duration of the effect (0 if instant).
  public let duration: Float;
}

/// Helper function to construct ChaosEffectInfo.
static func CreateInfo(localization: CName, opt duration: Float) -> ref<ChaosEffectInfo> {
  let info = new ChaosEffectInfo();
  info.name = localization + n"-Name";
  info.description = localization + n"-Desc";
  info.duration = duration;
  return info;
}

/// "Interface" for a active chaos effect.
public abstract class ActiveChaosEffect {
  /// Called when the effect begins. Required.
  public abstract func OnStart();

  // TODO: Is this needed?
  /// Called every timer update while the effect is active. Optional.
  public func OnUpdate() {
  }

  /// Called when the effect ends, use this for clean up. Optional.
  public func OnEnd() {
  }
}

