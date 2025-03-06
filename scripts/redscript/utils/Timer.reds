module ChaosMod.Utils.Timer

import ChaosMod.Utils.Call

public class Timer extends DelayCallback {
    public let duration: Float;
    private let updatePeriod: Float;
    private let active: Bool;
    private let startTimestamp: Float;
    private let progressTarget: wref<IScriptable>;
    private let progressFn: CName;

    public static func Create(duration: Float, progressTarget: wref<IScriptable>, progressFn: CName) -> ref<Timer> {
        let timer = new Timer();
        timer.updatePeriod = 1.0 / 60.0;
        timer.active = false;
        timer.duration = duration;
        timer.startTimestamp = 0.0;
        timer.progressTarget = progressTarget;
        timer.progressFn = progressFn;

        return timer;
    }

    public func Start() {
        if this.active {
            return;
        }

        this.active = true;
        this.Call();
    }

    public func Stop() {
        this.active = false;
        this.startTimestamp = 0.0;
    }

    public func IsActive() -> Bool {
        return this.active;
    }

    private cb func Call() {
        if !this.active {
            return;
        }

        GameInstance
            .GetDelaySystem(GetGameInstance())
            .DelayCallback(this, this.updatePeriod, false);

        if this.duration <= 0.0 {
            return;
        }

        let timestamp = EngineTime.ToFloat(GameInstance.GetSimTime(GetGameInstance()));

        if this.startTimestamp == 0.0 {
            this.startTimestamp = timestamp;
            return;
        }

        let progress = MinF(1.0, (timestamp - this.startTimestamp) / this.duration);

        Call(this.progressTarget, this.progressFn, [ToVariant(progress)]);

        if progress >= 1.0 {
            this.startTimestamp = timestamp;
        }
    }
}

