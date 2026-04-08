#!/bin/sh

cd "$(dirname "$0")"

dasm/dasm "game.s" -f3 -ogame.rom

stella game.rom
