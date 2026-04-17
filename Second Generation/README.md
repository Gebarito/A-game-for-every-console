# ATARI 2600 Game

## Requirements
- [DASM](https://dasm-assembler.github.io/)
- [Stella](https://stella-emu.github.io/) or other compatible Atari emulator.
- Sprites developed with the [Atari Dev Studio](https://marketplace.visualstudio.com/items?itemName=chunkypixel.atari-dev-studio) extension for VScode.

## Assembling and Running the game
- To run the game first create the rom file with dasm:

```sh
dasm "game.s" -f3 -ogame.rom
```
- Then you can run with stella

```sh
stella game.rom
```

> ![TIP]
> If you are using linux or wsl you execute the `run.sh` file.
> Check if the dasm folder is the same.

## GDD - Design and How to play
Inspired in a minigame of california games.

## Docs
- https://www.slideshare.net/slideshow/programao-para-atari-2600/9029368 (pt-br)
- https://www.randomterrain.com/atari-2600-memories-tutorial-andrew-davie-01.html (eng)
- https://www.randomterrain.com/atari-2600-lets-make-a-game-spiceware-01.html (eng)
- https://atariage.com/ (homebrew forum)
- https://chibiakumas.com/ (old: www.learnasm.net)