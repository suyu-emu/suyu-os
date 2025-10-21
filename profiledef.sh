#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="suyuos"
iso_label="SUYUOS_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="suyuOS Project <https://suyu.dev>"
iso_application="suyuOS - Nintendo Switch Gaming OS"
iso_version="$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y.%m.%d)"
install_dir="suyuos"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=(gzip -cn9)
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/root/.gnupg"]="0:0:700"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/build-emulators"]="0:0:755"
  ["/usr/local/bin/suyuos-launcher"]="0:0:755"
  ["/usr/local/bin/suyuos-optimize"]="0:0:755"
  ["/usr/local/bin/suyuos-restore"]="0:0:755"
  ["/usr/local/bin/suyuos-setup"]="0:0:755"
  ["/etc/shadow"]="0:0:0400"
  ["/etc/gshadow"]="0:0:0400"
)
