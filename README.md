# WinlibiMobileDevice

[![N|Solid](https://cldup.com/dTxpPi9lDf.thumb.png)](http://blog.sina.com.cn/functiontest)

WinlibiMobileDevice is used mingwin compiled the Source code.
all code from [github.com](https://github.com/libimobiledevice)

### Compile (window os X32)

     install msys2, download http://www.msys2.org/
     installdir\mingw32.exe 

```sh
$ pacman -Syu
$ pacman -Su
$ pacman -S mingw-w64-i686-toolchain
$ pacman -S --needed base-devel msys2-devel
$ pacman -S git
$ pacman -S libtool
$ pacman -S --needed --noconfirm autoconf automake libtool make
$ mkdir builds
$ cd builds
$ git clone https://github.com/libimobiledevice/libplist.git
$ cd libplist/
$ ./autogen.sh --without-cython
$ make
$ make install
cd ..
git clone https://github.com/libimobiledevice/libimobiledevice-glue.git
cd libimobiledevice-glue
./autogen.sh
make
make install
$ cd ..
$ git clone https://github.com/libimobiledevice/libusbmuxd.git
$ cd libusbmuxd/
$ ./autogen.sh
$ make
$ make install
$ cd ..
$ git clone https://github.com/libimobiledevice/libimobiledevice.git
$ cd libimobiledevice/
$ ./autogen.sh
$ make
$ make install
$ cd ..
$ git clone https://github.com/libimobiledevice/libideviceactivation.git
$ pacman -S mingw-w64-i686-curl
$ pacman -S mingw-w64-i686-libxml2
$ pacman -S mingw-w64-i686-libusb
$ pacman -S mingw-w64-i686-libzip
$ cd libideviceactivation/
$ ./autogen.sh
$ make
$ make install
$ cd ..
$ git clone https://github.com/libimobiledevice/libirecovery.git
$ cd libirecovery/
$ ./autogen.sh
$ make
$ make install
$ cd ..  
$ git clone https://github.com/libimobiledevice/idevicerestore.git
$ cd idevicerestore/
$ ./autogen.sh
$ make
$ make install
$ cd ..  
```

### Compile (window os X64)

     install msys2, download http://www.msys2.org/
     installdir\msys2.exe 
	 [readme_x64](readme_x64.txt)
