#follwing command  states that there is one module to be built from the object
#file hello.o. The #resulting module is named hello.ko after being built   from 
#the object file.

obj-m+=led.o

#The following command  starts  by  changing  its  directory  to  the one 
#provided with  the  -C option (that is, your kernel source directory). 
#There it finds the kernel’s top-level makefile. The M= option causes that 
#makefile to move back into your module source directory before trying to build 
#the modules target. This target, in turn, refers to the list of modules found 
#in the obj-m variable, which we’ve set to module.o in our examples.
#all:
#	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
#clean:
#	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

#all:
#	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
#clean:
#	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

# cross compile optioni
export CROSS_COMPILE=arm-linux-gnueabihf-
export ARCH=arm
KERNEL_PATH=/home/ubuntu/project/linux
all:
	make -C $(KERNEL_PATH) M=$(PWD) modules
clean:	
	make -C $(KERNEL_PATH) M=$(PWD) clean
