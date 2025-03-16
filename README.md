# Chaos Mod 2077

Heavily inspired by the [GTA mods](https://github.com/gta-chaos-mod/ChaosModV), the premise of this mod is that every few seconds, a completely random effect occurs.
This effect can be helpful, annoying, or just pure chaos. So good luck!

> [!WARNING]
> This mod (when active) can cause crashes and save corruptions. Always backup your loved saves and turn it Chaos Mod off before saving.

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

Any improvement contributions are greatly appreciated, I tried to make the development experience as smooth as possible. If you wanna make new effects but don't wanna contribute (or don't want to use RedScript), see [Developing Addons](./DEVELOPING-ADDONS.md). Here's stuff you should know if you wanna contribute.

### Requirements

- **Windows, text editor, patience**.
- **PowerShell** and ability to run it's scripts.
- **[Red-CLI](https://github.com/rayshader/cp2077-red-cli)** - Recommended!
- **[Rust](https://www.rust-lang.org/tools/install)** for developing natives.
  If you don't plan on changing those, see [Developing without Rust](#developing-without-rust).

### Folder structure

- `localizations/` - Simplified language files for the mod. Every effect must have at least english translation.
- `scripts/cet/` - Scripts for CET providing configuration UI.
- `scripts/redscript/` - Redscripts providing the **main logic** of the mod and individual effects.
- `src/` - Red4ext plugin in Rust providing native extensions.
- `WolvenKit/` - WolvenKit project with assets, AXL, etc. Used for packaging the resulting mod.

### Developing without Rust

If you're not planning on changing natives, you don't have to install Rust.
Instead download latest `chaosmod2077.dll` build from GitHub Actions:

1. [Open workflow runs](https://github.com/Zhincore/ChaosMod2077/actions)
2. Click the name of the newest one with green check.
3. Scroll down and download `chaosmod2077.dll`.
4. Put it in a folder `target/build/debug/` in the project.

Now you can develop and test the rest of the mod without building the Rust part.

### Recommended Workflow

TODO
