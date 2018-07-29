#!/usr/bin/env bash
set -e

rm -rf prebuilt-omnisharp-roslyn/prebuilt

roslyn_ver="v1.32.1"

dl_link="https://github.com/OmniSharp/omnisharp-roslyn/releases/download/${roslyn_ver}/omnisharp-win-x86.zip"

curl -L "$dl_link" -o prebuilt-omnisharp-roslyn/tmp.zip

unzip prebuilt-omnisharp-roslyn/tmp.zip -d prebuilt-omnisharp-roslyn/prebuilt

rm prebuilt-omnisharp-roslyn/tmp.zip

./scripts/patch.sh "OmniSharp.exe"

