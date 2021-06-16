#!/usr/bin/zsh

# create dirs
sudo mkdir -m 755 \
  '/Apps' '/Data' '/Cfg' '/Site' '/Server' '/Wnd'

sudo chown -R "$USER:$USER" \
  '/Apps' '/Data' '/Cfg' '/Site' '/Server' '/Wnd'


# bind all the dirs at the current runtime
udisksctl mount -b '/dev/disk/by-label/Data'
sudo mount --bind "/media/$USER/Data"  '/Data'

udisksctl mount -b '/dev/disk/by-label/Wnd'
sudo mount --bind "/media/$USER/Wnd"  '/Wnd'

sudo mount --bind '/Data/_my'  '/Site'
sudo mount --bind '/Data/_my/dotfiles-ubuntu'  '/Cfg'
sudo mount --bind '/Data/Apps'  '/Apps'


# add Data to fstab
lsblk -o 'UUID,NAME,FSTYPE,LABEL' \
  | grep "Data$" \
  | grep -oE "^[0-9a-zA-Z\-]+" \
  > ~/Data-UUID.txt

echo "# Data
UUID=`< ~/Data-UUID.txt`  /Data  ext4  defaults  0  0
"  |  sudo tee -a '/etc/fstab'

rm ~/Data-UUID.txt


# add Wnd to fstab
lsblk -o 'UUID,NAME,FSTYPE,LABEL' \
  | grep "Wnd$" \
  | grep -oE "^[0-9a-zA-Z\-]+" \
  > ~/Wnd-UUID.txt

echo "# Wnd
UUID=`< ~/Wnd-UUID.txt`  /Wnd  ntfs  defaults  0  2
"  |  sudo tee -a '/etc/fstab'

rm  ~/Wnd-UUID.txt


# add mounts to fstab
echo '# mounts
/Data/_my/dotfiles-ubuntu  /Cfg   none  bind
/Data/_my                  /Site  none  bind
/Data/Apps                 /Apps  none  bind
'  |  sudo tee -a '/etc/fstab'
