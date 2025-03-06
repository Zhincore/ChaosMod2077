module ChaosMod.Config

import ChaosMod.*
import ChaosMod.Utils.Timer.*

public class ConfigService extends ScriptableService {
    // MARK: Config
    persistent let timerDuration: Float = 30.0;
    //
    // MARK: Function
    private let chaosMod: wref<ChaosModSystem>;

    public func BindChaosMod(chaosMod: wref<ChaosModSystem>) {
        this.chaosMod = chaosMod;

        // Update all properties
        this.SetTimerDuration(this.timerDuration);
    }

    public func UnbindChaosMod(chaosMod: wref<ChaosModSystem>) {
        if this.chaosMod == chaosMod {
            this.chaosMod = null;
        }
    }

    // MARK: Setters
    public func SetTimerDuration(duration: Float) {
        this.timerDuration = duration;
        if IsDefined(this.chaosMod) {
            this.chaosMod.timer.duration = duration;
        }
    }
}

