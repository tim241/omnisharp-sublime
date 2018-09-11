#!/usr/bin/env bash
set -e
./scripts/prepare.sh
rm -rf omnisharp-roslyn/global.json
./scripts/build.sh

fileName="$(find omnisharp-roslyn/bin/Release/ -name "*exe" | \
                grep "Http.Driver" | \
                sed "s|omnisharp-roslyn/bin/Release/||g")"

rm -rf prebuilt-omnisharp-roslyn/prebuilt

cp -R omnisharp-roslyn/bin/Release \
    prebuilt-omnisharp-roslyn/prebuilt

./scripts/patch.sh "$fileName"

