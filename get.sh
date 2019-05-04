#!/bin/sh -ex

mkdir -p jar

wget \
  -O jar/forge.jar \
  https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.12.2-14.23.5.2836/forge-1.12.2-14.23.5.2836-universal.jar

wget \
  -O jar/jei_1.12.2-4.15.0.268.jar \
  https://minecraft.curseforge.com/projects/jei/files/2682936/download

