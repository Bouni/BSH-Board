#!/bin/sh

docker run --rm -it \
  -v .:/board \
  -v .kibot/kibot-double-sided.yaml:/config.yaml \
  ghcr.io/inti-cmnb/kicad9_auto_full:latest \
  kibot -v -c /config.yaml \
    -b /board/BSH-Board.kicad_pcb \
    -e /board/BSH-Board.kicad_sch \
    -d /board/output \
    -E NAME=BSH-Board
