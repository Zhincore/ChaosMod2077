module ChaosMod.Effects

import ChaosMod.IChaosEffect

public class LaunchEveryoneEffect extends IChaosEffect {
  const static let name: String = "Launch everyone up";
  const static let description: String = "All nearby peds are launched upwards.";
  const static let duration: Float = 0.0;

  public func OnStart() {
    for entity in GetGameInstance().GetEntityList() {
      let puppet = entity as gamePuppet;
      let vehicle = entity as VehicleObject;
      if IsDefined(puppet) {
        let npc = puppet as NPCPuppet;
        if IsDefined(npc) {
          npc.SetDisableRagdoll(false);
        }

        let event = new RagdollApplyImpulseEvent();
        event.worldImpulsePos = puppet.GetWorldPosition();
        event.worldImpulseValue = new Vector4(0, 0, 60, 0);
        event.influenceRadius = 5.0;

        puppet.QueueEvent(CreateForceRagdollEvent(n"InAir_RecivedHit"));
        GameInstance.GetDelaySystem(GetGameInstance()).DelayEvent(puppet, event, 0.1, false);
      } else if IsDefined(vehicle) {
        let unmountCommand = new AIUnmountCommand();
        unmountCommand.mountData = new MountEventData();
        unmountCommand.mountData.isInstant = true;

        vehicle.GetAIComponent().SendCommand(unmountCommand);
      }
    }
  }
}

