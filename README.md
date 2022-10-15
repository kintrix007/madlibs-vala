# Madlibs in Vala

### A simple project demonstrating the difference between the straightforward and the systemic implementation of madlibs.

### Dependencies

- vala, gcc
- meson, ninja, cmake, pkg-config
- gee

**Fedora Linux:**
```sh
sudo dnf install gcc vala meson ninja-build cmake pkg-config libgee-devel
```
For development also install the `vala-language-server` package.

### Build instructions

1. Clone this repo
2. Install the dependencies
3. Set up build directory
```sh
meson setup build
```
4. Compile the code
```sh
meson compile -C build
```
5. You are done. The executable is located at `build/madlibs`.
