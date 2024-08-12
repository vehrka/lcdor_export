#!/bin/bash

cd ~/Documents/dev/lcdor_export
rm -fr ~/Documents/dev/lcdor_export/lcdor_export/*
rm -fr ~/Documents/RPG_SESSIONS/lcdor_export/*
obsidian-export --ignore-file ~/Documents/dev/lcdor_export/.export-ignore --frontmatter=always ~/Documents/RPG_SESSIONS/Worlds/eau\ -\ La\ Caza\ del\ Ojo\ Rojo/ ~/Documents/RPG_SESSIONS/lcdor_export/
sed -i 's@Worlds/eau - La Caza del Ojo Rojo@lcdor_export@' ~/Documents/RPG_SESSIONS/lcdor_export/Mapa\ lcdor\ jugadores.md
find ~/Documents/RPG_SESSIONS/lcdor_export/ -name "*.md" -exec sed -i -e 's/\\\[/[/' {} \;
find ~/Documents/RPG_SESSIONS/lcdor_export/ -name "*.md" -exec sed -i -e 's/\\\]/]/' {} \;
find ~/Documents/RPG_SESSIONS/lcdor_export/ -name "*.md" -exec sed -i -e 's/ > $//' {} \;

