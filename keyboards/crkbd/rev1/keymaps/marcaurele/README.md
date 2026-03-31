# My CRKBD keymap

## Operations

```console
pipenv install qmk

# To install all depedencies
pipenv run qmk setup

# Set default options
pipenv run qmk config user.keyboard=crkbd/rev1 user.keymap=marcaurele

# Clean compile
pipenv run qmk compile --clean -kb crkbd/rev1 -km marcaurele
pipenv run qmk compile --clean

# Flash (for each unit)
pipenv run qmk flash -kb crkbd/rev1 -km marcaurele

# Generate the JSON mapping
pipenv run qmk c2json -kb crkbd/rev1 -km marcaurele
```

## Keyboard config

<https://config.qmk.fm/#/crkbd/rev1/LAYOUT_split_3x6_3> using the DSA Galaxy Class.

## Microcontroler updated

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
