rm build-x86_64-linux-gcc -rf
meson setup --native-file native-gcc.ini build-x86_64-linux-gcc
meson compile -C build-x86_64-linux-gcc
meson test -C build-x86_64-linux-gcc
