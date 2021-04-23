#!/usr/bin/zsh

# create dirs
sudo mkdir -m 755 '/Apps' '/Data' '/Cfg' '/Site' '/Server'
# sudo chmod 755 -R /Cfg /Site /Server

# own them
sudo chown -R "$USER:$USER" '/Apps' '/Data' '/Cfg' '/Site' '/Server'


# bind all the dirs
udisksctl mount -b '/dev/disk/by-label/Data'

sudo mount --bind "/media/$USER/Data" '/Data'
sudo mount --bind '/Data/_my' '/Site'
sudo mount --bind '/Data/_my/dotfiles-ubuntu' '/Cfg'
sudo mount --bind '/Data/Apps' '/Apps'


# add to fstab
lsblk -o 'UUID,NAME,FSTYPE,LABEL' \
  | grep "Data$" \
  | grep -Eoe "^[0-9a-z\-]+" \
  > ~/data-uuid.txt

echo "UUID=`cat ~/data-uuid.txt`  /Data  ext4  defaults  0  0" \
  | sudo tee -a '/etc/fstab'

echo '# mounts
/Data/_my/dotfiles-ubuntu  /Cfg   none  bind
/Data/_my                  /Site  none  bind
' | sudo tee -a '/etc/fstab'
