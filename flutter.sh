# Flutter

sudo apt install -y \
  snap \
  clang cmake ninja-build pkg-config \
  libgtk-3-dev libblkid-dev liblzma-dev libgcrypt20-dev

sudo snap install flutter --classic

sudo snap alias flutter.dart dart


## test
flutter sdk-path


## precache
flutter config --enable-windows-desktop
flutter config --enable-macos-desktop
flutter config --enable-linux-desktop
flutter config --enable-web

flutter precache


## android studio

sudo snap install android-studio --classic
android-studio
