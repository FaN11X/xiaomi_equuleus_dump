#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:56890702:3a8ef84c0767a54315212d4be70a8c58240f199e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:50922826:c42408ce49f10fed3001cff4d665b3e2bddf4b53 EMMC:/dev/block/bootdevice/by-name/recovery 3a8ef84c0767a54315212d4be70a8c58240f199e 56890702 c42408ce49f10fed3001cff4d665b3e2bddf4b53:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
