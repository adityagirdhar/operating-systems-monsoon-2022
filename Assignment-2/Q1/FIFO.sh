#!/bin/bash

echo "Starting FIFO compilation..."
tar xvf linux-5.19.9.tar.xz -C ./FIFO/
cd ./FIFO/linux-5.19.9
make mrproper
wget https://raw.githubusercontent.com/adityagirdhar/test-repo/main/config-rev-9-gold
mv config-rev-9-gold .config
make
echo "Done"
cd ..
rm -r linux-5.19.9
echo "Files cleaned."
cd ..
exit
