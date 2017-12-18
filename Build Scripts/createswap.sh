#check for existing swap volumes first
##sudo swapon --show
##free -h

#get rid of swapfile if you need to.
##sudo swapoff -a

#check your free space
##df -h

#for 4gb ram rig
sudo fallocate -l 8G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile

#We can verify that the swap is available by typing:
sudo swapon --show
##free -h

#Back up the /etc/fstab file in case anything goes wrong:
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
