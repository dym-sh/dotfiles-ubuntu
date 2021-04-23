# reverse `Fn`-key on Apple keyboard
echo '2' \
   | sudo tee /sys/module/hid_apple/parameters/fnmode
echo 'options hid_apple fnmode=2' \
   | sudo tee /etc/modprobe.d/hid_apple.conf
sudo update-initramfs -u -k all
