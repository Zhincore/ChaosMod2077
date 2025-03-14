module ChaosMod.Effects.TeleportEverythingToPlayer

import ChaosMod.Effects.*

/// https://github.com/justarandomguyintheinternet/CP77_ChaosMod/blob/main/events/tpAllToPlayer.lua
public class TeleportEverythingToPlayerEffect extends ChaosEffect {
    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        return new TeleportEverythingToPlayerActiveEffect();
    }
}

private class TeleportEverythingToPlayerActiveEffect extends ActiveChaosEffect {
    public func OnStart() {
        let player = GetPlayer(GetGameInstance());
        let transform = player.GetWorldTransform();

        for entity in GameInstance.GetEntityList(GetGameInstance()) {
            let object = entity as GameObject;
            if IsDefined(object) && !Equals(object, player) {
                object.SetWorldTransform(transform);
            }
        }
    }
}

