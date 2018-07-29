#!/usr/bin/env bash
set -e
./scripts/prepare.sh
./scripts/build.sh

fileName="$(find omnisharp-roslyn/bin/Release/ -name "*exe" | \
                grep "Http.Driver" | \
                sed "s|omnisharp-roslyn/bin/Release/||g")"

rm -rf prebuilt-omnisharp-roslyn/prebuilt

cp -R omnisharp-roslyn/bin/Release \
    prebuilt-omnisharp-roslyn/prebuilt

cp prebuilt-omnisharp-roslyn/in/* prebuilt-omnisharp-roslyn

for file in omnisharp omnisharp.cmd
do
    sed -i "s|@FILENAME@|$fileName|g" prebuilt-omnisharp-roslyn/$file
done

