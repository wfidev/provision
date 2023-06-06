# Install the common apps using the best app framework the app supports
#
# flatpak install flathub org.keepassxc.KeePassXC -y
sudo snap istall keepassxc -y
flatpak install flathub org.freefilesync.FreeFileSync -y
flatpak install flathub org.onlyoffice.desktopeditors -y
flatpak install flathub org.electrum.electrum -y
flatpak install flathub ch.protonmail.protonmail-bridge -y
flatpak install flathub org.standardnotes.standardnotes -y
flatpak install flathub com.github.micahflee.torbrowser-launcher -y
flatpak install flathub com.visualstudio.code -y
sudo apt install android-tools-adb -y
sudo apt install bleachbit -y

# Veracrypt for ARM command line
#
sudo apt install g++ libfuse-dev pkg-config yasm libwxbase3.0-dev
wget --content-disposition https://github.com/veracrypt/VeraCrypt/archive/refs/tags/VeraCrypt_1.25.9.tar.gz
tar -xvf VeraCrypt-VeraCrypt_1.25.9.tar.gz
pushd .
cd VeraCrypt-VeraCrypt_1.25.9/src
make NOGUI=1
sudo cp Main/veracrypt /usr/bin
popd
