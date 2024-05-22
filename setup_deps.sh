#VERSI FINAL, kalau ada perubahan/bug nanti diubah lagi
#SETUPNYA PAKE INI:
#wget https://bit.ly/pipillgiver-setupv3 && sh pipillgiver_setup.sh
#atau kalau udh punya spchcat pake ini:
#wget https://bit.ly/pipillgiver-setupv3 && sh pipillgiver_setup.sh skip_spchcat
#Atau kalo males pake ini aja kuy!
#wget https://bit.ly/pipillgiver-u_setupv1 && sh pipillgiver.sh
#ambil semua package yg dibutuhkan
#opsi klo udah punya paket debiannya, ntar di install
SPCHCATAVAILABLE=$0
cd ~/
sudo mkdir ~/piper_models
#install paket yang diperlukan
#Kalau unzip (bukan tar) udah ada paket bawaannya di rpi 
#unduh piper
echo "[[Downloading piper and 1 model required for piper]]"
sudo pip install piper-tts --break-system-packages
#unduh model untuk piper
sudo wget https://huggingface.co/rhasspy/piper-voices/resolve/v1.0.0/en/en_US/hfc_male/medium/en_US-hfc_male-medium.onnx?download=true
sudo mv "./en_US-hfc_male-medium.onnx?download=true" ./piper_models/en_US-hfc_male-medium.onnx
sudo wget https://huggingface.co/rhasspy/piper-voices/resolve/v1.0.0/en/en_US/hfc_male/medium/en_US-hfc_male-medium.onnx.json?download=true.json
sudo mv "./en_US-hfc_male-medium.onnx.json?download=true.json" ./piper_models/en_US-hfc_male-medium.onnx.json
#unduh SPCHCAT (karena 32bit programnya jadi paketnya banyak)
echo "[[Setuping SPCHCAT]]"
sudo apt-get install sox libsox-dev:armhf libpulse-dev:armhf libstdc++6-11-dbg:armhf
if [ "$SPCHCATAVAIABLE"!="skip_spchcat" ]; then
   wget https://github.com/petewarden/spchcat/releases/download/v0.0.2-rpi-alpha/spchcat_0.0-2_armhf.deb
   sudo dpkg -i "spchcat_0.0-2_armhf.deb"
fi
#install paket python untuk projek yg akan dibuat nanti
sudo pip install playsound3 pyTelegramBotAPI --break-system-packages
