rm -rf /etc/apt/sources.list
touch /etc/apt/sources.list
echo "# deb cdrom:[Linux Mint 18.2 _Sonya_ - Release amd64 20170628]/ xenial contrib main non-free" > /etc/apt/sources.list
echo "net.ipv6.conf.all.disable_ipv6 = 1" >> /etc/sysctl.conf
echo "net.ipv6.conf.default.disable_ipv6 = 1" >> /etc/sysctl.conf
echo "net.ipv6.conf.lo.disable_ipv6 = 1" >> /etc/sysctl.conf
/sbin/sysctl -p
apt-get update && apt-get install -y openssh-server
cp -a /etc/ssh/sshd_config /etc/ssh/sshd_config_backup
rm -rf /etc/ssh/sshd_config
touch /etc/ssh/sshd_config
echo "Port 22" >> /etc/ssh/sshd_config
echo "Protocol 2" >> /etc/ssh/sshd_config
echo "HostKey /etc/ssh/ssh_host_rsa_key" >> /etc/ssh/sshd_config
echo "HostKey /etc/ssh/ssh_host_dsa_key" >> /etc/ssh/sshd_config
echo "HostKey /etc/ssh/ssh_host_ecdsa_key" >> /etc/ssh/sshd_config
echo "HostKey /etc/ssh/ssh_host_ed25519_key" >> /etc/ssh/sshd_config
echo "UsePrivilegeSeparation yes" >> /etc/ssh/sshd_config
echo "KeyRegenerationInterval 3600" >> /etc/ssh/sshd_config
echo "ServerKeyBits 2048" >> /etc/ssh/sshd_config
echo "KeyRegenerationInterval 3600" >> /etc/ssh/sshd_config
echo "SyslogFacility AUTH" >> /etc/ssh/sshd_config
echo "LogLevel INFO" >> /etc/ssh/sshd_config
echo "LoginGraceTime 120" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "StrictModes yes" >> /etc/ssh/sshd_config
echo "RSAAuthentication yes" >> /etc/ssh/sshd_config
echo "PubkeyAuthentication yes" >> /etc/ssh/sshd_config
echo "PermitRootLogin yes" >> /etc/ssh/sshd_config
echo "IgnoreRhosts yes" >> /etc/ssh/sshd_config
echo "RhostsRSAAuthentication no" >> /etc/ssh/sshd_config
echo "HostbasedAuthentication no" >> /etc/ssh/sshd_config
echo "PermitEmptyPasswords no" >> /etc/ssh/sshd_config
echo "ChallengeResponseAuthentication no" >> /etc/ssh/sshd_config
echo "X11Forwarding no" >> /etc/ssh/sshd_config
echo "AllowTcpForwarding no" >> /etc/ssh/sshd_config
echo "X11DisplayOffset 10" >> /etc/ssh/sshd_config
echo "PrintMotd no" >> /etc/ssh/sshd_config
echo "PrintLastLog yes" >> /etc/ssh/sshd_config
echo "TCPKeepAlive yes" >> /etc/ssh/sshd_config
echo "AcceptEnv LANG LC_*" >> /etc/ssh/sshd_config
echo "Subsystem sftp /usr/lib/openssh/sftp-server" >> /etc/ssh/sshd_config
echo "UsePAM yes" >> /etc/ssh/sshd_config
service ssh restart

apt-get update && wget https://minergate.com/download/deb-cli -O minergate-cli.deb && dpkg -i minergate-cli.deb

apt-get update && apt-get install -y automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev git make g++
apt-get autoremove
apt-get clean
git clone https://github.com/tpruvot/cpuminer-multi
cd cpuminer-multi
./build.sh

apt-get install software-properties-common
add-apt-repository ppa:ethereum/ethereum
sed 's/jessie/vivid/' -i /etc/apt/sources.list.d/ethereum-ethereum-*.list
apt-get update
apt-get install ethereum ethminer
#gpu version ethminer

#cpu ethereum version
apt-get install software-properties-common
add-apt-repository ppa:ethereum/ethereum
apt-get update
apt-get install cpp-ethereum
cd /miner
#try 2
git clone --recursive https://github.com/ethereum/cpp-ethereum.git
cd cpp-ethereum
apt-get install libleveldb-dev libmicrohttpd-dev
cd scripts
./install_cmake.sh
mkdir build; cd build
cmake ..
cmake --build .

##XMR
#./cpuminer -o stratum+tcp://europe.cryptonight-hub.miningpoolhub.com:20580 -a cryptonight -u user.worker2 -p x -t4 -D
#BDF
#./cpuminer -o stratum+tcp://bsd.suprnova.cc:8686 -a xevan -u user.worker2 -p x -t4 -D
##LYBR
#./cpuminer -o stratum+tcp://lbry.suprnova.cc:6256 -a lbry -u user.worker2 -p x -t4 -D
##BCN
#minergate-cli -user user@.com -bcn 4
#MUSICCOIN
#setx GPU_FORCE_64BIT_PTR 0
#setx GPU_MAX_HEAP_SIZE 100
#setx GPU_USE_SYNC_OBJECTS 1
#setx GPU_MAX_ALLOC_PERCENT 100
#setx GPU_SINGLE_ALLOC_PERCENT 100
#./ethminer.exe --farm-recheck 200 -SP 1 -U -S musicoin.nomnom.technology:9999 -FS musicoin2.nomnom.technology:9999 -O 0x8521187e98b289bbda036fe289ede7d2d7fe132b.worker1 --cuda-parallel-hash 8 --cuda-schedule auto

~~~INSTALL CUDA
Installation Instructions:
https://developer.nvidia.com/cuda-downloads
1 `sudo dpkg -i cuda-repo-ubuntu1604_8.0.61-1_amd64.deb`
2 `sudo apt-get update`
3 `sudo apt-get install cuda`
