module ChaosMod.Effects.TopDownCam

import ChaosMod.Effects.*

/// https://github.com/justarandomguyintheinternet/CP77_ChaosMod/blob/main/events/topDownCam.lua
public class TopDownCamEffect extends ChaosEffect {
    public func GetDuration() -> ChaosTimedType {
        return ChaosTimedType.Normal;
    }

    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        return new TopDownCamActiveEffect();
    }
}

private class TopDownCamActiveEffect extends ActiveChaosEffect {
    public func OnStart() {
        // TODO: Handle vehicles?
        let player = GetPlayer(GetGameInstance());
        let camera = player.GetFPPCameraComponent();
        camera.SetLocalPosition(new Vector4(0, -10.0, 0, 0));
        camera.SetLocalOrientation(EulerAngles.ToQuat(new EulerAngles(0, -90, 0)));
        this.toggleHead();
        StatusEffectHelper.ApplyStatusEffect(player, t"GameplayRestriction.NoCameraControl");
    }

    private func toggleHead() {
        let player = GetPlayer(GetGameInstance());
        let headId = t"Items.PlayerMaTppHead";
        if Equals(player.GetResolvedGenderName(), n"Female") {
            headId = t"Items.PlayerWaPhotomodeHead";
        }

        let head = ItemID.FromTDBID(headId);

        let transactionSystem = GameInstance.GetTransactionSystem(GetGameInstance());

        transactionSystem.GiveItem(player, head, 1);
        transactionSystem.AddItemToSlot(player, EquipmentSystem.GetPlacementSlot(head), head);
    }

    public func OnStop() {
        let player = GetPlayer(GetGameInstance());
        let camera = player.GetFPPCameraComponent();
        camera.SetLocalPosition(new Vector4(0, 0, 0, 0));
        camera.ResetPitch();
        this.toggleHead();
        StatusEffectHelper.RemoveStatusEffect(player, t"GameplayRestriction.NoCameraControl");
    }
}

