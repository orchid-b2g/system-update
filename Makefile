#!/bin/bash

bootstrap:
	sudo apt install libcurl4-openssl-dev

build:
	mkdir bin
	g++ `pkg-config --cflags libcurl` main.cpp -o ./bin/system-update `pkg-config --libs libcurl`
	cp /lib/x86_64-linux-gnu/libcurl.so.4.7.0 ./bin/libcurl4.so

make-deb:
	export DEBEMAIL="mortcodesweb@gmail.com"
	export DEBFULLNAME="MortCodesWeb"
	dh_make
	dpkg-buildpackage

	export DEBEMAIL="mortcodesweb@gmail.com"
	dpkg-buildpackage -nc -i
