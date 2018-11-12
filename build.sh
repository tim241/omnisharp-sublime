#!/usr/bin/env bash
set -e
git submodule update --init

cd omnisharp-roslyn

dotnet restore
msbuild /p:Configuration=Release

cd ..