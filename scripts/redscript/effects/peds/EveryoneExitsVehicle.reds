module ChaosMod.Effects.EveryoneExitsVehicle

import ChaosMod.Effects.*

public class EveryoneExitsVehicleEffect extends ChaosEffect {
    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        return new EveryoneExitsActiveEffect();
    }
}

private class EveryoneExitsActiveEffect extends ActiveChaosEffect {
    public func OnStart() {
        let facility = GameInstance.GetMountingFacility(GetGameInstance());

        let player = GetPlayer(GetGameInstance());
        let vehicle = player.GetMountedVehicle();

        if IsDefined(vehicle) {
            let mountingInfo = new MountingInfo(player.GetEntityID(), vehicle.GetEntityID(), VehicleComponent.GetDriverSlotID());
            let unmountEvent = new UnmountingRequest();
            unmountEvent.delay = 1.0;
            unmountEvent.lowLevelMountingInfo = mountingInfo;
            unmountEvent.mountData = new MountEventData();
            unmountEvent.mountData.isInstant = true;
            facility.Unmount(unmountEvent);
            GameInstance.GetWorkspotSystem(GetGameInstance()).UnmountFromVehicle(vehicle, player);
        }

        for entity in GameInstance.GetEntityList(GetGameInstance()) {
            let vehicle = entity as VehicleObject;
            if IsDefined(vehicle) {
                let exitVehicleEvent = new AIEvent();
                exitVehicleEvent.name = n"ExitVehicle";

                VehicleComponent.QueueEventToAllPassengers(GetGameInstance(), vehicle, exitVehicleEvent);
            }
        }
    }
}

