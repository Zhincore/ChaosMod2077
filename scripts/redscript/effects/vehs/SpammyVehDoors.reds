module ChaosMod.Effects.SpammyVehDoors

import ChaosMod.Utils.Callback
import ChaosMod.Effects.*

public class SpammyVehDoorsEffect extends ChaosEffect {
    public func GetDuration() -> ChaosTimedType {
        return ChaosTimedType.Normal;
    }

    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        return new SpammyVehDoorsActiveEffect();
    }
}

private class SpammyVehDoorsActiveEffect extends ActiveChaosEffect {
    private let delay: DelayID;
    private let phase: Bool;
    private let shouldRun: Bool;
    private let callback: ref<Callback>;
    private let slotNames: array<CName>;

    public func OnStart() {
        this.shouldRun = true;
        this.callback = Callback.Create(this, n"OnDelay");
        this.slotNames = [
            n"seat_front_left",
            n"seat_front_right",
            n"seat_back_left",
            n"seat_back_right",
            n"trunk",
            n"hood"
        ];
        this.OnDelay();
    }

    private cb func OnDelay() {
        if !this.shouldRun {
            return;
        }
        this.phase = !this.phase;

        this.delay = GameInstance.GetDelaySystem(GetGameInstance()).DelayCallback(this.callback, 0.5, true);

        for entity in GameInstance.GetEntityList(GetGameInstance()) {
            let vehicle = entity as VehicleObject;
            if IsDefined(vehicle) {
                let comp = vehicle.GetVehicleComponent();

                for slotName in this.slotNames {
                    if this.phase {
                        VehicleComponent.OpenDoor(vehicle, new MountingSlotId(slotName));
                    } else {
                        VehicleComponent.CloseDoor(vehicle, new MountingSlotId(slotName));
                    }
                }
            }
        }
    }

    public func OnStop() {
        this.shouldRun = false;
        GameInstance.GetDelaySystem(GetGameInstance()).CancelCallback(this.delay);
    }
}

