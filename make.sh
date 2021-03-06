#!/bin/sh -ex

VERSION=$(head -n 1 README-VERSION.txt)
OUTPUT_FILE="$(pwd)/desert-shores-${VERSION}.zip"

rm -rf out

mkdir -p out/coremod
mkdir -p out/mods
mkdir -p out/bin
mkdir -p out/config

cp jar-base/forge.jar out/bin/modpack.jar

cp jar/* out/mods/

rsync -avz config/ out/config/

rm -f "${OUTPUT_FILE}"
rm -f "${OUTPUT_FILE}.asc"

cd out
faketime '2001-01-01T00:00:00+0000' zip -9 "${OUTPUT_FILE}" $(find . | sort)
openssl sha256 "${OUTPUT_FILE}"
gpg -u 0x91A814E2EAF750A3 -a --detach-sign "${OUTPUT_FILE}"

