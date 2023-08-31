#!/bin/bash
declare -A plugins
plugins[Aben]=https://github.com/Adde-Endless-Sky/Aben
plugins[Adamas Project]=https://github.com/kestrel1110/Adamas-Project
plugins[Amphibious Ships]=https://github.com/AvianGeneticist/Amphibious-Ships
plugins[Arion]=https://github.com/Spectre907YT/Endless-Sky---Arion
plugins[Celestial Strands]=https://github.com/Saugia/celestial-strands
plugins[Chroma Expansion]=https://github.com/OcelotWalrus/Cromha-Expansion-plugin
plugins[ES Galactic Exploration]=https://github.com/lumbar527/ES-Galactic-Exploration
plugins[Fire Corporation Plugin]=https://github.com/lumbar527/Fire-Corporation
plugins[Irm]=https://github.com/Adde-Endless-Sky-Mods/Irm
plugins[Lost in Midnight]=https://github.com/MidnightPlugins/Lost-in-Midnight
plugins[Mega Freight]=https://github.com/1010todd/Mega-Freight
plugins[Mata]=https://github.com/Karirawri/Mata
plugins[Midnight Expansion]=https://github.com/MidnightPlugins/Midnight-Expansion
plugins[Midnight Scrapyard]=https://github.com/MidnightPlugins/Midnight-Scrapyard
plugins[sensor]=https://github.com/orbitalsupershell/sensor/
plugins[Sheragi Rebirth]=https://github.com/Petersupes/sheragi-rebirth

pushd ../../plugins > /dev/null
for plugin_name in "${!plugins[@]}"
do
	if [ -d "$plugin_name" ]; then
		echo "Updating $plugin_name..."
		git -C "$plugin_name" pull
	else
		echo "Installing $plugin_name..."
		git clone "${plugins[$plugin_name]}" "$plugin_name"
	fi
done
popd > /dev/null
