echo 'Compile libimobiledevice'

sudo apt-get install \
	build-essential \
	pkg-config \
	checkinstall \
	git \
	autoconf \
	automake \
	libtool-bin \
	libusb-1.0-0-dev \
	udev

sudo apt-get install \
	libreadline-dev \
	libcurl4-openssl-dev \
	libssl-dev \
	libzip-dev \
	libxml2-dev \
	libfuse-dev \
	zlib1g-dev
	
sudo apt-get install \
	doxygen \
	cython
	
git clone https://github.com/libimobiledevice/libplist.git
cd libplist

./autogen.sh
make
sudo make install
cd ..

git clone https://github.com/libimobiledevice/libimobiledevice-glue.git
cd libimobiledevice-glue

./autogen.sh
make
sudo make install
cd ..

git clone https://github.com/libimobiledevice/usbmuxd.git
cd usbmuxd

./autogen.sh --prefix=/opt/local --without-preflight --without-systemd
make
sudo make install
cd ..

git clone https://github.com/libimobiledevice/libusbmuxd.git
cd libusbmuxd

./autogen.sh
make
sudo make install
cd ..


git clone https://github.com/libimobiledevice/libirecovery.git
cd libirecovery
./autogen.sh
make
sudo make install
cd ..

git clone https://github.com/libimobiledevice/idevicerestore.git
cd idevicerestore

./autogen.sh
make
sudo make install
cd ..

git clone https://github.com/libimobiledevice/libideviceactivation.git
cd libideviceactivation
./autogen.sh
make
sudo make install
cd ..

git clone https://github.com/libimobiledevice/ifuse.git
cd ifuse
./autogen.sh
make
sudo make install
cd ..



