module ChaosMod.Lib

public native func ChaosToggleVehicleGravity(vehicle: ref<VehicleObject>, enabled: Bool);

public native class ChaosCNameMap {
    native func Insert(name: CName, value: ref<IScriptable>);

    native func Get(name: CName) -> ref<IScriptable>;

    native func GetAll() -> array<ref<IScriptable>>;

    native func Remove(name: CName);

    native func Clear();
}

