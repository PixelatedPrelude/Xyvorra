#!/usr/bin/env bash

iso_name="xyvorra"
iso_label="XYVORRA_$(date --date="@${SOURCE_DATE_EPOCH:-$(date +%s)}" +%Y%m)"
iso_publisher="XyvorraOS <https://github.com/PixelatedPrelude/Xyvorra>"
iso_application="XyvorraOS DSK"
iso_version="1.0"
install_dir="xyvorra"
buildmodes=('iso')
bootmodes=('bios.syslinux'
	'uefi.systemd-boot')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
bootstrap_tarball_compression=('zstd' '-c' '-T0' '--auto-threads=logical' '--long' '-19')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/usr/local/bin/xyvorra-liveusb-setup"]="0:0:755"
  ["/usr/local/bin/xyvorra-install"]="0:0:755"
  ["/usr/local/bin/xyvorra-boot-menu"]="0:0:755"
  ["/usr/local/bin/xyvorra-reboot-check"]="0:0:755"
  ["/usr/local/bin/xyvorra-pre-boot"]="0:0:755"
  ["/usr/local/bin/xyvorra-post-install"]="0:0:755"
  ["/etc/profile.d/xyvorra.sh"]="0:0:755"
  ["/etc/skel"]="0:0:755"
  ["/etc/skel/.config"]="0:0:755"
  ["/etc/skel/.local"]="0:0:755"
)
