# Chaos Mod 2077

Heavily inspired by the [GTA mods](https://github.com/gta-chaos-mod/ChaosModV), the premise of this mod is that every few seconds, a completely random effect occurs.
This effect can be helpful, annoying, or just pure chaos. So good luck!

> [!WARNING]
> This mod (when active) can cause crashes and save corruptions. Always backup your loved saves and turn it Chaos Mod off before saving.

**Other doc files:**

- [Developing Effects](DEVELOPING-EFFECTS.md)
- [Developing Addons](DEVELOPING-ADDONS.md)

## Installation and usage

1. Install like any other mod.
2. Start the game and load a save.
3. Open your CET overlay.
4. Find the "Chaos Mod" window and check the Enable checkbox.
5. **_Try_** to play the game.

## TODO

A forever TODO is adding more effects (porting ones from the GTA mods, but preferably creating some Cyberpunk-specific ones), apart from that there are some other things I want to do:

- [x] CI with builds :3
- [ ] Libs folder for IDE
- [ ] Addon support
- [ ] Better incompatibility handling? If effect A is incomp with B, then vice versa should be ensured.
- [ ] More configuration options (UI colors/size, effect duration, ...)
- [ ] Toggling individual effects, categories?
- [ ] GTA mod only executes one effect from each category at once, do we want that too?

If you want to help with any of this, please contribute! Continue reading below.

## Development

Any improvement contributions are greatly appreciated, I tried to make the development experience as smooth as possible. Here's stuff you should know if you wanna contribute.

If you wanna make new effects but don't wanna contribute (or don't want to use RedScript), see [Developing Addons](./DEVELOPING-ADDONS.md).

### Folder structure

- `localizations/` - Simplified language files for the mod. Every effect must have at least english translation.
- `scripts/cet/` - Scripts for CET providing configuration UI.
- `scripts/redscript/` - Redscripts providing the **main logic** of the mod and individual effects.
- `src/` - Red4ext plugin in Rust providing native extensions.
- `WolvenKit/` - WolvenKit project with assets, AXL, etc. Used for packaging the resulting mod.

### Requirements

- **Windows, text editor, patience**.
- **PowerShell** and ability to run it's scripts.
- **[Red-CLI](https://github.com/rayshader/cp2077-red-cli)** - Recommended!
- **[Red Hot Tools](https://github.com/psiberx/cp2077-red-hot-tools)** (RHT) Recommended!
- **[Rust](https://www.rust-lang.org/tools/install)** for developing natives.
  If you don't plan on changing those, see [Developing without Rust](#developing-without-rust).

#### Developing without Rust

If you're not planning on changing natives, you don't have to install Rust.
Instead download latest `chaosmod2077.dll` build from GitHub Actions:

1. [Open workflow runs](https://github.com/Zhincore/ChaosMod2077/actions)
2. Click the name of the newest one with green check.
3. Scroll down and download `chaosmod2077.dll`.
4. Create folders `target\build\debug\` in the project and put the DLL there.

Now you can develop and test the rest of the mod without building the Rust part.

### Recommended Workflow

When developing this mod, this is the workflow that works for me, you can adapt it for yourself when [contributing effects](./DEVELOPING-EFFECTS.md) or anything else. This uses the requirements mentioned above.

#### Preparation

- [Helpful setup for developing CET stuff in VSCode is on wiki](https://wiki.redmodding.org/cyber-engine-tweaks/resources/vs-code).
- For RedScript in various IDEs:
  - [Install RedScript extension](https://github.com/jac3km4/redscript-ide).
  - Run the `.\download-libs.ps1` script.

> [!NOTE]
> Do NOT commit the generated `libs` folder.  
> **TODO:** Add it to .gitignore once redscript supports that.

#### Playtesting

1. If you changed natives (Rust part) run `cargo build`.
2. If you changed translations / added effects:
   1. Run the `.\convert-translations.ps1` script. You might get asked about installing WolvenKit CLI.
   2. Open the WolvenKit project and just press Install[^1].
3. Run `red-cli install` to install the scripts.
4. Start Cyberpunk and test!

[^1]: You can also do the WolvenKit part last and press "Install and Load Save".

If you already have a game running, reloading scripts using RHT is usually enough. Effect info will not reload, but effect runtime implementation will.

> [!NOTE]
> Do not run ~~`red-cli bundle`~~ in development environment. It could cause issues when you then press install in WolvenKit and you'll need to delete the scripts from the WolvenKit project.

## Utility Commands

There is a few CET console commands that can help you with effect development:

- `ChaosMod_StartEffect("EffectId")`
  - Starts an effect with given effect ID. Regardless if ChaosMod is active.
- `ChaosMod_StopAllEffects()`
  - Stops all effects. Regardless if ChaosMod is active.
