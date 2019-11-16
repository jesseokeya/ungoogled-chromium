latest: 
	git submodule update --remote --merge

fetch-submodules: 
	git submodule add --force https://github.com/Eloston/ungoogled-chromium.git archlinux/ungoogled-chromium
	git submodule add --force https://github.com/Eloston/ungoogled-chromium.git macos/ungoogled-chromium
	git submodule add --force https://github.com/Eloston/ungoogled-chromium.git windows/ungoogled-chromium

build-android:
	sh ./android/build.sh

build-archlinux:
	sh ./archlinux/PKGBUILD

build-macos:
	sh ./macos/build.sh

build-windows:
	python3 ./windows/build.py