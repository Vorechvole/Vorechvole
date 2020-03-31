#!/bin/bash
mount -t iso9660 -o loop,ro /mnt/volris/CentOS-8.1.1911-x86_64-dvd1.iso /mnt/install && df -PhT /mnt/install
