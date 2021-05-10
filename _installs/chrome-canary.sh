wget -q -O - \
  'https://dl.google.com/linux/linux_signing_key.pub' \
  | sudo apt-key add -

echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' \
  | sudo tee -a '/etc/apt/sources.list.d/google.list'

sudo apt update -y

sudo apt install -y \
  google-chrome-unstable
