#!/vendor/bin/sh
if ! applypatch --check EMMC:/dev/block/platform/soc/soc.ap-ahb/20600000.sdio/by-name/recovery:36700160:a1d170c46d04cfea04027e7af940fd177de77ec4; then
  applypatch \
          --flash /vendor/etc/recovery.img \
          --target EMMC:/dev/block/platform/soc/soc.ap-ahb/20600000.sdio/by-name/recovery:36700160:a1d170c46d04cfea04027e7af940fd177de77ec4 && \
      log -t recovery "Installing new recovery image: succeeded" || \
      log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
