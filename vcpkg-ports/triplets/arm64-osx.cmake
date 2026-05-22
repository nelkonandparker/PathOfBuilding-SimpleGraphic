set(VCPKG_TARGET_ARCHITECTURE arm64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE static)

set(VCPKG_CMAKE_SYSTEM_NAME Darwin)
set(VCPKG_OSX_ARCHITECTURES arm64)

# ANGLE must be a shared library on macOS. GLFW dlopen()s libEGL / libGLESv2 at
# runtime (the same model as the Windows libEGL.dll / libGLESv2.dll). A static
# ANGLE leaves no .dylib for GLFW to find -> "EGL: Library not found".
if(PORT STREQUAL "angle")
    set(VCPKG_LIBRARY_LINKAGE dynamic)
endif()
