# wazy_wivern

Minimal Godot XR project configured for the **Mobile** rendering toolchain.

## What is included

- Godot 4 project scaffold (`project.godot`)
- Main scene with OpenXR initialization and desktop fallback camera
- Android export preset scaffold (`export_presets.template.cfg`) for mobile XR builds

## Running

Minimum supported version is **Godot 4.2** (the scaffold declares the `4.2` feature tag).

1. Open the project in Godot 4.x.
2. Run the main scene (`res://scenes/main.tscn`).
3. On XR-capable hardware with OpenXR support, the project enables XR at startup.
4. If OpenXR is unavailable, it falls back to a standard camera view.

## Mobile build notes

- Renderer is set to `mobile` in `project.godot`.
- Copy `export_presets.template.cfg` to `export_presets.cfg`, then adjust signing/deployment settings.
- Default Android export path is `build/android/wazy_wivern.apk` (adjust as needed).
- `export_presets.cfg` is gitignored so signing credentials and any encryption keys stay out of version control.
