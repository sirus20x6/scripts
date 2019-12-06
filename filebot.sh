#!/bin/bash
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_CTYPE="en_US.UTF-8"
TORRENT_PATH="/home25/sirus20x6/incomming"
TORRENT_NAME="$TR_TORRENT_NAME"
TORRENT_LABEL="N/A"

# Subtitle language
SUBLANG=en
SKIP_EXTRACT=y
MUSIC=y

filebot -script /opt/filebot/scripts/amc.groovy \
    --output "/home25/sirus20x6/files" \
    -non-strict --encoding utf8 --action move --conflict override \
    --def artwork=true ut_kind=multi "ut_dir=$TORRENT_PATH" "ut_title=$TORRENT_NAME" subtitles=$SUBLANG \
    --def "movieFormat={fn =~ /2160p|4K|4k|UHD/ ? 'Movies 4K' : fn =~ /3D|3d|3dhsbs|H-SBS|3dhou|H-OU/ ? 'Movies 3D' : 'Movies'}/{n}.({y})/{n}.{vf}.({y}){' CD'+pi}{'.'+lang}" \
    --def "seriesFormat={fn =~ /2160p|4K|4k|UHD/ ? 'TV Shows 4K' : 'TV Shows'}/{n}/{episode.special ? 'Special' : 'Season '+s.pad(2)}/{n.space('.').upperInitial()}.{episode.special ? 'S00E'+special.pad(2) : s00e00}.{vf}.{t.replaceAll(/[\$
    music=$MUSIC skipExtract=$SKIP_EXTRACT &
