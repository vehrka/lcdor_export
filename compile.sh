#!/bin/bash

cd ~/Documents/dev/lcdor_export
rm -fr ~/Documents/dev/lcdor_export/lcdor_export/*
rm -fr ~/Documents/doc/rpg/obsidian/sessions/rpg_sessions/lcdor_export/*
obsidian-export --ignore-file ~/Documents/dev/lcdor_export/.export-ignore --frontmatter=always ~/Documents/doc/rpg/obsidian/sessions/rpg_sessions/Worlds/1.\ La\ Caza\ del\ Ojo\ Rojo ~/Documents/doc/rpg/obsidian/sessions/rpg_sessions/lcdor_export/
sed -i 's@Worlds/1. La Caza del Ojo Rojo@lcdor_export@' ~/Documents/doc/rpg/obsidian/sessions/rpg_sessions/lcdor_export/Mapa\ lcdor\ jugadores.md
find ~/Documents/doc/rpg/obsidian/sessions/rpg_sessions/lcdor_export/ -name "*.md" -exec sed -i -e 's/\\\[/[/' {} \;
find ~/Documents/doc/rpg/obsidian/sessions/rpg_sessions/lcdor_export/ -name "*.md" -exec sed -i -e 's/\\\]/]/' {} \;
find ~/Documents/doc/rpg/obsidian/sessions/rpg_sessions/lcdor_export/ -name "*.md" -exec sed -i -e 's/ > $//' {} \;

