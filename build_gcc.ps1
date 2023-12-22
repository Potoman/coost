Remove-Item 'build-host-gcc' -Recurse
meson setup --native-file native-gcc.ini build-host-gcc
meson compile -C build-host-gcc
meson test -C build-host-gcc
