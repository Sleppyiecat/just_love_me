            if [ ! -d "toolchain" ]
            then
	            git clone https://github.com/kdrag0n/proton-clang --depth=1 -b master toolchain
            fi

	    export ARCH=arm64
            export KBUILD_BUILD_USER=Karou
            export KBUILD_BUILD_HOST=Playground
            export PATH="$(pwd)/toolchain/bin/:$PATH"
	    
	    echo "_________________________________________________"
	    echo "=                    VantomBE                   ="
	    echo "=                Developer: Karou               ="
	    echo "=                                               ="
	    echo "=     Why would you try to build this crap?     ="
	    echo "=---------------------------------------------- ="
	    echo "=     > ARM64 Toolchain exported                ="
	    echo "=     > ARM32 Toolchain exported                ="
	    echo -e "=_______________________________________________="
	
            make O=out ARCH=arm64 davinci_defconfig
            time make -j$(nproc --all) O=out ARCH=arm64 CC=clang CROSS_COMPILE=aarch64-linux-gnu- CROSS_COMPILE_ARM32=arm-linux-gnueabi-

