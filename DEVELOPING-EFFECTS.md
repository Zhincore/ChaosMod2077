# Developing Effects

Effect contributions are very welcome. Effects in this mod are coded in RedScript, ocassionaly with helper functions in native (Rust) or CET (Lua). If you want to code your custom effects in a different language, consider [making an addon](./DEVELOPING-ADDONS.md) instead.

Effects are grouped by "topic" in subfolders of `scripts/redscript/effects/`. Every effect consists of two classes:

- the **"info" class** extending the `ChaosEffect` base class
  - describes the effect, handles it's registration and instantiates the runtime class
- the **"runtime" class** extending the `ActiveChaosEffect` base class
  - implements the actual effect's logic

Base classes are located in [`scripts/redscript/effects/ChaosEffect.reds`](./scripts/redscript/effects/ChaosEffect.reds), look in that file for more details.

> [!IMPORTANT]
> Your effect must have unique name (id)!

## Template effect

The following is a very simple effect that you can use as a template. There are other public methods you might want to override in the base classes, see bellow.

```swift
module ChaosMod.Effects.MyDrunkEffect
// ^ proper module if you're contributing

// Import the base classes
import ChaosMod.Effects.*

// The info class
// The effect ID is generated as "MyDrunk"
public class MyDrunkEffect extends ChaosEffect {
    // Obligatory method that creates the effect runtime
    public func ActivateEffect() -> ref<ActiveChaosEffect> {
        // Don't do any logic here unless needed, just return the instance of the class bellow
        return new MyDrunkActiveEffect();
    }
}

// The runtime class
private class MyDrunkActiveEffect extends ActiveChaosEffect {
    // Called when the effect is started
    public func OnStart() {
        // Your custom code
        let player = GetPlayer(GetGameInstance());
        StatusEffectHelper.ApplyStatusEffect(player, t"BaseStatusEffect.Drunk");
    }
}
```

## Effect Info

ID of effects is by default the info class's name without trailing "Effect". This is used for identification and localization of the effect's name (e.g. `ChaosMod-Effects-MyDrunk` is the localization key for the above effect).

> [!NOTE]
> Every effect must have a localization, otherwise it's name won't be displayed in game.

If contributing, effect names are defined in `localizations/` folder.

The info class MUST override the `ActivateEffect` method shown above, but there are more methods you might want to override:

- `public func GetIncompatible() -> array<CName>`
  - Returns an array of IDs of incompatible effects.
  - **Example:** `return [n"MySober"];`
  - **Default** is empty list (everything is compatible).
- `public func GetDuration() -> ChaosTimedType`
  - Returns the type of effect's duration.
  - Use `ChaosTimedType.Normal` for effects that should end after some time. Or `.Short` for very annoying(?) effects.
  - **Default:** `return ChaosTimedType.Instant` - the effect doesn't last and `OnStop` is called immediately.

## Effect Runtime

The runtime class must override `OnStart` method, that is called when the effect starts. Instant effects usually don't need any other methods, but timed effects also need `OnStop`, which is called when the effect ends and should do the "clean up".

There is also the `OnUpdate` method which is called on every timer update (~60 times a second). However, if your effect runs periodically, you might often want to have control over the delay, see [Spammy Vehicle Doors effect](./scripts/redscript/effects/vehs/SpammyVehDoors.reds) for an example of a periodic effect.
