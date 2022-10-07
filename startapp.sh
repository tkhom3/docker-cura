#!/bin/bash

#Fix for `GLIBC_2.29' not found
# exec LD_PRELOAD=/usr/lib/x86_64-linux-gnu/libstdc++.so.6 /usr/share/cura/Ultimaker_Cura.AppImage --appimage-extract-and-run .

exec /usr/share/cura/Ultimaker_Cura.AppImage --appimage-extract-and-run .