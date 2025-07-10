; TrainerCard.Jumptable indexes
	const_def
	const TRAINERCARDSTATE_PAGE1_LOADGFX ; 0
	const TRAINERCARDSTATE_PAGE1_JOYPAD  ; 1
	const TRAINERCARDSTATE_PAGE2_LOADGFX ; 2
	const TRAINERCARDSTATE_PAGE2_JOYPAD  ; 3
	const TRAINERCARDSTATE_PAGE3_LOADGFX ; 4
	const TRAINERCARDSTATE_PAGE3_JOYPAD  ; 5
	const TRAINERCARDSTATE_QUIT          ; 6

TrainerCard:
	ld a, [wStateFlags]
	push af
	xor a
	ld [wStateFlags], a
	ld hl, wOptions
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	call .InitRAM
.loop
	call UpdateTime
	call JoyTextDelay
	ld a, [wJumptableIndex]
	bit 7, a
	jr nz, .quit
	ldh a, [hJoyLast]
	and B_BUTTON
	jr nz, .quit
	call .RunJumptable
	call DelayFrame
	jr .loop

.quit
	pop af
	ld [wOptions], a
	pop af
	ld [wStateFlags], a
	ret

.InitRAM:
	call ClearBGPalettes
	call ClearSprites
	call ClearTilemap
	call DisableLCD

	farcall GetCardPic ; Loads the Player sprite and border GFX into vTiles

	ld hl, CardStatusGFX
	ld de, vTiles2 tile $2F;$29 ; Start loading GFX
	ld bc, 76 tiles;86 tiles ; Number of tiles
	ld a, BANK(CardStatusGFX)
	call FarCopyBytes

	call TrainerCard_PrintTopHalfOfCard

	hlcoord 0, 9;2, 8 ; Coords for Card_Status
	ld d, 8;6 ; Tiles Length
	call TrainerCard_InitBorder

	call EnableLCD
	call WaitBGMap
	ld b, SCGB_TRAINER_CARD
	call GetSGBLayout
	call SetDefaultBGPAndOBP
	call WaitBGMap
	ld hl, wJumptableIndex
	xor a ; TRAINERCARDSTATE_PAGE1_LOADGFX
	ld [hli], a ; wJumptableIndex
	ld [hli], a ; wTrainerCardBadgeFrameCounter
	ld [hli], a ; wTrainerCardBadgeTileID
	ld [hl], a  ; wTrainerCardBadgeAttributes
	ret

.RunJumptable:
	jumptable .Jumptable, wJumptableIndex

.Jumptable:
; entries correspond to TRAINERCARDSTATE_* constants
	dw TrainerCard_Page1_LoadGFX
	dw TrainerCard_Page1_Joypad
	dw TrainerCard_Page2_LoadGFX
	dw TrainerCard_Page2_Joypad
	dw TrainerCard_Page3_LoadGFX
	dw TrainerCard_Page3_Joypad
	dw TrainerCard_Quit

TrainerCard_IncrementJumptable:
	ld hl, wJumptableIndex
	inc [hl]
	ret

TrainerCard_Quit:
	ld hl, wJumptableIndex
	set 7, [hl]
	ret

TrainerCard_Page1_LoadGFX:
	call ClearSprites
	hlcoord 0, 9;0, 8 ; Coords for Card_Status
	ld d, 8;6 ; Tiles Length
	call TrainerCard_InitBorder
	call WaitBGMap
	ld de, CardStatusGFX
	ld hl, vTiles2 tile $2F;$29 ; Start loading GFX
	lb bc, BANK(CardStatusGFX), 76;86 ; Number of tiles
	call Request2bpp
	call TrainerCard_Page1_PrintDexCaught_GameTime
	call TrainerCard_IncrementJumptable
	ret

TrainerCard_Page1_Joypad:
	call TrainerCard_Page1_PrintGameTime
	ld hl, hJoyLast
	ld a, [hl]
	and D_RIGHT | A_BUTTON
	jr nz, .pressed_right_a
	ret

.pressed_right_a
	ld a, TRAINERCARDSTATE_PAGE2_LOADGFX
	ld [wJumptableIndex], a
	ret

.KantoBadgeCheck: ; unreferenced
	ld a, [wKantoBadges]
	and a
	ret z
	ld a, TRAINERCARDSTATE_PAGE3_LOADGFX
	ld [wJumptableIndex], a
	ret

TrainerCard_Page2_LoadGFX:
	call ClearSprites
	hlcoord 0, 9;0, 8 ; Coords for Card_Status
	ld d, 8;6 ; Tiles Length
	call TrainerCard_InitBorder
	call WaitBGMap
	ld de, LeaderGFX
	ld hl, vTiles2 tile $2F;$29 ; Start loading GFX
	lb bc, BANK(LeaderGFX), 76;86 ; Number of tiles
	call Request2bpp
	ld de, CardBadgesGFX
	ld hl, vTiles2 tile $67;$79 ; Start loading GFX
	lb bc, BANK(CardBadgesGFX), 8 ; Number of tiles
	call Request2bpp
	ld de, BadgeGFX
	ld hl, vTiles0 tile $00
	lb bc, BANK(BadgeGFX), 44
	call Request2bpp
	
	ld a, [wKantoBadges]
	bit EARTHBADGE, a
	jr z, .done ; Only shows silhouette if unobtained
	
	ld de, GiovanniGFX
	ld hl, vTiles2 tile $61 ; Start loading GFX
	lb bc, BANK(GiovanniGFX), 6 ; Number of tiles
	call Request2bpp
.done
	call TrainerCard_Page2_3_InitObjectsAndStrings
	call TrainerCard_IncrementJumptable
	ret

TrainerCard_Page2_Joypad:
	ld hl, TrainerCard_KantoBadgesOAM
	call TrainerCard_Page2_3_AnimateBadges
	ld hl, hJoyLast
	ld a, [hl]
	and A_BUTTON
	jr nz, .Quit
	ld a, [hl]
	and D_LEFT
	jr nz, .d_left
	ret

.d_left
	ld a, TRAINERCARDSTATE_PAGE1_LOADGFX
	ld [wJumptableIndex], a
	ret

.KantoBadgeCheck: ; unreferenced
	ld a, [wKantoBadges]
	and a
	ret z
	ld a, TRAINERCARDSTATE_PAGE3_LOADGFX
	ld [wJumptableIndex], a
	ret

.Quit:
	ld a, TRAINERCARDSTATE_QUIT
	ld [wJumptableIndex], a
	ret

TrainerCard_Page3_LoadGFX:
	call ClearSprites
	hlcoord 0, 9
	ld d, 8
	call TrainerCard_InitBorder
	call WaitBGMap
	ld de, LeaderGFX
	ld hl, vTiles2 tile $2F;$29 ; Start loading GFX
	lb bc, BANK(LeaderGFX), 76;86 ; Number of tiles
	call Request2bpp
	ld de, CardBadgesGFX
	ld hl, vTiles2 tile $67;$79 ; Start loading GFX
	lb bc, BANK(CardBadgesGFX), 8 ; Number of tiles
	call Request2bpp
	ld de, BadgeGFX
	ld hl, vTiles0 tile $00
	lb bc, BANK(BadgeGFX), 44
	call Request2bpp
	call TrainerCard_Page2_3_InitObjectsAndStrings
	call TrainerCard_IncrementJumptable
	ret

TrainerCard_Page3_Joypad:
	ld hl, TrainerCard_KantoBadgesOAM
	call TrainerCard_Page2_3_AnimateBadges
	ld hl, hJoyLast
	ld a, [hl]
	and D_LEFT
	jr nz, .left
	ld a, [hl]
	and D_RIGHT
	jr nz, .right
	ret

.left
	ld a, TRAINERCARDSTATE_PAGE2_LOADGFX
	ld [wJumptableIndex], a
	ret

.right
	ld a, TRAINERCARDSTATE_PAGE1_LOADGFX
	ld [wJumptableIndex], a
	ret

TrainerCard_PrintTopHalfOfCard:
	hlcoord 0, 0
	ld d, 5
	call TrainerCard_InitBorder
	hlcoord 2, 2
	ld de, .Name_Money
	call PlaceString
	hlcoord 2, 4
	ld de, .ID_No
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 7, 2
	ld de, wPlayerName
	call PlaceString
	hlcoord 5, 4
	ld de, wPlayerID
	lb bc, PRINTNUM_LEADINGZEROS | 2, 5
	call PrintNum
	hlcoord 7, 6
	ld de, wMoney
	lb bc, PRINTNUM_MONEY | 3, 6
	call PrintNum
	hlcoord 1, 3
	ld de, .HorizontalDivider
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 14, 1
	lb bc, 5, 7
	xor a
	ldh [hGraphicStartTile], a
	predef PlaceGraphic
	ret

.Name_Money:
	db   "NAME/"
	next ""
	next "MONEY@"

.ID_No:
	db $27, $28, -1 ; ID NO

.HorizontalDivider:
	db $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $25, $26, -1 ; ____________>

TrainerCard_Page1_PrintDexCaught_GameTime:
	hlcoord 2, 11;10
	ld de, .Dex_PlayTime
	call PlaceString
	hlcoord 10, 16;15
	ld de, .Badges
	call PlaceString
	ld hl, wPokedexCaught
	ld b, wEndPokedexCaught - wPokedexCaught
	call CountSetBits
	ld de, wNumSetBits
	hlcoord 15, 11;10 ; Coords
	lb bc, 1, 3 ; Y-right, X-down
	call PrintNum
	call TrainerCard_Page1_PrintGameTime
	hlcoord 6, 9;2, 8
	ld de, .StatusTilemap
	call TrainerCardSetup_PlaceTilemapString
	ld a, [wStatusFlags]
	bit STATUSFLAGS_POKEDEX_F, a
	ret nz ; Draws a blank box over the PokeDex field if unobtained
	hlcoord 1, 10;9 ; Upper-left Text Box
	lb bc, 2, 17 ; Y-right, X-down
	call ClearBox
	ret

.Dex_PlayTime:
	db   "#DEX"
	next "PLAY TIME@"

.Unused: ; unreferenced
	db "@"

.Badges:
	db "  BADGES▶@"

.StatusTilemap:
	db $2F, $30, $31, $32, $33, $34, $35, $36, -1;$29, $2a, $2b, $2c, $2d, -1

TrainerCard_Page2_3_InitObjectsAndStrings:
	hlcoord 6, 9;2, 8
	ld de, .BadgesTilemap
	call TrainerCardSetup_PlaceTilemapString
	hlcoord 2, 10
	ld a, $2F;$29
	ld c, 4
.loop
	call TrainerCard_Page2_3_PlaceLeadersFaces
rept 4
	inc hl
endr
	dec c
	jr nz, .loop
	hlcoord 2, 13
	ld a, $4B;$51
	ld c, 4
.loop2
	call TrainerCard_Page2_3_PlaceLeadersFaces
rept 4
	inc hl
endr
	dec c
	jr nz, .loop2
	xor a
	ld [wTrainerCardBadgeFrameCounter], a
	ld hl, TrainerCard_KantoBadgesOAM
	call TrainerCard_Page2_3_OAMUpdate
	ret

.BadgesTilemap:
	db $67, $68, $69, $6a, $6b, $6c, $6d, $6e, -1;$79, $7a, $7b, $7c, $7d, -1 ; "BADGES"

TrainerCardSetup_PlaceTilemapString:
.loop
	ld a, [de]
	cp -1
	ret z
	ld [hli], a
	inc de
	jr .loop

TrainerCard_InitBorder:
	ld a, $23
	ld [hli], a
rept SCREEN_WIDTH - 2
	ld a, $24
	ld [hli], a
endr
	ld a, $29
	ld [hli], a
rept 7
	ld a, $2A
	ld [hli], a
	ld a, " "
rept SCREEN_WIDTH - 2
	ld [hli], a
endr
	ld a, $2B
	ld [hli], a
endr
	ld a, $2C
	ld [hli], a
rept SCREEN_WIDTH - 2
	ld a, $2D
	ld [hli], a
endr
	ld a, $2E
	ld [hli], a
	ret

TrainerCard_Page2_3_PlaceLeadersFaces:
	push de
	push hl
	ld [hli], a
	inc a
	ld de, SCREEN_WIDTH; - 3
	add hl, de
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld de, SCREEN_WIDTH - 3
	add hl, de
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	ld [hli], a
	inc a
	pop hl
	pop de
	ret

TrainerCard_Page1_PrintGameTime:
	hlcoord 11, 13;12
	ld de, wGameTimeHours
	lb bc, 2, 4
	call PrintNum
	inc hl
	ld de, wGameTimeMinutes
	lb bc, PRINTNUM_LEADINGZEROS | 1, 2
	call PrintNum
	ldh a, [hVBlankCounter]
	and $1f
	ret nz
	hlcoord 15, 13;12
	ld a, [hl]
	xor " " ^ $37;$2e ; alternate between space and small colon ($2e) tiles
	ld [hl], a
	ret

TrainerCard_Page2_3_AnimateBadges:
	ldh a, [hVBlankCounter]
	and %111
	ret nz
	ld a, [wTrainerCardBadgeFrameCounter]
	inc a
	and %111
	ld [wTrainerCardBadgeFrameCounter], a
	jr TrainerCard_Page2_3_OAMUpdate

TrainerCard_Page2_3_OAMUpdate:
; copy flag array pointer
	ld a, [hli]
	ld e, a
	ld a, [hli]
; get flag array
	ld d, a
	ld a, [de]
	ld c, a
	ld de, wShadowOAMSprite00
	ld b, NUM_KANTO_BADGES
.loop
	srl c
	push bc
	jr nc, .skip_badge
	push hl
	ld a, [hli] ; y
	ld b, a
	ld a, [hli] ; x
	ld c, a
	ld a, [hli] ; pal
	ld [wTrainerCardBadgeAttributes], a
	ld a, [wTrainerCardBadgeFrameCounter]
	add l
	ld l, a
	ld a, 0
	adc h
	ld h, a
	ld a, [hl]
	ld [wTrainerCardBadgeTileID], a
	call .PrepOAM
	pop hl
.skip_badge
	ld bc, $b ; 3 + 2 * 4
	add hl, bc
	pop bc
	dec b
	jr nz, .loop
	ret

.PrepOAM:
	ld a, [wTrainerCardBadgeTileID]
	and 1 << 7
	jr nz, .xflip
	ld hl, .facing1
	jr .loop2

.xflip
	ld hl, .facing2
.loop2
	ld a, [hli]
	cp -1
	ret z
	add b
	ld [de], a ; y
	inc de

	ld a, [hli]
	add c
	ld [de], a ; x
	inc de

	ld a, [wTrainerCardBadgeTileID]
	and ~(1 << 7)
	add [hl]
	ld [de], a ; tile id
	inc hl
	inc de

	ld a, [wTrainerCardBadgeAttributes]
	add [hl]
	ld [de], a ; attributes
	inc hl
	inc de
	jr .loop2

.facing1
	dbsprite  0,  0,  0,  0, $00, 0
	dbsprite  1,  0,  0,  0, $01, 0
	dbsprite  0,  1,  0,  0, $02, 0
	dbsprite  1,  1,  0,  0, $03, 0
	db -1

.facing2
	dbsprite  0,  0,  0,  0, $01, 0 | X_FLIP
	dbsprite  1,  0,  0,  0, $00, 0 | X_FLIP
	dbsprite  0,  1,  0,  0, $03, 0 | X_FLIP
	dbsprite  1,  1,  0,  0, $02, 0 | X_FLIP
	db -1

TrainerCard_KantoBadgesOAM:
; Template OAM data for each badge on the trainer card.
; Format:
	; y, x, palette
	; cycle 1: face tile, in1 tile, in2 tile, in3 tile
	; cycle 2: face tile, in1 tile, in2 tile, in3 tile

	dw wKantoBadges

	; Boulderbadge
	db $68, $18, 0
	db $00, $20, $24, $20 | (1 << 7)
	db $00, $20, $24, $20 | (1 << 7)

	; Cascadebadge
	db $68, $38, 0
	db $04, $20, $24, $20 | (1 << 7)
	db $04, $20, $24, $20 | (1 << 7)

	; Thunderbadge
	db $68, $58, 0
	db $08, $20, $24, $20 | (1 << 7)
	db $08, $20, $24, $20 | (1 << 7)

	; Rainbowbadge
	db $68, $78, 0
	db $0c, $20, $24, $20 | (1 << 7)
	db $0c, $20, $24, $20 | (1 << 7)

	; Marshbadge
	db $80, $38, 0
	db $10, $20, $24, $20 | (1 << 7)
	db $10, $20, $24, $20 | (1 << 7)

	; Soulbadge
	db $80, $18, 0
	db $14, $20, $24, $20 | (1 << 7)
	db $14, $20, $24, $20 | (1 << 7)

	; Volcanobadge
	db $80, $58, 0
	db $18, $20, $24, $20 | (1 << 7)
	db $18, $20, $24, $20 | (1 << 7)

	; Earthbadge
	; X-flips on alternate cycles.
	db $80, $78, 0
	db $1c,            $20, $24, $20 | (1 << 7)
	db $1c | (1 << 7), $20, $24, $20 | (1 << 7)

CardStatusGFX: INCBIN "gfx/trainer_card/card_status.2bpp"
CardBadgesGFX: INCBIN "gfx/trainer_card/card_badges.2bpp"

LeaderGFX:   INCBIN "gfx/trainer_card/leaders.2bpp"
GiovanniGFX: INCBIN "gfx/trainer_card/giovanni.2bpp"
BadgeGFX:    INCBIN "gfx/trainer_card/badges.2bpp"

CardRightCornerGFX: INCBIN "gfx/trainer_card/card_right_corner.2bpp"
