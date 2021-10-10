            echo "_________________________________________________"
	    echo "=              VantomBE for SM6150              ="
	    echo "=                Developer: Karou               ="
	    echo "=                                               ="
	    echo "=        Have i told you that i love you?       ="
	    echo "=---------------------------------------------- ="
	    echo "=     > Generating flashable zip                ="
	    echo -e "=_______________________________________________="

            git clone https://github.com/Sleppyiecat/Anykernel --depth=1 out/arch/arm64/boot/ZIP
	    rm -rf out/arch/arm64/boot/ZIP/.git
            cp -rf out/arch/arm64/boot/Image.gz-dtb out/arch/arm64/boot/ZIP/Image.gz-dtb
	    cp -rf out/arch/arm64/boot/dtbo.img out/arch/arm64/boot/ZIP/dtbo.img
            cd out/arch/arm64/boot/ZIP && zip -r Kernel.zip ./
