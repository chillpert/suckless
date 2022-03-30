#!/bin/bash

for d in */ ; do
	echo "Installing $d ..."

	cd $d
	makepkg -cf
	sudo pacman -U *.pkg.tar.zst
	cd ..
done

echo "Finished installation."


