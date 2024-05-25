USR=$(id -u -n)
cd /home/$USR/
sudo mkdir pipillgiver_assets
cd /home/$USR/pipillgiver_assets
echo 'Opening' |   sudo piper --model ../piper_models/en_US-hfc_male-medium.onnx --output_file opening_narrator.wav
echo 'Have a nice day, sir!' |   sudo piper --model ../piper_models/en_US-hfc_male-medium.onnx --output_file h4vaniced8sir_narrator.wav
echo 'Hello sir' |    sudo piper --model ../piper_models/en_US-hfc_male-medium.onnx --output_file hello_narrator.wav
echo 'From the scheduled time in Telegram' |    sudo piper --model ../piper_models/en_US-hfc_male-medium.onnx --output_file schtme_tg_narrator.wav
echo 'Okay' |   sudo piper --model ../piper_models/en_US-hfc_male-medium.onnx --output_file ok_narrator.wav
echo 'Sending to:' | sudo piper --model ../piper_models/en_US-hfc_male-medium.onnx --output_file sendingto_narrator.wav
echo 'Telegram' | sudo piper --model ../piper_models/en_US-hfc_male-medium.onnx --output_file c_tg_narrator.wav
echo 'You are receiving a text from:' | sudo piper --model ../piper_models/en_US-hfc_male-medium.onnx --output_file txtreceived_msg_narrator.wav
echo 'Heres your pill' | sudo piper --model ../piper_models/en_US-hfc_male-medium.onnx --output_file opened_narrator.wav
echo 'In' | sudo piper --model ../piper_models/en_US-hfc_male-medium.onnx --output_file in_narrator.wav
