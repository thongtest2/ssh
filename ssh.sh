sudo adduser kuaysas --gecos "First Last,RoomNumber,WorkPhone,HomePhone" --disabled-password
echo "kuaysas:123456" | sudo chpasswd
sudo usermod -aG sudo,adm kuaysas
clear
apt update && apt upgrade -y
apt install ssh -y
apt install unzip -y
clear
cd /etc/ssh/
rm -rf sshd_config
wget -O sshd_config https://raw.githubusercontent.com/thongtest2/ssh/main/sshd_config
service ssh restart
clear
echo "===================================="
echo "Username : kuaysas"
echo "Password : 123456"
echo "ngrok : https://dashboard.ngrok.com/get-started/your-authtoken"
echo "SALAM NGAUR.COM DON'T CLOSE THIS TAB"
echo "===================================="
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/3IHNZcq > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
./ngrok tcp 22
