#!/usr/bin/env bash
if [ "$(whoami)" != "root" ]; then
	echo "Sorry, you are not root."
	exit 1
fi
rm -rf /boot/grub/themes/Hdgh0g-GRUB2
cp -TR ./theme /boot/grub/themes/Hdgh0g-GRUB2
grub-mkconfig -o /boot/grub/grub.cfg
