module ChaosMod.Utils.Callback

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

