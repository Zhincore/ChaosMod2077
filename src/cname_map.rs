use std::cell::RefCell;
use std::collections::HashMap;

use red4ext_rs::{
    ScriptClass, class_kind,
    types::{CName, IScriptable, RedArray, Ref},
};

#[derive(Default, Clone)]
#[repr(C)]
pub struct ChaosCNameMap {
    base: IScriptable,
    map: RefCell<HashMap<CName, Ref<IScriptable>>>,
}
unsafe impl ScriptClass for ChaosCNameMap {
    type Kind = class_kind::Native;

    const NAME: &'static str = "ChaosMod.Lib.ChaosCNameMap";
}

impl ChaosCNameMap {
    pub fn insert(&self, key: CName, value: Ref<IScriptable>) {
        self.map.borrow_mut().insert(key, value);
    }

    pub fn get(&self, key: CName) -> Ref<IScriptable> {
        self.map
            .borrow()
            .get(&key)
            .map_or(Ref::default(), |effect| effect.clone())
    }

    pub fn get_all(&self) -> RedArray<Ref<IScriptable>> {
        self.map.borrow().values().cloned().collect()
    }

    pub fn remove(&self, key: CName) {
        self.map.borrow_mut().remove(&key);
    }

    pub fn clear(&self) {
        self.map.borrow_mut().clear();
    }
}
