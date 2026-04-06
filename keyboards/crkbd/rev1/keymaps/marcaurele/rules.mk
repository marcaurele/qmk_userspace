BOOTLOADER      = qmk-dfu

MOUSEKEY_ENABLE = no
RGB_MATRIX_ENABLE = yes

# Would enable WS2812 RGB underlight but cannot make it to work with RGB Matrix: Cannot use RGBLIGHT and RGB Matrix using WS2812 at the same time
RGBLIGHT_ENABLE = no
# RGBLIGHT_DRIVER =
# WS2812_DRIVER_REQUIRED = yes

OLED_ENABLE     = yes
OLED_DRIVER     = ssd1306

LTO_ENABLE      = yes
TRI_LAYER_ENABLE = yes

SRC += myoled.c
