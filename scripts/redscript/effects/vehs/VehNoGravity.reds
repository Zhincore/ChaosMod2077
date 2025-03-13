module ChaosMod.Effects.VehNoGravity

import ChaosMod.Utils.Callback
import ChaosMod.Lib.ChaosToggleVehicleGravity
import ChaosMod.Effects.*

public class VehNoGravityEffect extends ChaosEffect {
    public func GetDuration() -> ChaosTimedType {
        return ChaosTimedType.Normal;
    }

    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        return new VehNoGravityActiveEffect();
    }
}

private class VehNoGravityActiveEffect extends ActiveChaosEffect {
    public func OnStart() {
        this.ToggleGravity(false);
    }

    private func ToggleGravity(enabled: Bool) {
        for entity in GameInstance.GetEntityList(GetGameInstance()) {
            let vehicle = entity as VehicleObject;
            if IsDefined(vehicle) {
                ChaosToggleVehicleGravity(vehicle, enabled);
            }
        }
    }

    public func OnUpdate() {
        this.ToggleGravity(false);
    }

    public func OnStop() {
        this.ToggleGravity(true);
    }
}

