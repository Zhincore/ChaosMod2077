module ChaosMod.Effects

import ChaosMod.IChaosEffect

public class EveryoneExitsVehicle extends IChaosEffect {
  const static let name: String = "Everyone exits vehicle";
  const static let description: String = "All nearby peds and player exit their vehicle.";
  const static let duration: Float = 0.0;

  public func OnStart() {
    let facility = GetGameInstance().GetMountingFacility();

    let player = GetPlayer(GetGameInstance());
    let vehicle = player.GetMountedVehicle();

    // TODO: Make this animated?
    if IsDefined(vehicle) {
      let mountingInfo = new MountingInfo(player.GetEntityID(), vehicle.GetEntityID(), VehicleComponent.GetDriverSlotID());
      let unmountEvent = new UnmountingRequest();
      unmountEvent.lowLevelMountingInfo = mountingInfo;
      unmountEvent.mountData = new MountEventData();
      unmountEvent.mountData.isInstant = true;
      unmountEvent.mountData.entrySlotName = n"speed";

      facility.Unmount(unmountEvent);
    }

    for entity in GetGameInstance().GetEntityList() {
      let vehicle = entity as VehicleObject;
      if IsDefined(vehicle) {
        let exitVehicleEvent = new AIEvent();
        exitVehicleEvent.name = n"ExitVehicle";

        VehicleComponent.QueueEventToAllPassengers(GetGameInstance(), vehicle, exitVehicleEvent);
      }
    }
  }
}

