module ChaosMod.LuaSupport

import ChaosMod.Utils.Callback
import ChaosMod.Lib.ChaosCNameMap

public func GetLuaSupportService() -> ref<LuaSupportService> {
    return GameInstance.GetScriptableServiceContainer().GetService(n"ChaosMod.LuaSupport.LuaSupportService") as LuaSupportService;
}

/// Utility service for providing Lua calls for effects.
public class LuaSupportService extends ScriptableService {
    private let callbacks: ref<ChaosCNameMap>;

    public func RegisterCallback(name: CName, target: ref<IScriptable>, function: CName) {
        this.callbacks.Insert(name, Callback.Create(target, function));
    }

    public func Call(name: CName) {
        let callback = this.callbacks.Get(name) as Callback;
        if IsDefined(callback) {
            callback.Call();
        }
    }
}

