# Unicorne Keyboard

## Model

- Unicorne MX from boardsouce.xyz
- QMK / VIA firmware compatible
- Layout: Corne / CRKBD (3x6 +3 column-staggered split layout)
- Microcontroller: RP2040
- Firmware: QMK / VIA (pre-flashed with VIA)
- Connection: Dual USB-C
- Compatibility: Works with most Corne MX-style cases
- Color: Matte Black
- Current Version: v1.6

## Flashing instruction

Each side must be flashed individually.

- Unplug the two halves from each other
- Unplug the left side from the computer
- While holding the top left key on the left half, plug in the left half.
- You should see the keyboard enter boot mode and a new USB device should appear.
- Mount / activate the USB device (through Nautilus for example).
- Drag .utf2 file into keyboard drive or let `qmk flash` do it automatically
- The board should reboot.

_Repeat for right half, but hold top right key while plugging it in._

## Mouse Drift

The mouse drift must be fixed with an extra configuration to disable the
_pointing device_, see <https://boardsource.xyz/blogs/build-guides/unicorne-keyboard-build-guide>.
