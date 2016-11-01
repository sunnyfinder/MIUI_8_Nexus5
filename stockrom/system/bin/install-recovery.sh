#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:10252288:f28c430ba4ea5ccd7f457278bd1655556033d469; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:9373696:1189b2b1a96493a4c53ab77ee53fc5c62114ac68 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery f28c430ba4ea5ccd7f457278bd1655556033d469 10252288 1189b2b1a96493a4c53ab77ee53fc5c62114ac68:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
