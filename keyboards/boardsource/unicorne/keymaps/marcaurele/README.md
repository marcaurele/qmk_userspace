# Unicorne Keyboard

## Model

- Unicorne MX from boardsouce.xyz
- QMK / VIA firmware compatible
- Layout: Corne / CRKBD (3x6 +3 column-staggered split layout)
- Microcontroller: [RP2040](https://docs.qmk.fm/platformdev_rp2040)
- Firmware: QMK / VIA (pre-flashed with VIA)
- Connection: Dual USB-C
- Compatibility: Works with most Corne MX-style cases
- Color: Matte Black
- Current Version: v1.6

## Flashing instruction

Each side must be flashed individually.

- Unplug the two halves from each other _(Optional)_
- While holding the top right key on the right half, plug in the right half.
- You should see the keyboard enter boot mode and a new USB device should appear.
- Mount / activate the USB device (through Nautilus for example).
- Drag .utf2 file into keyboard drive or let `qmk flash -kb boardsource/unicorne -km marcaurele` do it automatically
- The board should reboot.
- While holding the top left key on the left half, plug in the left half.
- You should see the keyboard enter boot mode and a new USB device should appear.
- Mount / activate the USB device (through Nautilus for example).
- Drag .utf2 file into keyboard drive or let `qmk flash -kb boardsource/unicorne -km marcaurele` do it automatically
- The board should reboot and both sides have been flashed.

_Flashing must be done seperatly for both half keyboard._

## Mouse Drift

The mouse drift must be fixed with an extra configuration to disable the
_pointing device_, see <https://boardsource.xyz/blogs/build-guides/unicorne-keyboard-build-guide>.
