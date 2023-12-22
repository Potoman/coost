rm build-x86_64-linux-clang-sanitizer -rf
meson setup --native-file native-clang-sanitizer.ini build-x86_64-linux-clang-sanitizer
meson compile -C build-x86_64-linux-clang-sanitizer
meson test -C build-x86_64-linux-clang-sanitizer -v
