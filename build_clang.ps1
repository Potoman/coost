Remove-Item 'build-host-clang' -Recurse
meson setup --native-file native-clang.ini build-host-clang
meson compile -C build-host-clang
meson test -C build-host-clang
