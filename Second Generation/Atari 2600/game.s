;
;   Keepie-Uppie
;

    PROCESSOR 6502
    INCLUDE "include/vcs.h"
    INCLUDE "include/macro.h"

    SEG
    ORG $F000

Reset
    ldx #0
    lda #0

Clear
    sta 0,X
    inx
    bne Clear


; --- Player sprite ---
Player
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
PlayerColor
	.byte %00 ;
	.byte %12 ;
	.byte %12 ;
	.byte %12 ;
	.byte %70 ;
	.byte %70 ;
	.byte %18 ;
	.byte %18 ;
	.byte %18 ;
	.byte %18 ;
	.byte %B2 ;
	.byte %12 ;
	.byte %12 ;
	.byte %12 ;
	.byte %10 ;
	.byte %00 ;
; ---- end ----
