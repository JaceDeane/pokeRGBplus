	object_const_def
	const VERMILIONGYM_SURGE
	const VERMILIONGYM_GENTLEMAN
	const VERMILIONGYM_ROCKER
	const VERMILIONGYM_SUPER_NERD
	const VERMILIONGYM_GYM_GUIDE

VermilionGym_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, .VermilionGymDoorsScript
	callback MAPCALLBACK_TILES, .VermilionGymDoorsCallback

.VermilionGymDoorsScript:
	checkevent EVENT_VERMILION_GYM_SWITCH_2
	iftrue .done
	checkevent EVENT_VERMILION_GYM_SWITCH_1
	iffalse .resample
.resample
	callasm SampleVermilionGymTrashCans
.done
	endcallback

.VermilionGymDoorsCallback:
	checkevent EVENT_VERMILION_GYM_SWITCH_2
	iftrue .NoDoors
	endcallback

.NoDoors:
	changeblock 4, 4, $05 ; floor
	endcallback

VermilionGymTrashCanScript:
	checkevent EVENT_VERMILION_GYM_SWITCH_2
	iftrue .trash_can
	callasm CheckVermilionGymTrashCan
	iftrue .open_lock
	checkevent EVENT_VERMILION_GYM_SWITCH_1
	iftrue .reset_switches
.trash_can
	jumpstd TrashCanScript

.open_lock
	opentext
	writetext VermilionGymFoundSwitchText
	playsound SFX_PUSH_BUTTON
	promptbutton
	checkevent EVENT_VERMILION_GYM_SWITCH_1
	iftrue .second_switch
	writetext VermilionGymFoundFirstSwitchText
	playsound SFX_ENTER_DOOR
	setevent EVENT_VERMILION_GYM_SWITCH_1
	waitbutton
	closetext
	end

.second_switch
	writetext VermilionGymFoundSecondSwitchText
	waitbutton
	playsound SFX_ENTER_DOOR
	setevent EVENT_VERMILION_GYM_SWITCH_2
	changeblock 4, 4, $05 ; floor
	reloadmappart
	closetext
	end

.reset_switches
	opentext
	writetext VermilionGymTrashCanText
	promptbutton
	writetext VermilionGymResetSwitchesText
	playsound SFX_WRONG
	waitbutton
	closetext
	callasm SampleVermilionGymTrashCans
	clearevent EVENT_VERMILION_GYM_SWITCH_1
	end

SampleVermilionGymTrashCans:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wVermilionGymTrashCan1)
	ldh [rSVBK], a
.loop
	call Random
	ld e, a
	swap e
	and $f
	jr z, .loop
	dec a
	ld [wVermilionGymTrashCan1], a
	call .GetSecondTrashCan
	ld [wVermilionGymTrashCan2], a
	pop af
	ldh [rSVBK], a
	ret

.GetSecondTrashCan:
	ld hl, .AdjacencyTable
	add a
	add a
	ld c, a
	ld a, e
	and %11
	add c
	ld c, a
	ld b, 0
	add hl, bc
	ld a, [hl]
	ret

.AdjacencyTable:
	; left, right, up, down
	db  1,  1,  5,  5 ;  0 ( 1, 7)
	db  0,  2,  6,  6 ;  1 ( 3, 7)
	db  1,  3,  7,  7 ;  2 ( 5, 7)
	db  2,  4,  8,  8 ;  3 ( 7, 7)
	db  3,  3,  9,  9 ;  4 ( 9, 7)
	db  6,  6,  0, 10 ;  5 ( 1, 9)
	db  5,  7,  1, 11 ;  6 ( 3, 9)
	db  6,  8,  2, 12 ;  7 ( 5, 9)
	db  7,  9,  3, 13 ;  8 ( 7, 9)
	db  8,  8,  4, 14 ;  9 ( 9, 9)
	db 11, 11,  5,  5 ; 10 ( 1,11)
	db 10, 12,  6,  6 ; 11 ( 3,11)
	db 11, 13,  7,  7 ; 12 ( 5,11)
	db 12, 14,  8,  8 ; 13 ( 7,11)
	db 13, 13,  9,  9 ; 14 ( 9,11)

CheckVermilionGymTrashCan:
	ldh a, [rSVBK]
	push af
	ld a, BANK(wVermilionGymTrashCan1)
	ldh [rSVBK], a
	ld de, EVENT_VERMILION_GYM_SWITCH_1
	ld b, CHECK_FLAG
	call EventFlagAction
	ld a, c
	and a
	jr z, .first
	ld a, [wVermilionGymTrashCan2]
	call .CheckTrashCan
	ld a, TRUE
	jr z, .done
	dec a ; FALSE
.done
	ld [wScriptVar], a
	pop af
	ldh [rSVBK], a
	ret

.first:
	ld a, [wVermilionGymTrashCan1]
	call .CheckTrashCan
	jr z, .yes
	ld a, [wVermilionGymTrashCan2]
	call .CheckTrashCan
	ld a, FALSE
	jr nz, .done
	ld a, [wVermilionGymTrashCan1]
	ld [wVermilionGymTrashCan2], a
.yes
	ld a, TRUE
	jr .done

.CheckTrashCan:
	ld c, a
	call GetFacingTileCoord
	call .ConvertCoordsToTrashCan
	cp c
	ret

.ConvertCoordsToTrashCan:
	ld a, d
	sub 5
	srl a
	ld d, a
	ld a, e
	sub 11
	srl a
	ld e, a
	add a
	add a
	add e
	add d
	ret

VermilionGymSurgeScript:
	faceplayer
	opentext
	checkflag ENGINE_THUNDERBADGE
	iftrue .FightDone
	writetext LtSurgeIntroText
	waitbutton
	closetext
	winlosstext LtSurgeWinLossText, 0
	loadtrainer LT_SURGE, LT_SURGE1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_LTSURGE
	setevent EVENT_BEAT_GENTLEMAN_TUCKER
	setevent EVENT_BEAT_ROCKER_RANDALL
	setevent EVENT_BEAT_SAILOR_DWAYNE
	opentext
	writetext ReceivedThunderBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_THUNDERBADGE
	writetext LtSurgeThunderBadgeText
	waitbutton
	closetext
	end

.FightDone:
	writetext LtSurgeFightDoneText
	waitbutton
	closetext
	end

TrainerGentlemanTucker:
	trainer GENTLEMAN, TUCKER, EVENT_BEAT_GENTLEMAN_TUCKER, GentlemanTuckerSeenText, GentlemanTuckerBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GentlemanTuckerAfterBattleText
	waitbutton
	closetext
	end

TrainerRockerRandall:
	trainer ROCKER, RANDALL, EVENT_BEAT_ROCKER_RANDALL, RockerRandallSeenText, RockerRandallBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext RockerRandallAfterBattleText
	waitbutton
	closetext
	end

TrainerSailorDwayne:
	trainer SAILOR, DWAYNE, EVENT_BEAT_SAILOR_DWAYNE, SailorDwayneSeenText, SailorDwayneBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SailorDwayneAfterBattleText
	waitbutton
	closetext
	end

VermilionGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_LTSURGE
	iftrue .VermilionGymGuideWinScript
	writetext VermilionGymGuideText
	waitbutton
	closetext
	end

.VermilionGymGuideWinScript:
	writetext VermilionGymGuideWinText
	waitbutton
	closetext
	end

; VermilionGymTrashCan:
	; jumptext VermilionGymTrashCanText

VermilionGymStatue:
	gettrainername STRING_BUFFER_4, LT_SURGE, LT_SURGE1
	checkflag ENGINE_THUNDERBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	jumpstd GymStatue2Script

; LtSurgeIntroText:
	; text "SURGE: Hey, you"
	; line "little tyke!"

	; para "I have to hand it"
	; line "to you. It may not"

	; para "be very smart to"
	; line "challenge me, but"
	; cont "it takes guts!"

	; para "When it comes to"
	; line "electric #MON,"
	; cont "I'm number one!"

	; para "I've never lost on"
	; line "the battlefield."

	; para "I'll zap you just"
	; line "like I did my"
	; cont "enemies in war!"
	; done

; LtSurgeWinLossText:
	; text "SURGE: Arrrgh!"
	; line "You are strong!"

	; para "OK, kid. You get"
	; line "THUNDERBADGE!"
	; done

; ReceivedThunderBadgeText:
	; text "<PLAYER> received"
	; line "THUNDERBADGE."
	; done

; LtSurgeThunderBadgeText:
	; text "SURGE: THUNDER-"
	; line "BADGE increases"
	; cont "#MON's speed. "

	; para "Consider it proof"
	; line "that you defeated"

	; para "me. You wear it"
	; line "proudly, hear?"
	; done

; LtSurgeFightDoneText:
	; text "SURGE: Hey, kid!"
	; line "Still slugging and"
	; cont "chugging away?"

	; para "My #MON and I"
	; line "are still at it!"
	; done

LtSurgeIntroText:
	text "Hey, kid! What do"
	line "you think you're"
	cont "doing here?"

	para "You won't live"
	line "long in combat!"
	cont "That's for sure!"

	para "I tell you kid,"
	line "electric #MON"
	
	para "saved me during"
	line "the war!"

	para "They zapped my"
	line "enemies into"
	cont "paralysis!"

	para "The same as I'll"
	line "do to you!"
	done

LtSurgeWinLossText:
	text "SURGE: Whoa!"

	para "You're the real"
	line "deal, kid!"

	para "Fine then, take"
	line "the THUNDERBADGE!"
	done

ReceivedThunderBadgeText:
	text "<PLAYER> received"
	line "the THUNDERBADGE."
	done

LtSurgeThunderBadgeText:
	text "SURGE: THUNDER-"
	line "BADGE cranks up "
	
	para "your #MON's"
	line "SPEED!"

	para "It also lets your"
	line "#MON FLY any"
	cont "time, kid!"

	para "You're special,"
	line "kid! Take this!"
	done

; LtSurgeReceivedTM24Text:
	; text "<PLAYER> received "
	; line "@"
	; text_ram wStringBuffer
	; text "!@"
	; text_end

TM24ExplanationText:
	text "SURGE: TM24 con-"
	line "tains THUNDERBOLT!"

	para "Teach it to an"
	line "electric #MON!"
	done

LtSurgeTM24NoRoomText:
	text "Yo kid, make room"
	line "in your pack!"
	done

LtSurgeFightDoneText:
	text "SURGE: A little"
	line "word of advice,"
	cont "kid!"

	para "Electricity is"
	line "sure powerful!"

	para "But, it's useless"
	line "against ground-"
	cont "type #MON!"
	done

GentlemanTuckerSeenText:
	text "When I was in the"
	line "Army, LT.SURGE"
	cont "was my strict CO!"
	done

GentlemanTuckerBeatenText:
	text "Stop!"
	line "You're very good!"
	done

GentlemanTuckerAfterBattleText:
	text "The door won't"
	line "open?"

	para "LT.SURGE always"
	line "was cautious!"
	done

RockerRandallSeenText:
	text "I'm a lightweight,"
	line "but I'm good with"
	cont "electricity!"
	done

RockerRandallBeatenText:
	text "Fried!"
	done

RockerRandallAfterBattleText:
	text "OK, I'll talk!"

	para "LT.SURGE said he"
	line "hid door switches"
	cont "inside something!"
	done

SailorDwayneSeenText:
	text "This is no place"
	line "for kids!"
	done

SailorDwayneBeatenText:
	text "Wow!"
	line "Surprised me!"
	done

SailorDwayneAfterBattleText:
	text "LT.SURGE set up"
	line "double locks!"
	cont "Here's a hint!"

	para "When you open the"
	line "1st lock, the 2nd"
	
	para "lock is right"
	line "next to it!"
	done

VermilionGymGuideText:
	text "Yo! Champ in"
	line "making!"

	para "LT.SURGE has a"
	line "nickname."
	
	para "People refer to"
	line "him as the Light-"
	cont "ning American!"

	para "He's an expert on"
	line "electric #MON!"

	para "Birds and water"
	line "#MON are at"
	
	para "risk! Beware of"
	line "paralysis too!"

	para "LT.SURGE is very"
	line "cautious."

	para "You'll have to"
	line "break a code to"
	cont "get to him!"
	done

VermilionGymGuideWinText:
	text "Whew! That match"
	line "was electric!"
	done

VermilionGymTrashCanText:
	text "Nope! Nothing here"
	line "but trash."
	done

VermilionGymFoundSwitchText:
	text "Hey!"

	para "There's a switch"
	line "under the trash!"

	para "Better press it."
	done

VermilionGymFoundFirstSwitchText:
	text "The first electric"
	line "lock opened!"
	done

VermilionGymFoundSecondSwitchText:
	text "The second"
	line "electric lock"
	cont "opened!"

	para "The path ahead is"
	line "clear!"
	done

VermilionGymResetSwitchesText:
	text "Hey! The electric"
	line "locks were reset!"
	done

VermilionGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, VERMILION_CITY, 4
	warp_event  5, 17, VERMILION_CITY, 4

	def_coord_events

	def_bg_events
	bg_event  1,  7, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  3,  7, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  5,  7, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  7,  7, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  9,  7, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  1,  9, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  3,  9, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  5,  9, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  7,  9, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  9,  9, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  1, 11, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  3, 11, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  5, 11, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  7, 11, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  9, 11, BGEVENT_READ, VermilionGymTrashCanScript
	bg_event  3, 14, BGEVENT_READ, VermilionGymStatue
	bg_event  6, 14, BGEVENT_READ, VermilionGymStatue

	def_object_events
	object_event  5,  1, SPRITE_SURGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VermilionGymSurgeScript, -1
	object_event  9,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerGentlemanTucker, -1
	object_event  3,  8, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_LEFT, 3, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerRockerRandall, -1 ; FR/LG use ENGINEER_BAILY (unused R/B)
	object_event  0, 10, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSailorDwayne, -1
	object_event  7, 14, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 1, VermilionGymGuideScript, -1
