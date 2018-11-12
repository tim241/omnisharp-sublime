#!/usr/bin/env bash
set -e

rm -rf prebuilt-omnisharp-roslyn/prebuilt

roslyn_version="1.32.6"

roslyn_url="https://github.com/OmniSharp/omnisharp-roslyn/releases/download/v$roslyn_version/omnisharp.http-win-x64.zip"

curl -L "$roslyn_url" -o prebuilt-omnisharp-roslyn/omnisharp.zip

unzip prebuilt-omnisharp-roslyn/omnisharp.zip -d prebuilt-omnisharp-roslyn/prebuilt

rm prebuilt-omnisharp-roslyn/omnisharp.zip