; MapGroupRoofs values; Roofs indexes
	const_def
	const ROOF_NEW_BARK  ; 0
	const ROOF_VIOLET    ; 1
	const ROOF_AZALEA    ; 2
	const ROOF_OLIVINE   ; 3
	const ROOF_GOLDENROD ; 4
DEF NUM_ROOFS EQU const_value

MapGroupRoofs:
; entries correspond to MAPGROUP_* constants
; values are indexes for Roofs (see below)
	table_width 1
	db -1             ;  0
	db -1   ;  1 (Olivine)
	db -1    ;  2 (Mahogany)
	db -1             ;  3
	db -1    ;  4 (Ecruteak)
	db -1    ;  5 (Blackthorn)
	db -1             ;  6
	db -1             ;  7
	db -1    ;  8 (Azalea)
	db -1    ;  9 (Lake of Rage)
	db -1    ; 10 (Violet)
	db -1 ; 11 (Goldenrod)
	db -1             ; 12
	db -1             ; 13
	db -1             ; 14
	db -1             ; 15
	db -1             ; 16
	db -1             ; 17
	db -1             ; 18
	db -1  ; 19 (Silver Cave)
	db -1             ; 20
	db -1             ; 21
	db -1   ; 22 (Cianwood)
	db -1             ; 23
	db -1  ; 24 (New Bark)
	db -1             ; 25
	db -1  ; 26 (Cherrygrove)
	assert_table_length NUM_MAP_GROUPS + 1

Roofs:
; entries correspond to ROOF_* constants
	table_width ROOF_LENGTH * LEN_2BPP_TILE
INCBIN "gfx/tilesets/roofs/new_bark.2bpp"
INCBIN "gfx/tilesets/roofs/violet.2bpp"
INCBIN "gfx/tilesets/roofs/azalea.2bpp"
INCBIN "gfx/tilesets/roofs/olivine.2bpp"
INCBIN "gfx/tilesets/roofs/goldenrod.2bpp"
	assert_table_length NUM_ROOFS
