# QMK Userspace

This is a template repository which allows for an external set of QMK keymaps to be defined and compiled. This is useful for users who want to maintain their own keymaps without having to fork the [main QMK repository](https://github.com/qmk/qmk_firmware). You must still fork the main QMK repository if writing firmware for a *new* keyboard.

## marcaurele's keymaps

This is my personal userspace's files for:

- [Corne](./keyboards/crkbd/rev1/keymaps/marcaurele/)
- [Unicorne](./keyboards/boardsource/unicorne/keymaps/marcaurele/)

To compile a new firmware: `qmk userspace-compile --clean --print-failures`. See each keyboard on how to flash them.

_[(Read original README with all information on the upstream repository)](https://github.com/qmk/qmk_userspace)._
