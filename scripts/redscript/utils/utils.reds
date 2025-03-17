module ChaosMod.Utils

/// Utility constructor that accepts int literal, manually keep them between 0 and 255!!
@addMethod(Color)
public static func ChaosCreate(r: Int32, g: Int32, b: Int32, opt a: Int32) -> Color {
    return new Color(Cast<Uint8>(r), Cast<Uint8>(g), Cast<Uint8>(b), Cast<Uint8>(a));
}

@addMethod(EulerAngles)
public static func ChaosCreate(pitch: Float, roll: Float, yaw: Float) -> EulerAngles {
    let angle: EulerAngles;
    angle.Pitch = pitch;
    angle.Roll = roll;
    angle.Yaw = yaw;
    return angle;
}

public func Call(target: wref<IScriptable>, fn: CName, opt data: array<Variant>) {
    if !IsDefined(target) {
        return;
    }
    Reflection
        .GetClassOf(ToVariant(target))
        .GetFunction(fn)
        .Call(target, data);
}

public func GetEffectName(id: CName) -> CName {
    return n"ChaosMod-Effects-" + id;
}

public func GetUILayerRoot(name: CName) -> ref<inkCanvas> {
    return GameInstance
        .GetInkSystem()
        .GetLayer(name)
        .GetVirtualWindow()
        .GetWidgetByPathName(n"Root") as inkCanvas;
}

public class Callback extends DelayCallback {
    private let m_target: wref<IScriptable>;
    private let m_fn: CName;
    private let m_data: array<Variant>;

    public static func Create(target: wref<IScriptable>, fn: CName, opt data: array<Variant>) -> ref<Callback> {
        let self = new Callback();
        self.m_target = target;
        self.m_fn = fn;
        self.m_data = data;
        return self;
    }

    public func Call() {
        if !IsDefined(this.m_target) {
            return;
        }
        Reflection
            .GetClassOf(ToVariant(this.m_target))
            .GetFunction(this.m_fn)
            .Call(this.m_target, this.m_data);
    }
}

