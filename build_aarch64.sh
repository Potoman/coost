rm build-aarch64-linux-eabi -rf
meson setup --cross-file aarch64-linux-gnu-gcc.txt build-aarch64-linux-eabi
meson compile -C build-aarch64-linux-eabi
meson test -C build-aarch64-linux-eabi -v
