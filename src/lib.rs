use cname_map::ChaosCNameMap;
use red4ext_rs::{
    ClassExport, Exportable, GlobalExport, Plugin, SemVer, U16CStr, export_plugin_symbols, exports,
    global, methods, wcstr,
};
use vehicle_object::chaos_toggle_vehicle_gravity;

mod cname_map;
mod vehicle_object;

pub struct ChaosModPlugin;

impl Plugin for ChaosModPlugin {
    const AUTHOR: &'static U16CStr = wcstr!("Zhincore");
    const NAME: &'static U16CStr = wcstr!("ChaosMod");
    const VERSION: SemVer = SemVer::new(0, 1, 0);

    fn exports() -> impl Exportable {
        exports![
            ClassExport::<ChaosCNameMap>::builder()
                .methods(methods![
                    c"Insert" => ChaosCNameMap::insert,
                    c"Get" => ChaosCNameMap::get,
                    c"GetAll" => ChaosCNameMap::get_all,
                    c"Remove" => ChaosCNameMap::remove,
                    c"Clear" => ChaosCNameMap::clear,
                ])
                .build(),
            GlobalExport(global!(
                c"ChaosMod.Lib.ChaosToggleVehicleGravity",
                chaos_toggle_vehicle_gravity
            ))
        ]
    }
}

export_plugin_symbols!(ChaosModPlugin);
