#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:18031896:d9871dbd48e9028de63f5c7b22c044f51cb02605; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:13874452:e2dd289a07f5ae3583923b67477084ba433714ea EMMC:/dev/block/bootdevice/by-name/recovery d9871dbd48e9028de63f5c7b22c044f51cb02605 18031896 e2dd289a07f5ae3583923b67477084ba433714ea:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
