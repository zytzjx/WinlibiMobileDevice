## this for x64 windows compile
## https://www.msys2.org/    download:http://repo.msys2.org/distrib/x86_64/msys2-x86_64-20161025.exe
## install
## RUN ”MSYS2 MinGW 64-bit“
##
##
##
##


pacman -Syu
pacman -Su
pacman -S mingw-w64-x86_64-toolchain
pacman -S --needed base-devel msys2-devel
pacman -S git

pacman -S mingw-w64-x86_64-curl
pacman -S mingw-w64-x86_64-libxml2
pacman -S mingw-w64-x86_64-libusb
pacman -S mingw-w64-x86_64-libzip


mkdir builds
cd builds
git clone https://github.com/libimobiledevice/libplist.git
cd libplist/
./autogen.sh --without-cython
make
make install
cd ..
git clone https://github.com/libimobiledevice/libusbmuxd.git
cd libusbmuxd/
./autogen.sh 
make
make install
cd ..
git clone https://github.com/libimobiledevice/libimobiledevice.git
cd libimobiledevice/
./autogen.sh --without-cython
make
make install
cd ..
git clone https://github.com/libimobiledevice/libideviceactivation.git
cd libideviceactivation/
./autogen.sh
make
make install
cd ..
git clone https://github.com/libimobiledevice/libirecovery.git
cd libirecovery/
./autogen.sh
make
make install
cd ..  
git clone https://github.com/libimobiledevice/idevicerestore.git
cd idevicerestore/
./autogen.sh
make
make install
cd ..  
git clone https://github.com/libimobiledevice/ideviceinstaller.git
cd ideviceinstaller
./autogen.sh
make
make install
cd ..  
