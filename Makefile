#!/bin/bash

bootstrap:
	sudo apt install libcurl4-openssl-dev

build:
	mkdir binary
	g++ `pkg-config --cflags libcurl` main.cpp -o ./binary/system-update `pkg-config --libs libcurl`
	cp /lib/x86_64-linux-gnu/libcurl.so.4.7.0 ./binary/libcurl4.so

make-deb:
	export DEBEMAIL="mortcodesweb@gmail.com"
	export DEBFULLNAME="MortCodesWeb"
	dh_make
	dpkg-buildpackage

	export DEBEMAIL="mortcodesweb@gmail.com"
	dpkg-buildpackage -nc -i
