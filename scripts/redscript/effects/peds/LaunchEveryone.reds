module ChaosMod.Effects

public class LaunchEveryoneEffect extends ChaosEffect {
  public func GetInfo() -> ref<ChaosEffectInfo> {
    return CreateInfo(
      n"ChaosMod-Effect-Ped-LaunchEveryone-Name",
      n"ChaosMod-Effect-Ped-LaunchEveryone-Desc"
    );
  }

  public func ActivateEffect() -> ref<ActiveChaosEffect> {
    return new LaunchEveryoneActiveEffect();
  }
}

class LaunchEveryoneActiveEffect extends ActiveChaosEffect {
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

