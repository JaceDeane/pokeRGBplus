; these blocks all use COLL_CUT_TREE in one quadrant
CutTreeBlockPointers:
; tileset, block list pointer
	dbw TILESET_JOHTO,        .johto
	dbw TILESET_JOHTO_MODERN, .johto_modern
	dbw TILESET_KANTO,        .kanto
	dbw TILESET_PARK,         .park
	dbw TILESET_FOREST,       .forest
	db -1 ; end

.johto:
; facing block, replacement block, animation
	db $03, $02, 1 ; grass
	db $5b, $3c, 0 ; tree
	db $5f, $3d, 0 ; tree
	db $63, $3f, 0 ; tree
	db $67, $3e, 0 ; tree
	db -1 ; end

.johto_modern:
; facing block, replacement block, animation
	db $03, $02, 1 ; grass
	db -1 ; end

.kanto:
; facing block, replacement block, animation
	db $0b, $0a, 1 ; grass
	db $32, $6d, 0 ; tree
	db $33, $6c, 0 ; tree
	db $34, $6f, 0 ; tree
	db $35, $4c, 0 ; tree
	db $60, $6e, 0 ; tree
	db $83, $8a, 0 ; tree
	db -1 ; end

.park:
; facing block, replacement block, animation
	db $13, $03, 1 ; grass
	db $03, $04, 1 ; grass
	db -1 ; end

.forest:
; facing block, replacement block, animation
	;db $0f, $17, 0
	db $01, $1b, 1 ; allows grass to be cut
	db $04, $35, 1 ; grass/stump
	db $05, $39, 1 ; grass/stump
	db $06, $37, 1 ; grass/stump
	db $07, $3b, 1 ; grass/stump
	db $08, $48, 1 ; grass/stump
	db $09, $49, 1 ; grass/stump
	db $0a, $4c, 1 ; grass/stump
	db $0b, $4d, 1 ; grass/stump
	db $0c, $36, 1 ; grass/stump
	db $0d, $34, 1 ; grass/stump
	db $0e, $3a, 1 ; grass/stump
	db $0f, $38, 1 ; grass/stump
	db $10, $6c, 1 ; grass/stump
	db $11, $6d, 1 ; grass/stump
	db $12, $70, 1 ; grass/stump
	db $13, $71, 1 ; grass/stump
	db $16, $21, 1 ; grass/sign
	db $22, $1b, 1 ; grass/stump
	db $23, $1b, 1 ; grass/stump
	db $24, $1b, 1 ; grass/stump
	db $25, $1b, 1 ; grass/stump
	db $30, $74, 1 ; grass/stump
	db $32, $75, 1 ; grass/stump
	db -1 ; end


; these blocks all use COLL_WHIRLPOOL in one quadrant
WhirlpoolBlockPointers:
	dbw TILESET_JOHTO, .johto
	db -1 ; end

.johto:
; facing block, replacement block, animation
	db $07, $36, 0
	db -1 ; end
