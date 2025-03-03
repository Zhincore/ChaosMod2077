module ChaosMod.Effects

public abstract class ChaosEffect {
  public abstract func GetInfo() -> ref<ChaosEffectInfo>;

  public abstract func ActivateEffect() -> ref<ActiveChaosEffect>;
}

public class ChaosEffectInfo {
  /// Name of the effect
  public let name: CName;
  /// Short description of the effect
  public let description: CName;
  /// Duration of the effect (0 if instant)
  public let duration: Float;
}

static func CreateInfo(name: CName, description: CName, opt duration: Float) -> ref<ChaosEffectInfo> {
  let info = new ChaosEffectInfo();
  info.name = name;
  info.description = description;
  info.duration = duration;
  return info;
}

public abstract class ActiveChaosEffect {
  public abstract func OnStart();

  public func OnUpdate() {
  }

  public func OnEnd() {
  }
}

