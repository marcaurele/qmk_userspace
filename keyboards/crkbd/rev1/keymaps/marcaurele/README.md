# My CRKBD keymap

## Operations

```console
qmk compile --clean
# or without using the config file
qmk compile --clean -kb crkbd/rev1 -km marcaurele

# Flash (for each unit)
qmk flash -kb crkbd/rev1 -km marcaurele

# Generate the JSON mapping
pipenv run qmk c2json -kb crkbd/rev1 -km marcaurele
```

## Keyboard config

<https://config.qmk.fm/#/crkbd/rev1/LAYOUT_split_3x6_3> using the DSA Galaxy Class.

### Info

- [Basic Keycodes](https://docs.qmk.fm/keycodes_basic)
- [Quantum Keycodes](https://docs.qmk.fm/quantum_keycodes)
- [Grave/Escape](https://docs.qmk.fm/features/grave_esc)
- [Mouse keys](https://docs.qmk.fm/features/mouse_keys)

## Microcontroler updated (from jpmenil)

### DFU

[See drashna's post on reddit](https://www.reddit.com/r/olkb/comments/8sxgzb/replace_pro_micro_bootloader_with_qmk_dfu/)

This one have been done through the help of an [Arduino Uno](https://schou.dk/linux/arduino/isp/).

```console
avrdude -c avrisp -p atmega32u4 -P /dev/ttyACM0 -U flash:w:"crkbd_rev1_common_jpmenil_production.hex" -U lfuse:w:0x5E:m -U hfuse:w:0xD9:m -U efuse:w:0xC3:m -U lock:w:0x3F:m -b 19200
```

### Flashing

```console
make crkbd/rev1/common:jpmenil:dfu
```

### Origin

- https://github.com/jpmenil/qmk_userspace/blob/main/keyboards/crkbd/keymaps/jpmenil/README.md
