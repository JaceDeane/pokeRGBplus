TalkToTrainerScript::
	faceplayer
	trainerflagaction CHECK_FLAG
	iftrue AlreadyBeatenTrainerScript
	loadtemptrainer
	callasm DetermineSwitchOrder
	encountermusic
	sjump StartBattleWithMapTrainerScript

SeenByTrainerScript::
	loadtemptrainer
	callasm DetermineSwitchOrder
	encountermusic
	showemote EMOTE_SHOCK, LAST_TALKED, 30
	callasm TrainerWalkToPlayer
	applymovementlasttalked wMovementBuffer
	writeobjectxy LAST_TALKED
	faceobject PLAYER, LAST_TALKED
	sjump StartBattleWithMapTrainerScript

StartBattleWithMapTrainerScript:
	opentext
	trainertext TRAINERTEXT_SEEN
	waitbutton
	closetext
	loadtemptrainer
	startbattle
	reloadmapafterbattle
	trainerflagaction SET_FLAG
	loadmem wRunningTrainerBattleScript, -1

AlreadyBeatenTrainerScript:
	scripttalkafter

DetermineSwitchOrder:
	xor a
	ld [wEnemyMonLinearFlag], a      ; default: normal AI
	ld hl, TrainerSwitchOrders
.loop
	ld a, [hli]
	cp -1
	ret z
	ld b, a                          ; class
	ld a, [hli]
	ld c, a                          ; id
	ld a, [hli]
	ld e, a                          ; mode
	ld a, [wTempTrainerClass]
	cp b
	jr nz, .loop
	ld a, [wTempTrainerID]
	cp c
	jr nz, .loop
	ld a, e
	ld [wEnemyMonLinearFlag], a
	ret

INCLUDE "data/trainers/switch_orders.asm"
