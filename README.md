# Jetson_Image_modifier
Pull the image from Jetson_Image_Builder and inject files/modify the base os



Changing the image to boot from USB
Burn the image to your device using Raspberry pi imager, then mount the drive and make the folowing change.

#change from NVME to SDA1
sed -i '' 's|root=/dev/nvme0n1p1|root=/dev/sda1|g' /Volumes/Untitled/boot/extlinux/extlinux.conf

edit the file /boot/extlinux/extlinux.conf  from 'root=/dev/nvme0n1p1' to 'root=/dev/sda1'

On Mac use a Ubuntu VM to mount the USB drive or extFS for Mac