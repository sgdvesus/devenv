INSTALL UPDATE PYTHON LINUX
# requirements
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev
# install
cd Python-3.12.*/
./configure --enable-optimizations
## cores
nproc
## -j corresponds to the number of cores in your system to speed up the build time.
make -j 4
make altinstall
 python3.12 --version # pip3.12 --version
# Use update-alternatives to create symbolic links to Python3:
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.10 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.12 2
## choose which one to use as Python3 via command:
sudo update-alternatives --config python3
