#!/usr/bin/env bash
build() {
	cd omnisharp-roslyn
	sh build.sh
}
submodule_update() {
	if ! command -v git > /dev/null 2>&1
	then
		echo "Please install 'git'"
		exit 1
	else
		git submodule update --init
	fi
}

if [ ! -f "omnisharp-roslyn/build.sh" ]
then
	submodule_update
fi

build
