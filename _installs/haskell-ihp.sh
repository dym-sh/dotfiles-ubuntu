sudo apt update
sudo apt upgrade
sudo apt install git curl make -y

curl -L https://nixos.org/nix/install | sh

nix-env -f https://ihp.digitallyinduced.com/ihp-new.tar.gz -i ihp-new
