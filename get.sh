#!/bin/sh -ex

mkdir -p jar-base
mkdir -p jar

wget \
  -O jar-base/forge.jar \
  https://files.minecraftforge.net/maven/net/minecraftforge/forge/1.12.2-14.23.5.2836/forge-1.12.2-14.23.5.2836-universal.jar

#------------------------------------------------------------------------
# Just Enough Items

wget \
  -O jar/jei_1.12.2-4.15.0.268.jar \
  https://minecraft.curseforge.com/projects/jei/files/2682936/download

#------------------------------------------------------------------------
# Xaero's Minimap

wget \
  -O jar/Xaeros_Minimap_1.16.6_Forge_1.12.jar \
  https://minecraft.curseforge.com/projects/xaeros-minimap/files/2705897/download

#------------------------------------------------------------------------
# Thermal Expansion

wget \
  -O jar/RedstoneFlux-1.12-2.1.0.6-universal.jar \
  https://www.curseforge.com/minecraft/mc-mods/redstone-flux/download/2623090/file

wget \
  -O jar/CoFHCore-1.12.2-4.6.2.25-universal.jar \
  https://www.curseforge.com/minecraft/mc-mods/cofhcore/download/2669253/file

wget \
  -O jar/CoFHWorld-1.12.2-1.3.0.6-universal.jar \
  https://www.curseforge.com/minecraft/mc-mods/cofh-world/download/2623091/file

wget \
  -O jar/ThermalFoundation-1.12.2-2.6.2.26-universal.jar \
  https://www.curseforge.com/minecraft/mc-mods/thermal-foundation/download/2669258/file

wget \
  -O jar/CodeChicken-Lib-1.12.2-3.2.2.353-universal.jar \
  https://www.curseforge.com/minecraft/mc-mods/codechicken-lib-1-8/download/2618630/file

wget \
  -O jar/ThermalExpansion-1.12.2-5.5.3.41-universal.jar \
  https://www.curseforge.com/minecraft/mc-mods/thermalexpansion/download/2669257/file

#------------------------------------------------------------------------
# Applied Energistics

wget \
  -O jar/applied-energistics-rv6.stable.jar \
  https://minecraft.curseforge.com/projects/applied-energistics-2/files/2652453/download

#------------------------------------------------------------------------
# CC-Tweaked

wget \
  -O jar/cc-tweaked-1.12.2-1.82.3.jar \
  https://github.com/SquidDev-CC/CC-Tweaked/releases/download/v1.12.2-1.82.3/cc-tweaked-1.12.2-1.82.3.jar

#------------------------------------------------------------------------
# Industrial Foregoing

wget \
  -O jar/Forgelin-1.8.2.jar \
  https://minecraft.curseforge.com/projects/shadowfacts-forgelin/files/2640952/download

wget \
  -O jar/Tesla-1.12.2-1.0.63.jar \
  https://minecraft.curseforge.com/projects/tesla/files/2487959/download

wget \
  -O jar/tesla-core-lib-1.12.2-1.0.15.jar \
  https://minecraft.curseforge.com/projects/tesla-core-lib/files/2580052/download

wget \
  -O jar/industrialforegoing-1.12.2-1.12.11-235.jar \
  https://minecraft.curseforge.com/projects/industrial-foregoing/files/2693866/download

#------------------------------------------------------------------------
# Railcraft

wget \
  -O jar/railcraft-12.0.0.jar \
  https://minecraft.curseforge.com/projects/railcraft/files/2687757/download

#------------------------------------------------------------------------
# Mystcraft

wget \
  -O jar/mystcraft-1.12.2-0.13.7.03.jar \
  https://minecraft.curseforge.com/projects/mystcraft/files/2699673/download

#------------------------------------------------------------------------
# Dimensional Doors

wget \
  -O jar/DimensionalDoors-3.0.9-287.jar \
  https://minecraft.curseforge.com/projects/dimensionaldoors/files/2558528/download

#------------------------------------------------------------------------
# Technical Lights

wget \
  -O jar/technicallights-1.0.1.2.jar \
  https://minecraft.curseforge.com/projects/technical-lights/files/2671026/download

#------------------------------------------------------------------------
# Verification

openssl sha256 jar/* | tee received.sha256
diff -u received.sha256 CHECKSUMS.sha256
rm -f received.sha256
