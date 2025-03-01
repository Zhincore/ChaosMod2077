module ChaosMod.Effects

import ChaosMod.IChaosEffect

public class LaunchEveryoneEffect extends IChaosEffect {
  const static let name: String = "Launch everyone up";
  const static let description: String = "All nearby peds are launched upwards.";
  const static let duration: Float = 0.0;

  public func OnStart() {
    for entity in GetGameInstance().GetEntityList() {
      let puppet: ref<gamePuppet> = entity as gamePuppet;
      if IsDefined(puppet) {
        let event = new RagdollApplyImpulseEvent();
        event.worldImpulsePos = puppet.GetWorldPosition();
        event.worldImpulseValue = new Vector4(0, 0, 60, 0);
        event.influenceRadius = 5.0;

        puppet.QueueEvent(CreateForceRagdollEvent(n"InAir_RecivedHit"));
        GameInstance.GetDelaySystem(puppet.GetGame()).DelayEvent(puppet, event, 0.1, false);
      }
    }
  }
}

