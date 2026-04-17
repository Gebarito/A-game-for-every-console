;
;   Keepie-Uppie
;
;   created by @github.com/Gebarito.
;

    PROCESSOR 6502
    INCLUDE "include/vcs.h"
    INCLUDE "include/macro.h"

    SEG
    ORG $F000

Reset:
    CLEAN_START

    lda #80
    sta COLUBK
    lda #$0F
    sta COLUP0

StartFrame:

    lda #2
    sta VSYNC
    sta WSYNC
    sta WSYNC
    sta WSYNC
    lda #0
    sta VSYNC

    lda #2
    sta VBLANK
    ldx #37

VBlankLoop:
    sta WSYNC
    dex
    bne VBlankLoop
    lda #0
    sta VBLANK

    ldx #88

WaitTop:
    sta WSYNC
    dex
    bne WaitTop

    ldx #15

DrawSprite:
    lda Player,X        
    sta GRP0            
    lda PlayerColor,X   
    sta COLUP0
    sta WSYNC           
    dex
    bpl DrawSprite

    lda #0
    sta GRP0

    ldx #88

WaitBottom:
    sta WSYNC
    dex
    bne WaitBottom

    ldx #30

OverscanLoop:
    sta WSYNC
    dex
    bne OverscanLoop

    jmp StartFrame


;Created using Atari Dev Studio
;assembly format (bottom to top)
Player:
	.byte %00000000 ;
	.byte %01100110 ;
	.byte %00100100 ;
	.byte %00100100 ;
	.byte %00111100 ;
	.byte %00111100 ;
	.byte %00111100 ;
	.byte %01111110 ;
	.byte %01111110 ;
	.byte %01111110 ;
	.byte %00111100 ;
	.byte %00111100 ;
	.byte %00111100 ;
	.byte %00111100 ;
	.byte %00111100 ;
	.byte %00000000 ;
; --- end ----
PlayerColor:
	.byte $00 ;
	.byte $12 ;
	.byte $12 ;
	.byte $12 ;
	.byte $70 ;
	.byte $70 ;
	.byte $18 ;
	.byte $18 ;
	.byte $18 ;
	.byte $18 ;
	.byte $B2 ;
	.byte $12 ;
	.byte $12 ;
	.byte $12 ;
	.byte $10 ;
	.byte $00 ;
; ---- end ----

    ORG $FFFC
    .word Reset
    .word Reset
