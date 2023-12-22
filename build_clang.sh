rm build-x86_64-linux-clang -rf
meson setup --native-file native-clang.ini build-x86_64-linux-clang
meson compile -C build-x86_64-linux-clang
meson test -C build-x86_64-linux-clang
