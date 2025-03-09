module ChaosMod.Effects.DisassembleVeh

import ChaosMod.Effects.*

public class DisassembleVehEffect extends ChaosEffect {
    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        return new DisassembleVehActiveEffect();
    }
}

private class DisassembleVehActiveEffect extends ActiveChaosEffect {
    public func OnStart() {
        let player = GetPlayer(GetGameInstance());
        let vehicle = player.GetMountedVehicle();
        if IsDefined(vehicle) {
            vehicle.DetachAllParts();
        }
    }
}

