# SPDX-License-Identifier: GPL-2.0+ or MIT
# Copyright (C) 2021-present Team LibreELEC (https://libreelec.tv)

DTBOS := \
  overlays/allwinner/sun50i-a64-ir.dtbo \
  overlays/allwinner/sun50i-a64-pine64-audio-board.dtbo \
  overlays/allwinner/sun50i-a64-pine64-wifi-bt.dtbo \
  overlays/allwinner/sun50i-a64-spdif.dtbo \
  overlays/allwinner/sun50i-h5-spdif.dtbo \
  overlays/allwinner/sun50i-h5-tve.dtbo \
  overlays/allwinner/sun50i-h6-ir.dtbo \
  overlays/allwinner/sun50i-h6-spdif.dtbo \
  overlays/allwinner/sun8i-h2-plus-bpi-m2-zero-ethernet.dtbo \
  overlays/allwinner/sun8i-h2-plus-ir.dtbo \
  overlays/allwinner/sun8i-h2-plus-spdif.dtbo \
  overlays/allwinner/sun8i-h3-spdif.dtbo \
  overlays/allwinner/sun8i-h3-tve.dtbo

all: $(DTBOS)

clean:
	@rm overlays/*/*.dtbo

%.dtbo: %.dts
	@dtc -@ -O dtb -o $@ $<
