# Chaos Mod 2077

Heavily inspired by the [GTA mods](https://github.com/gta-chaos-mod/ChaosModV), the premise of this mod is that every few seconds, a completely random effect occurs.
This effect can be helpful, annoying, or just pure chaos. So good luck!

> [!WARNING]
> This mod can cause crashes and save corruptions. Always backup your loved saves and turn Chaos Mod off before saving.

**Other documentation files:**

- [Developing Effects](DEVELOPING-EFFECTS.md)
- [Developing Addons](DEVELOPING-ADDONS.md)

## Installation & Usage

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

Want to help? Contributions are welcome! Read on for development details.

## Development

Any improvement contributions are greatly appreciated, I tried to make the development experience as smooth as possible. Here's stuff you should know if you wanna contribute.

### Folder structure

- `localizations/` - Simplified language files for the mod. Every effect must have at least english translation.
- `scripts/cet/` - CET scripts providing configuration UI.
- `scripts/redscript/` - RedScripts handling core mod logic and effects.
- `src/` - Red4ext plugin in Rust providing native extensions.
- `WolvenKit/` - WolvenKit project with assets, AXL, etc. Used for packaging the resulting mod.

### Requirements

- **Windows, text editor, patience**.
- **PowerShell** and ability to run it's scripts.
- **[Red-CLI](https://github.com/rayshader/cp2077-red-cli)** - Recommended!
- **[Red Hot Tools](https://github.com/psiberx/cp2077-red-hot-tools)** (RHT) Recommended!
- **[Rust](https://www.rust-lang.org/tools/install)** (only needed for developing native extensions).

#### Developing without Rust

If you're not modifying native extensions, you don't need Rust. Instead, download the latest `chaosmod2077.dll` build from the Build GitHub Action:

1. [Open workflow runs and pick "Build"](https://github.com/Zhincore/ChaosMod2077/actions/workflows/build.yml)
2. Click the name of the newest one with green check.
3. Scroll down and download `chaosmod2077.dll`.
4. Create the folder structure `target\build\debug\` in the project and put the DLL there.

Now you can develop and test without building the Rust components.

### Recommended Workflow

When developing this mod, this is the workflow that works for me, you can adapt it for yourself when [contributing effects](./DEVELOPING-EFFECTS.md) or anything else. This uses the requirements mentioned above.

#### Preparation

- [Helpful setup for developing CET stuff in VSCode is on wiki](https://wiki.redmodding.org/cyber-engine-tweaks/resources/vs-code).
- For RedScript in various IDEs:
  - [Install RedScript extension](https://github.com/jac3km4/redscript-ide).
  - Run the `.\download-libs.ps1` script.

> [!NOTE]
> Do NOT commit the generated `libs` folder.

#### Playtesting

1. If you changed natives (Rust) run `cargo build`.
2. If you changed translations or added effects:
   1. Run the `.\convert-translations.ps1` script. You might get asked about installing WolvenKit CLI.
   2. Open the WolvenKit project and just press **Install**\*.
3. Run `red-cli install` to install the scripts.
4. Start Cyberpunk and test!

\*: You can also do the WolvenKit part last and press "Install and Load Save".

> [!TIP]
> If the game is already running, reloading scripts via RHT usually suffices. Effect metadata won't update, but runtime changes will.

> [!NOTE]
> Avoid running ~~`red-cli bundle`~~ in a development environment. It can cause issues when pressing **Install** in WolvenKit, requiring manual script removal.

## Utility Commands

There is a few CET console commands that can help you with effect development:

- `ChaosMod_StartEffect("EffectId")`
  - Triggers a specific effect by its ID (even if Chaos Mod is disabled).
- `ChaosMod_StopAllEffects()`
  - Stops all running effects (even if Chaos Mod is disabled).
- `ChaosMod_ListAllEffects()`
  - Lists all available effects in Game Log.
- `ChaosMod_ResetRegistry()`
  - Empties the registry, unregistering all effects.
