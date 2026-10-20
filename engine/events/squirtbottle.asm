_Squirtbottle:
	ld hl, .SquirtbottleScript
	call QueueScript
	ld a, $1
	ld [wItemEffectSucceeded], a
	ret

.SquirtbottleScript:
	refreshmap
	special UpdateTimePals
	callasm .CheckCanUseSquirtbottle
	iffalse .SquirtbottleNothingScript
	farsjump WateredWeirdTreeScript

.SquirtbottleNothingScript:
	jumptext .SquirtbottleNothingText

.SquirtbottleNothingText:
	text_far _SquirtbottleNothingText
	text_end

.CheckCanUseSquirtbottle:
	ld a, [wMapGroup]
	cp GROUP_ROUTE_36
	jr nz, .nope

	ld a, [wMapNumber]
	cp MAP_ROUTE_36
	jr nz, .nope

	farcall GetFacingObject
	jr c, .nope

	ld a, d
	cp SPRITEMOVEDATA_SUDOWOODO
	jr nz, .nope

	ld a, 1
	ld [wScriptVar], a
	ret

.nope
	xor a
	ld [wScriptVar], a
	ret

_PokeFlute:
	ld hl, .PokeFluteScript
	call QueueScript
	ld a, $1
	ld [wItemEffectSucceeded], a
	ret

.PokeFluteScript:
	refreshmap
	special UpdateTimePals
	callasm .UsePokeFlute
	iffalse .PokeFluteNothingScript
	opentext
	musicfadeout MUSIC_NONE, 1
	writetext .PlayedTheFluteText
	waitsfx
	playsound SFX_POKEFLUTE
	waitsfx
	closetext
	; setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	ifequal 1, .Route12
	ifequal 2, .Route16
.Route12
	farsjump PokeFluteSnorlaxRoute12 ; launch map-specific handler
.Route16
	farsjump PokeFluteSnorlaxRoute16

.PokeFluteNothingScript:
	jumptext .PokeFluteNothingText

.PokeFluteNothingText:
	text_far _PlayedFluteText ;Had no effect
	text_end

.PlayedTheFluteText:
	text_far Text_PlayedPokeFlute ;Had no effect
	text_end

.UsePokeFlute:
	ld a, [wMapNumber]
	cp MAP_ROUTE_12
	jr nz, .notRoute12
	; on Route 12
	ld de, EVENT_BEAT_ROUTE12_SNORLAX ; checkevent
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr nz, .nope ; iftrue

	farcall GetFacingObject
	jr c, .nope

	ld a, d
	cp SPRITEMOVEDATA_POKEMON ; ROUTE12_SNORLAX object constant
	jr nz, .nope

	ld a, 1
	ld [wScriptVar], a
	ret

.notRoute12
	cp MAP_ROUTE_16
	jr nz, .nope
	; on Route 16
	ld de, EVENT_BEAT_ROUTE16_SNORLAX ; checkevent
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr nz, .nope ; iftrue

	farcall GetFacingObject
	jr c, .nope

	ld a, d
	cp SPRITEMOVEDATA_POKEMON ; ROUTE12_SNORLAX object constant
	jr nz, .nope

	ld a, 2
	ld [wScriptVar], a
	ret

.nope
	xor a
	ld [wScriptVar], a
	ret
