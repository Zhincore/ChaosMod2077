#![allow(non_snake_case)]

use red4ext_rs::{ScriptClass, class_kind, types::Ref};

// Thanks Jack Humbert
#[repr(C)]
pub struct PhysicsData {
    unk0: [u8; 0x1B0],           // 00
    gravity_enabled: bool,       // 1B0
    unk1B1: [u8; 0x1E0 - 0x1B1], // 1B1
}

#[derive(Debug, Clone)]
#[repr(C)]
pub struct VehicleObject {
    unknown: [u8; 0x2D0], // 00
    /// https://github.com/jackhumbert/RED4ext.SDK/blob/04049e69c32f25afcd1eaaac37ca773e513ba71c/include/RED4ext/Scripting/Natives/vehicleBaseObject.hpp#L471
    physicsData: *mut PhysicsData, // 2D0
}
unsafe impl ScriptClass for VehicleObject {
    type Kind = class_kind::Native;

    const NAME: &'static str = "vehicleBaseObject";
}

pub fn chaos_toggle_vehicle_gravity(vehicle: Ref<VehicleObject>, enabled: bool) {
    unsafe {
        let Some(vehicle) = vehicle.instance() else {
            return;
        };
        (*vehicle.physicsData).gravity_enabled = enabled;
    }
}

impl Default for VehicleObject {
    fn default() -> Self {
        Self {
            unknown: [0; 0x2D0],
            physicsData: std::ptr::null_mut(),
        }
    }
}
