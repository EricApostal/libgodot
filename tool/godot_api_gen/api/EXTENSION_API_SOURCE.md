# extension_api.json provenance

Dumped from a tools-enabled (`target=editor`) build of the godot fork via:

```
godot.macos.editor.arm64 --headless --dump-extension-api <dir>
```

Note: the `--dump-extension-api` argument's *filename* is ignored — Godot always
writes `extension_api.json` into that path's directory. Pass a directory, not a
file path.

- Editor binary version: `4.8.dev.custom_build.370b75903` (built 2026-07-09 18:09:35 UTC)
- Fork checkout HEAD at dump time: `dc3915e7985bdff9f6968c6e1113fa95269d1f9c` ("fix android", 2026-07-09 21:14:11 -0400)
- Dumped: 2026-07-10

**Known drift**: the editor binary used for this dump (`370b75903`) predates the
fork's current HEAD (`dc3915e7`) and the `libgodot.macos.template_debug.arm64.dylib`
runtime binary (built from commit `b3fad224a`) by a handful of commits — all
Android-build-script changes per `git log`, not expected to touch the GDExtension
class/method surface, but not verified. If generated bindings start seeing
`classdb_get_method_bind` return null / hash mismatches at runtime, re-dump from
a freshly built editor binary at the exact commit the runtime `.dylib` is built
from:

```
cd $GODOT_SRC && scons platform=macos target=editor arch=arm64 -j$(sysctl -n hw.ncpu)
./bin/godot.macos.editor.arm64 --headless --dump-extension-api /tmp
cp /tmp/extension_api.json tool/godot_api_gen/api/extension_api.json
```

(Dumping to `/tmp` and copying in is necessary in this dev environment — writing
directly under `~/Documents/...` from this Terminal session silently produces no
file, apparently a TCC/Full Disk Access restriction.)
