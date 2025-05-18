_TitleScreen:
	call ClearBGPalettes
	call ClearSprites
	call ClearTilemap

; Turn BG Map update off
	xor a
	ldh [hBGMapMode], a

; Reset timing variables
	ld hl, wJumptableIndex
	ld [hli], a ; wJumptableIndex
	ld [hli], a ; wTitleScreenSelectedOption
	ld [hli], a ; wTitleScreenTimer
	ld [hl], a  ; wTitleScreenTimer + 1

; Turn LCD off
	call DisableLCD

; VRAM bank 1
	ld a, 1
	ldh [rVBK], a

; Decompress running Suicune gfx
	; ld hl, TitleSuicuneGFX
	; ld de, vTiles1
	; call Decompress

; Load title Pokémon
IF DEF(_RED)
	ld a, CHARMANDER ; which Pokemon to show first on the title screen
ENDC
IF DEF(_BLUE)
	ld a, SQUIRTLE ; which Pokemon to show first on the title screen
ENDC
	ld [wTitleMonSpecies], a
	call LoadTitleMonSprite

; Clear screen palettes
	hlbgcoord 0, 0
	ld bc, 20 * BG_MAP_WIDTH
	xor a
	call ByteFill

; Fill tile palettes:

; BG Map 1:

; line 0 (copyright)
	; hlbgcoord 0, 0, vBGMap1
	; ld bc, BG_MAP_WIDTH
	; ld a, 7 ; palette
	; call ByteFill

; BG Map 0:

; Apply logo palette:

; lines 2-8
	hlbgcoord 0, 2
	ld bc, 7 * BG_MAP_WIDTH ; 7 rows
	ld a, 2
	call ByteFill
; line 9 (Version text palette)
	hlbgcoord 5, 9
	ld bc, 11 ; length in tiles
IF DEF(_RED)
	ld a, 1
ELIF DEF(_BLUE)
	ld a, 3
ENDC
	call ByteFill
; lines 10-18
	hlbgcoord 0, 10
	ld bc, 8 * BG_MAP_WIDTH ; 8 rows
	ld a, 7
	call ByteFill

; Suicune gfx
	; hlbgcoord 0, 12
	; ld bc, 6 * BG_MAP_WIDTH ; the rest of the screen
	; ld a, 0 | VRAM_BANK_1
	; call ByteFill

; Back to VRAM bank 0
	ld a, 0
	ldh [rVBK], a

; Decompress logo
	ld hl, TitleLogoGFX
	ld de, vTiles1
	call Decompress

; Decompress background crystal
	ld hl, TitleRedGFX
	ld de, vTiles0
	call Decompress

	; ld hl, TitleRedGFX
	; ld de, $24
	; call Decompress

; Clear screen tiles
	hlbgcoord 0, 0
	ld bc, 64 * BG_MAP_WIDTH
	ld a, " "
	call ByteFill

; Draw Pokemon logo
	hlcoord 0, 2
	lb bc, 7, 20
	ld d, $80
	ld e, 20
	call DrawTitleGraphic

; Draw copyright text
	hlbgcoord 2, 0, vBGMap1
	lb bc, 1, 16
	ld d, $c
	ld e, 16
	call DrawTitleGraphic

; Decompress version logo
IF DEF(_RED)
	ld hl, TitleRedVersionGFX
ELIF DEF(_BLUE)
	ld hl, TitleBlueVersionGFX
ENDC
	ld de, vTiles1 tile $9c ; vTiles location start address
	call Decompress

; Draw version logo
	hlcoord 6, 9
	lb bc, 1, 9
	ld d, $1c ; Tile number to start loading
	ld e, 9
	call DrawTitleGraphic

; Initialize running Suicune?
	; ld d, $0
	; call LoadSuicuneFrame

; Initialize player character (instead of background crystal)
	call DrawPlayerCharacter ; was "InitializeBackground"

; initialise the pokeball in the player's hand
	ld hl, wShadowOAMSprite10
	ld a, $0A ;$74 -- Correct vTiles location
	ld [hl], a

; Update palette colors
	ldh a, [rSVBK]
	push af
	ld a, BANK(wBGPals1)
	ldh [rSVBK], a

	ld hl, TitleScreenPalettes
	ld de, wBGPals1
	ld bc, 16 palettes
	call CopyBytes

	ld hl, TitleScreenPalettes
	ld de, wBGPals2
	ld bc, 16 palettes
	call CopyBytes

	pop af
	ldh [rSVBK], a

; LY/SCX trickery starts here

	ldh a, [rSVBK]
	push af
	ld a, BANK(wLYOverrides)
	ldh [rSVBK], a

; Make alternating lines come in from opposite sides

; (This part is actually totally pointless, you can't
;  see anything until these values are overwritten!)

	ld b, 80 / 2 ; alternate for 80 lines
	ld hl, wLYOverrides
.loop
; $00 is the middle position
	ld [hl], +112 ; coming from the left
	inc hl
	ld [hl], -112 ; coming from the right
	inc hl
	dec b
	jr nz, .loop

; Make sure the rest of the buffer is empty
	ld hl, wLYOverrides + 80
	xor a
	ld bc, wLYOverridesEnd - (wLYOverrides + 80)
	call ByteFill

; Let LCD Stat know we're messing around with SCX
	ld a, LOW(rSCX)
	ldh [hLCDCPointer], a

	pop af
	ldh [rSVBK], a

; Reset audio
	call ChannelsOff
	call EnableLCD

; Set sprite size to 8x16
	;ldh a, [rLCDC]
	;set rLCDC_SPRITE_SIZE, a
	ldh [rLCDC], a

	ld a, +112
	ldh [hSCX], a
	ld a, 8
	ldh [hSCY], a
	ld a, 7
	ldh [hWX], a
	ld a, -112
	ldh [hWY], a

	ld a, TRUE
	ldh [hCGBPalUpdate], a

; Update BG Map 0 (bank 0)
	ldh [hBGMapMode], a

	; xor a
	; ld [wSuicuneFrame], a

; Play starting sound effect
	call SFXChannelsOff
	ld de, SFX_TITLE_SCREEN_ENTRANCE
	call PlaySFX

	ret

SuicuneFrameIterator:
	ld hl, wSuicuneFrame
	ld a, [hl]
	ld c, a
	inc [hl]

; Only do this once every eight frames
	and %111
	ret nz

	ld a, c
	and %11000
	sla a
	swap a
	ld e, a
	ld d, 0
	ld hl, .Frames
	add hl, de
	ld d, [hl]
	xor a
	ldh [hBGMapMode], a
	call LoadSuicuneFrame
	ld a, $1
	ldh [hBGMapMode], a
	ld a, $3
	ldh [hBGMapThird], a
	ret

.Frames:
	db $80 ; vTiles3 tile $80
	db $88 ; vTiles3 tile $88
	db $00 ; vTiles5 tile $00
	db $08 ; vTiles5 tile $08

LoadSuicuneFrame:
	hlcoord 6, 12
	ld b, 6
.bgrows
	ld c, 8
.col
	ld a, d
	ld [hli], a
	inc d
	dec c
	jr nz, .col
	ld a, SCREEN_WIDTH - 8
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld a, 8
	add d
	ld d, a
	dec b
	jr nz, .bgrows
	ret

DrawTitleGraphic:
; input:
;   hl: draw location
;   b: height
;   c: width
;   d: tile to start drawing from
;   e: number of tiles to advance for each bgrows
.bgrows
	push de
	push bc
	push hl
.col
	ld a, d
	ld [hli], a
	inc d
	dec c
	jr nz, .col
	pop hl
	ld bc, SCREEN_WIDTH
	add hl, bc
	pop bc
	pop de
	ld a, e
	add d
	ld d, a
	dec b
	jr nz, .bgrows
	ret

DrawPlayerCharacter: ; InitializeBackground:
	ld hl, wShadowOAMSprite00
	ld d, $52 ; initial Y coord
	ld e, $0 ; number of tiles to advance for each bgrows...?
	ld c, 7 ; number of times to repeat loading the 'tilemap width' integer
.loop
	push bc
	call .InitColumn
	pop bc
	ld a, $8 ;10
	add d
	ld d, a
	dec c
	jr nz, .loop
	ret

.InitColumn:
	ld c, $5 ; Tilemap width
	ld b, $54 ; X-location(from left+16)
.loop2 ; .innerLoop
	ld a, d
	ld [hli], a ; y
	ld a, b
	ld [hli], a ; x
	add $8
	ld b, a
	ld a, e 
	ld [hli], a ; tile id
	inc e
	;inc e ; skip loading a tile
	ld a, 0 ; Palette ID/FX (adding "| PRIORITY" means OAM is affected by tile priority)
	ld [hli], a ; attributes
	dec c
	jr nz, .loop2
	ret
	
LoadTitleMonSprite:
	ld [wCurPartySpecies], a
	ld [wCurSpecies], a
	; hlcoord 5, 10 ; X,Y Coords
	call GetBaseData ; call GetMonHeader
	ld de, vTiles1
	predef GetMonFrontpic ; jp LoadFrontSpriteByMonIndex
	ret

AnimateTitleRed:
; Move the title screen crystal downward until it's fully visible

; Stop at y=80 (6)
; y is really from the bottom of the sprite, which is two tiles high
	ld hl, wShadowOAMSprite00YCoord
	ld a, [hl]
	cp 80 + 2 * TILE_WIDTH ; Stop position
	ret z

; Move all 30 parts of the crystal down by 2
	ld c, 35 ; OAM object total
.loop
	ld a, [hl]
	add 2
	ld [hli], a ; y
rept SPRITEOAMSTRUCT_LENGTH - 1
	inc hl
endr
	dec c
	jr nz, .loop

	ret

TitleLogoGFX:
INCBIN "gfx/title/logo.2bpp.lz"

TitleRedVersionGFX:
INCBIN "gfx/title/red_version.2bpp.lz"

TitleBlueVersionGFX:
INCBIN "gfx/title/blue_version.2bpp.lz"

TitleRedGFX:
INCBIN "gfx/title/red_title.2bpp.lz"

TitleRedMaskGFX:
INCBIN "gfx/title/red_title_mask.2bpp.lz"

TitleScreenPalettes:
INCLUDE "gfx/title/title.pal"

; INCLUDE "data/pokemon/title_mons.asm"
