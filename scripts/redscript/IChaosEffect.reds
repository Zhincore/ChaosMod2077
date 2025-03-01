module ChaosMod

public abstract class IChaosEffect {
  /// Name of the effect
  /// Short description what the effect does
  /// How many periods the effects lasts or 0 if instant
  public abstract func OnStart();

  // abstract const static let name: String;
  // abstract const static let description: String;
  // abstract const static let duration: Float;
  public func OnUpdate() {
  }

  public func OnEnd() {
  }
}

