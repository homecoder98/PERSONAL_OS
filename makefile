all: BootLoader Disk.img

BootLoader:
	@echo
	@echo ================= Build Boot Loader =================
	@echo 

	make -C 00.BootLoader

	@echo 
	@echo ================= Builde Complete =================
	@echo

Disk.img: 00.BootLoader/BootLoader.bin
	@echo
	@echo ================= Disk Image Build Start =================

	cp 00.BootLoader/BootLoader.bin Disk.img

	@echo
	@echo ================= All Build COmplete =================
	@echo
	
clean: 
	make -C 00.BootLoader clean
	rm -f Disk.img