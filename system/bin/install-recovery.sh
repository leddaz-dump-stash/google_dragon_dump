#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/700b0600.sdhci/by-name/recovery:13516800:38fe887cdcfa53be5e67305d7a4cab9690eb9463; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/700b0600.sdhci/by-name/KERN-A:9285632:fd9801c9beecc5de95c712b35409382d267f157d EMMC:/dev/block/platform/700b0600.sdhci/by-name/recovery 38fe887cdcfa53be5e67305d7a4cab9690eb9463 13516800 fd9801c9beecc5de95c712b35409382d267f157d:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
