#!/bin/bash

set -euo pipefail

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

TEMP_DIR=$(mktemp -d)
git clone https://github.com/ssslakter/sdl-mojo "$TEMP_DIR/sdl-mojo"

echo "Packaging sdl-mojo..."
pushd "$TEMP_DIR/sdl-mojo"
mojo package "./out" -o sdl.mojopkg
popd

echo "Copying sdl.mojopkg to $SCRIPT_DIR"
cp "$TEMP_DIR/sdl-mojo/sdl.mojopkg" "$SCRIPT_DIR/sdl.mojopkg"

pushd "$(dirname "$SCRIPT_DIR")"
pixi run pkg
popd

echo "Copying opengl.mojopkg to $SCRIPT_DIR"
cp "$(dirname "$SCRIPT_DIR")/opengl.mojopkg" "$SCRIPT_DIR/opengl.mojopkg"

echo "Cleaning up temporary directory $TEMP_DIR"
rm -rf "$TEMP_DIR"

echo "Script execution finished successfully."
