# Docker image to help compile coreboot

This image was only tested compiling coreboot version 4.12. I intend to update it for newer versions when needed.

## How to use it
The usage is pretty simple, you just have to run mounting your local coreboot folder to it, like:

```sh
$ docker run -it -v /home/loop0/Code/coreboot-4.12:/coreboot:z loop0br/coreboot-compile /bin/bash
```

Remember to change the `/home/loop0/Code/coreboot-4.12` (in the example above) to point to your coreboot local directory.

After you successfully entered the bash you can proceed to:
* Create your coreboot configuration
* Compile your coreboot binaries

### Create configuration

```sh
$ make nconfig
```

### Compile coreboot binaries
Remember to change the number `8` to the number of desired cores used for compilation. (The more the faster it will compile, but it depends on how many cores you have on your computer)

```sh
$ make crossgcc-i386 CPUS=8
$ make -j8
```

After the build finishes your binary should be located at `build/coreboot.rom`


I hope this image helps you as it helped me compiling the coreboot binary for my thinkpad x220 :)