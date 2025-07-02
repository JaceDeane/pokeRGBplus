VermilionDock_MapScripts:
	def_scene_scripts
	scene_script VermilionDockNoopScene,      SCENE_VERMILIONDOCK_NOOP
	scene_script VermilionDockSSAnneLeavesScene, SCENE_VERMILIONDOCK_SS_ANNE_LEAVES

	def_callbacks
	; callback MAPCALLBACK_NEWMAP, VermilionDockFlypointCallback

VermilionDockNoopScene:
	end

VermilionDockSSAnneLeavesScene:
	special FadeOutMusic
	turnobject PLAYER, DOWN
	pause 15
	
	; refreshscreen ; needed?
	callasm VermilionDockSSAnneLeavesScript
    ; ; --or--
	; sdefer VermilionDockSSAnneLeavesScript
	
	setmapscene VERMILION_CITY, SCENE_VERMILIONCITY_SS_ANNE_LEFT
	setscene SCENE_VERMILIONDOCK_NOOP
	applymovement PLAYER, VermilionDockLeaveMovement
	
	special FadeOutMusic
	warp VERMILION_CITY, 18, 31 ; temp (?)
	; warpcheck
	; Does something extras need to happen for 'warpcheck' to trigger?
	end

; VermilionDockFlypointCallback:
	; setflag ENGINE_FLYPOINT_VERMILION
	; endcallback

VermilionDockSSAnneLeavesScript:
	ld de, MUSIC_SURF
	call PlayMusic ; PlayMusic2 only plays once with no loop(?)
;(R/B)=
	;farcall LoadSmokeTileFourTimes
	; xor a
	; ld [wSpritePlayerStateData1ImageIndex], a
	ld c, 120
	call DelayFrames
	; ld b, $9c
	; call CopyScreenTileBufferToVRAM ; copies wTileMap to BGMap address 'b * $100'
	call CopyTilemapAtOnce

	ld a, 3
	ldh [hBGMapMode], a

;Replace tiles $08 and $09 with $0B
;OR -- replace block $06 with block $0f
	hlcoord 0, 10 ; X, Y
	ld bc, SCREEN_WIDTH * 6 ; width, height
	ld a, $14 ; water tile
	call ByteFill ; FillMemory
;Should also update new tiles with PAL_BG_WATER

;(R/B)=
	ld a, 1
	ldh [hBGMapUpdate], a ; hAutoBGTransferEnabled (R/B)hBGMapAddress?
	ld c, 3
	call DelayFrames ; call Delay3 does this and 'ld c, 3' in one
	xor a ; reset 'a'
	ldh [hBGMapUpdate], a ; hAutoBGTransferEnabled (R/B)
	; ld [wSSAnneSmokeDriftAmount], a
	ldh [rOBP1], a ; -- Should this be rOBPI or rOBPD ??
	ld a, 88
	; ld [wSSAnneSmokeX], a
	ld hl, wBGMapAnchor ; wMapViewVRAMPointer
	ld c, [hl]
	inc hl
	ld b, [hl]
	push bc
	push hl
	ld de, SFX_BOAT  ; ld a, SFX_SS_ANNE_HORN (R/B)
	call WaitPlaySFX ; call PlaySoundWaitForCurrent (R/B)
	; ld a, $ff
	; ld [wSpriteUpdatesEnabled], a ; wUpdateSpritesEnabled (R/B)
	ld d, 0 ; $0
	ld e, 8 ; $8
.shift_columns_up
	ld hl, 2 ; $2
	add hl, bc
	ld a, l
	ld [wBGMapAnchor], a ; wMapViewVRAMPointer (R/B)  
	ld a, h
	ld [wBGMapAnchor + 1], a ; wMapViewVRAMPointer (R/B)hBGMapAddress
	push hl
	push de
	call ScrollMapRight ; call ScheduleEastColumnRedraw (R/B)
	;call LoadOverworldTilemap;UpdateBGMapColumn ; UpdateOverworldMap.ScrollOverworldMapRight
	; call VermilionDock_EmitSmokePuff
	pop de
	ld b, $10
.smoke_puff_drift_loop
	; call VermilionDock_AnimSmokePuffDriftRight
	ld c, 8 ; $8
.delay_between_drifts
	call VermilionDock_SyncScrollWithLY
	dec c
	jr nz, .delay_between_drifts
	inc d
	dec b
	jr nz, .smoke_puff_drift_loop
	pop bc
	dec e
	jr nz, .shift_columns_up
	xor a
	ldh [rWY], a
	ldh [hWY], a
	call VermilionDock_EraseSSAnne
;I have no idea what the following lines do -- YET
	ld a, 144 ; $90 -- position in pixels
	ldh [hWY], a
	; ld a, $1
	; ld [wSpriteUpdatesEnabled], a ; wUpdateSpritesEnabled (R/B)
	pop hl
	pop bc
	ld [hl], b
	dec hl
	ld [hl], c
	;call LoadPlayerSpriteGraphics
	;ld hl, wNumberOfWarps
	dec [hl]
	ret

VermilionDock_AnimSmokePuffDriftRight:
	push bc
	push de
	ld hl, wShadowOAMSprite04XCoord
	; ld a, [wSSAnneSmokeDriftAmount]
	swap a
	ld c, a
	ld de, 4
.drift_loop
	inc [hl]
	inc [hl]
	add hl, de
	dec c
	jr nz, .drift_loop
	pop de
	pop bc
	ret

VermilionDock_EmitSmokePuff:
; new smoke puff above the S.S. Anne's front smokestack
	; ld a, [wSSAnneSmokeX]
	sub 16
	; ld [wSSAnneSmokeX], a
	ld c, a
	ld b, 100 ; Y
	; ld a, [wSSAnneSmokeDriftAmount]
	inc a
	; ld [wSSAnneSmokeDriftAmount], a
	ld a, $1
	ld de, VermilionDockOAMBlock
	; call WriteOAMBlock
	ret

VermilionDockOAMBlock: ; call FacingBoulderDust1/2
; tile ID, attributes
	db $fc, $10
	db $fd, $10
	db $fe, $10
	db $ff, $10

VermilionDock_SyncScrollWithLY:
	ld h, d
	ld l, $50
	call .sync_scroll_ly
	ld h, $0
	ld l, $80
.sync_scroll_ly
	ldh a, [rLY]
	cp l
	jr nz, .sync_scroll_ly
	ld a, h
	ldh [rSCX], a
.wait_for_ly_match
	ldh a, [rLY]
	cp h
	jr z, .wait_for_ly_match
	ret

VermilionDock_EraseSSAnne: ; similar to "MagnetTrain_InitLYOverrides" in magnet_train
; Fill the area the S.S. Anne occupies in BG map 0 with water tiles.
	
	; wBGMapBuffer && wBGMapBufferEnd == ds 2 * SCREEN_WIDTH && nil
	; wLYOverrides && wLYOverridesEnd == SCREEN_HEIGHT_PX && nil  ---- 'magnet_train'
	
	;wVermilionDockTileMapBuffer==5 * BG_MAP_WIDTH + SCREEN_WIDTH (52*5 = 260)
	;BG_MAP_WIDTH==32, SCREEN_WIDTH==20
	
	ld hl, wBGMapBuffer ; wVermilionDockTileMapBuffer
	ld bc, wBGMapBufferEnd - wBGMapBuffer ; wVermilionDockTileMapBufferEnd - wVermilionDockTileMapBuffer
	ld a, $14 ; water tile -- magnet train refs [wMagnetTrainInitPosition]
	call ByteFill ; FillMemory
;===new===
	; ld a, 1
	; ldh [rVBK], a ; switches VRAM bank (CGB only)

	; hlbgcoord 0, 10
	; ld bc, 6 * BG_MAP_WIDTH
	; ld a, PAL_BG_WATER
	; call ByteFill
	
	; ld a, 0
	; ldh [rVBK], a
;=========
	hlbgcoord 0, 10, vBGMap1
	ld de, wBGMapBuffer ; wVermilionDockTileMapBuffer
	lb bc, BANK(wBGMapBuffer), 12 ; BANK(wVermilionDockTileMapBuffer), 12
	call Request2bpp ; call CopyVideoData
	
;From "InitBattleDisplay.BlankBGMap":
	; ld hl, wDecompressScratch
	; ld bc, BG_MAP_WIDTH * BG_MAP_HEIGHT
	; ld a, " "
	; call ByteFill

	; ld de, wDecompressScratch
	; hlbgcoord 0, 0
	; lb bc, BANK(@), (BG_MAP_WIDTH * BG_MAP_HEIGHT) / LEN_2BPP_TILE
	; call Request2bpp
;=============

; Replace the blocks of the lower half of the ship with water blocks. This
; leaves the upper half alone, but that doesn't matter because replacing any of
; the blocks is unnecessary because the blocks the ship occupies are south of
; the player and won't be redrawn when the player automatically walks north and
; exits the map. This code could be removed without affecting anything.
	; hlowcoord 5, 2, VERMILION_DOCK_WIDTH
	; ld a, $0d ; water block
	; ld [hli], a
	; ld [hli], a
	; ld [hli], a
	; ld [hl], a
	ld de, SFX_BOAT  ; ld a, SFX_SS_ANNE_HORN (R/B)
	call PlaySFX     ; call PlaySound (R/B)
	ld c, 120
	call DelayFrames
	ret

SSAnneShipTilemap:
INCBIN "gfx/overworld/ss_anne_ship.tilemap"

; VermilionDockSailorAtGangwayScript:
	; faceplayer
	; opentext
	; checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	; iftrue VermilionDockAlreadyRodeScript
	; writetext VermilionDockDepartingText
	; waitbutton
	; closetext
	; turnobject VermilionDock_SAILOR1, DOWN
	; pause 10
	; playsound SFX_EXIT_BUILDING
	; disappear VermilionDock_SAILOR1
	; waitsfx
	; applymovement PLAYER, VermilionDockEnterFastShipMovement
	; playsound SFX_EXIT_BUILDING
	; special FadeOutToWhite
	; waitsfx
	; setevent EVENT_FAST_SHIP_PASSENGERS_EASTBOUND
	; clearevent EVENT_FAST_SHIP_PASSENGERS_WESTBOUND
	; ; clearevent EVENT_BEAT_POKEMANIAC_ETHAN
	; ; clearevent EVENT_BEAT_BURGLAR_COREY
	; ; clearevent EVENT_BEAT_BUG_CATCHER_KEN
	; ; clearevent EVENT_BEAT_GUITARIST_CLYDE
	; ; clearevent EVENT_BEAT_POKEFANM_JEREMY
	; ; clearevent EVENT_BEAT_POKEFANF_GEORGIA
	; ; clearevent EVENT_BEAT_SAILOR_KENNETH
	; ; clearevent EVENT_BEAT_TEACHER_SHIRLEY
	; ; clearevent EVENT_BEAT_SCHOOLBOY_NATE
	; ; clearevent EVENT_BEAT_SCHOOLBOY_RICKY
	; setevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	; appear VermilionDock_SAILOR1
	; setmapscene FAST_SHIP_1F, SCENE_FASTSHIP1F_ENTER_SHIP
	; warp FAST_SHIP_1F, 25, 1
	; end

; VermilionDockAlreadyRodeScript:
	; writetext VermilionDockCantBoardText
	; waitbutton
	; closetext
	; end

; VermilionDockWalkUpToShipScript:
	; turnobject VermilionDock_SAILOR2, RIGHT
	; checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	; iftrue .skip
	; checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	; iftrue .skip
	; turnobject PLAYER, LEFT
	; opentext
	; readvar VAR_WEEKDAY
	; ifequal MONDAY, .NextShipWednesday
	; ifequal TUESDAY, .NextShipWednesday
	; ifequal THURSDAY, .NextShipSunday
	; ifequal FRIDAY, .NextShipSunday
	; ifequal SATURDAY, .NextShipSunday
	; writetext VermilionDockAskBoardingText
	; yesorno
	; iffalse VermilionDockNotRidingMoveAwayScript
	; writetext VermilionDockAskTicketText
	; promptbutton
	; checkitem S_S_TICKET
	; iffalse .NoTicket
	; writetext VermilionDockSSTicketText
	; waitbutton
	; closetext
	; setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	; applymovement PLAYER, VermilionDockApproachFastShipMovement
	; sjump VermilionDockSailorAtGangwayScript

; .NoTicket:
	; writetext VermilionDockNoTicketText
	; waitbutton
	; closetext
	; applymovement PLAYER, VermilionDockCannotEnterFastShipMovement
	; end

; .NextShipWednesday:
	; writetext VermilionDockSailWednesdayText
	; waitbutton
	; closetext
	; applymovement PLAYER, VermilionDockCannotEnterFastShipMovement
	; end

; .NextShipSunday:
	; writetext VermilionDockSailSundayText
	; waitbutton
	; closetext
	; applymovement PLAYER, VermilionDockCannotEnterFastShipMovement
	; end

; .skip:
	; end

; VermilionDockNotRidingScript:
	; writetext VermilionDockComeAgainText
	; waitbutton
	; closetext
	; end

; VermilionDockNotRidingMoveAwayScript:
	; writetext VermilionDockComeAgainText
	; waitbutton
	; closetext
	; applymovement PLAYER, VermilionDockCannotEnterFastShipMovement
	; end

; VermilionDockSailorScript:
	; faceplayer
	; opentext
	; checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	; iftrue VermilionDockAlreadyRodeScript
	; readvar VAR_WEEKDAY
	; ifequal MONDAY, .NextShipWednesday
	; ifequal TUESDAY, .NextShipWednesday
	; ifequal THURSDAY, .NextShipSunday
	; ifequal FRIDAY, .NextShipSunday
	; ifequal SATURDAY, .NextShipSunday
	; writetext VermilionDockAskBoardingText
	; yesorno
	; iffalse VermilionDockNotRidingScript
	; writetext VermilionDockAskTicketText
	; promptbutton
	; checkitem S_S_TICKET
	; iffalse .NoTicket
	; writetext VermilionDockSSTicketText
	; waitbutton
	; closetext
	; setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	; applymovement PLAYER, VermilionDockApproachFastShipRightMovement
	; sjump VermilionDockSailorAtGangwayScript

; .NoTicket:
	; writetext VermilionDockNoTicketText
	; waitbutton
	; closetext
	; end

; .NextShipWednesday:
	; writetext VermilionDockSailWednesdayText
	; waitbutton
	; closetext
	; end

; .NextShipSunday:
	; writetext VermilionDockSailSundayText
	; waitbutton
	; closetext
	; end

; VermilionDockSuperNerdScript:
	; faceplayer
	; opentext
	; writetext VermilionDockSuperNerdText
	; waitbutton
	; closetext
	; end

; VermilionDockHiddenIron:
	; hiddenitem IRON, EVENT_VERMILION_PORT_HIDDEN_IRON

VermilionDockLeaveMovement:
	step UP
	step UP
	step_end

; VermilionDockDepartingText:
	; text "We're departing"
	; line "soon. Please get"
	; cont "on board."
	; done

; VermilionDockCantBoardText:
	; text "Sorry. You can't"
	; line "board now."
	; done

; VermilionDockAskBoardingText:
	; text "Welcome to FAST"
	; line "SHIP S.S.AQUA."

	; para "Will you be board-"
	; line "ing today?"
	; done

; VermilionDockAskTicketText:
	; text "May I see your"
	; line "S.S.TICKET?"
	; done

; VermilionDockComeAgainText:
	; text "We hope to see you"
	; line "again!"
	; done

; VermilionDockSSTicketText:
	; text "<PLAYER> flashed"
	; line "the S.S.TICKET."

	; para "That's it."
	; line "Thank you!"
	; done

; VermilionDockNoTicketText:
	; text "<PLAYER> tried to"
	; line "show the S.S."
	; cont "TICKET…"

	; para "…But no TICKET!"

	; para "Sorry!"
	; line "You may board only"

	; para "if you have an"
	; line "S.S.TICKET."
	; done

; VermilionDockSailWednesdayText:
	; text "The FAST SHIP will"
	; line "sail on Wednesday."
	; done

; VermilionDockSailSundayText:
	; text "The FAST SHIP will"
	; line "sail next Sunday."
	; done

; VermilionDockSuperNerdText:
	; text "You came from"
	; line "JOHTO?"

	; para "I hear many rare"
	; line "#MON live over"
	; cont "there."
	; done

VermilionDock_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 14,  4, VERMILION_CITY, 6
	warp_event 14,  6, SS_ANNE_1F, 1

	def_coord_events
	; coord_event  7, 11, SCENE_VERMILIONDOCK_ASK_ENTER_SHIP, VermilionDockWalkUpToShipScript

	def_bg_events
	; bg_event 16, 13, BGEVENT_ITEM, VermilionDockHiddenIron

	def_object_events
	; object_event  7, 17, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionDockSailorAtGangwayScript, EVENT_VERMILION_PORT_SAILOR_AT_GANGWAY
	; object_event  6, 11, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionDockSailorScript, -1
	; object_event 11, 11, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VermilionDockSuperNerdScript, -1
