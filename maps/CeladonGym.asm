	object_const_def
	const CELADONGYM_ERIKA
	const CELADONGYM_LASS1
	const CELADONGYM_BEAUTY1
	const CELADONGYM_PICNICKER
	const CELADONGYM_BEAUTY2
	const CELADONGYM_LASS2
	const CELADONGYM_BEAUTY3
    const CELADONGYM_COOLTRAINER_F

CeladonGym_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonGymErikaScript:
	faceplayer
	opentext
	checkflag ENGINE_RAINBOWBADGE
	iftrue .FightDone
	writetext ErikaBeforeBattleText
	waitbutton
	closetext
	winlosstext ErikaBeatenText, 0
	loadtrainer ERIKA, ERIKA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_ERIKA
	setevent EVENT_BEAT_LASS_KAY
	setevent EVENT_BEAT_BEAUTY_BRIDGET
	setevent EVENT_BEAT_PICNICKER_TINA
	setevent EVENT_BEAT_BEAUTY_TAMIA
	setevent EVENT_BEAT_LASS_LISA
	setevent EVENT_BEAT_BEAUTY_LORI
	setevent EVENT_BEAT_COOLTRAINERF_MARY
	opentext
	writetext PlayerReceivedRainbowBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_RAINBOWBADGE
	writetext ErikaRainbowBadgeInfoText
	promptbutton
.FightDone:
	checkevent EVENT_GOT_TM21_MEGA_DRAIN
	iftrue .GotGigaDrain
	verbosegiveitem TM_MEGA_DRAIN
	iffalse .NoRoom
	writetext ErikaExplainTMText
	waitbutton
	setevent EVENT_GOT_TM21_MEGA_DRAIN
	closetext
	end
	
.GotGigaDrain:
	writetext ErikaAfterBattleText
	waitbutton
	closetext
	end

.NoRoom:
	writetext ErikaNoRoomText
	waitbutton
	closetext
	end

TrainerLassKay:
	trainer LASS, KAY, EVENT_BEAT_LASS_KAY, LassKaySeenText, LassKayBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassKayBeatenText
	waitbutton
	closetext
	end

TrainerBeautyBridget:
	trainer BEAUTY, BRIDGET, EVENT_BEAT_BEAUTY_BRIDGET, BeautyBridgetSeenText, BeautyBridgetBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyBridgetBeatenText
	waitbutton
	closetext
	end

TrainerPicnickerTina:
	trainer PICNICKER, TINA, EVENT_BEAT_PICNICKER_TINA, PicnickerTinaSeenText, PicnickerTinaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext PicnickerTinaBeatenText
	waitbutton
	closetext
	end

TrainerBeautyTamia:
	trainer BEAUTY, TAMIA, EVENT_BEAT_BEAUTY_TAMIA, BeautyTamiaSeenText, BeautyTamiaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyTamiaBeatenText
	waitbutton
	closetext
	end

TrainerLassLisa:
	trainer LASS, LISA, EVENT_BEAT_LASS_LISA, LassLisaSeenText, LassLisaBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassLisaBeatenText
	waitbutton
	closetext
	end

TrainerBeautyLori:
	trainer BEAUTY, LORI, EVENT_BEAT_BEAUTY_LORI, BeautyLoriSeenText, BeautyLoriBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BeautyLoriBeatenText
	waitbutton
	closetext
	end

TrainerCooltrainerFMary:
	trainer COOLTRAINERF, MARY, EVENT_BEAT_COOLTRAINERF_MARY, CooltrainerFMarySeenText, CooltrainerFMaryBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFMaryBeatenText
	waitbutton
	closetext
	end

CeladonGymStatue:
	gettrainername STRING_BUFFER_4, ERIKA, ERIKA1
	checkflag ENGINE_RAINBOWBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	jumpstd GymStatue2Script

ErikaBeforeBattleText: ;CeladonGymErikaPreBattleText
	text "Hello… Lovely"
	line "weather isn't it?"

	para "It's so pleasant…"

	para "…Oh dear…"

	para "…I must have dozed"
	line "off… Welcome."

	para "My name is ERIKA."
	line "I am the LEADER of"
	cont "CELADON GYM."

	para "I teach the art of"
	line "flower arranging…"

	para "My #MON are of"
	line "the grass-type…"

	para "Oh. I'm sorry, I"
	line "had no idea that"

	para "you wished to"
	line "challenge me."

	para "Very well, but I"
	line "shall not lose."
	done

ErikaBeatenText:
	text "Oh!"
	line "I concede defeat…"

	para "You are remarkably"
	line "strong…"

	para "I must confer you"
	line "the RAINBOWBADGE…"
	done

PlayerReceivedRainbowBadgeText:
	text "<PLAYER> received"
	line "RAINBOWBADGE."
	done

ErikaRainbowBadgeInfoText:
	text "The RAINBOWBADGE"
	line "will make #MON"
	cont "up to L50 obey."

	para "It also allows"
	line "#MON to use"

	para "STRENGTH outside"
	line "of battle."

	para "Please also take"
	line "this with you."
	done

ErikaExplainTMText:
	text "TM21 contains"
	line "MEGA DRAIN."
	
	para "It drains half" ;Mix of GenI and GenII wording for conciseness
	line "the damage it"

	para "inflicts to heal"
	line "your #MON…"
	done

ErikaNoRoomText:
	text "You should make"
	line "room for this…"
	done

ErikaAfterBattleText:
	text "You're cataloging"
	line "#MON?"
	
	para "I must say, I'm"
	line "impressed…"

	para "I would never"
	line "collect a #MON"

	para "if they were"
	line "unattractive…"
	done

; CeladonGymReceivedTM21Text:
	; text "<PLAYER> received"
	; line "@"
	; text_ram wStringBuffer
	; text "!@"
	; text_end

LassKaySeenText:
	text "Hey!"

	para "You're not allowed"
	line "in here!"
	done

LassKayBeatenText:
	text "You're too rough!"
	done ;prompt

LassKayAfterBattleText:
	text "Bleaah!"

	para "I hope ERIKA"
	line "wipes you out!"
	done

BeautyBridgetSeenText:
	text "I was getting"
	line "bored."
	done

BeautyBridgetBeatenText:
	text "My makeup!"
	done ;prompt

BeautyBridgetAfterBattleText:
	text "Grass-type #MON"
	line "are tough against"
	cont "water-types!"

	para "They also have an"
	line "edge on rock and"
	cont "ground #MON!"
	done

PicnickerTinaSeenText:
	text "Aren't you the"
	line "peeping Tom?"
	done

PicnickerTinaBeatenText:
	text "I'm in shock!"
	done ;prompt

PicnickerTinaAfterBattleText:
	text "Oh, you weren't"
	line "peeping? We get a"
	cont "lot of gawkers!"
	done

BeautyTamiaSeenText:
	text "Look at my grass"
	line "#MON!"

	para "They're so easy"
	line "to raise!"
	done

BeautyTamiaBeatenText:
	text "No!"
	done ;prompt

BeautyTamiaAfterBattleText:
	text "We only use grass-"
	line "type #MON at"
	cont "our GYM!"

	para "We also use them"
	line "for making flower"
	cont "arrangements!"
	done

LassLisaSeenText:
	text "Don't bring any"
	line "bugs or fire"
	cont "#MON in here!"
	done

LassLisaBeatenText:
	text "Oh! You!"
	done ;prompt

LassLisaAfterBattleText:
	text "Our LEADER, ERIKA,"
	line "might be quiet,"

	para "but she's also"
	line "very skilled!"
	done

BeautyLoriSeenText:
	text "Pleased to meet"
	line "you. My hobby is"
	cont "#MON training."
	done

BeautyLoriBeatenText:
	text "Oh! Splendid!"
	done ;prompt

BeautyLoriAfterBattleText:
	text "I have a blind"
	line "date coming up."

	para "I have to learn"
	line "to be polite."
	done

CooltrainerFMarySeenText:
	text "Welcome to the"
	line "CELADON GYM!"

	para "You better not"
	line "underestimate"
	cont "girl power!"
	done

CooltrainerFMaryBeatenText:
	text "Oh! Beaten!"
	done ;prompt

CooltrainerFMaryAfterBattleText:
	text "I didn't bring my"
	line "best #MON!"

	para "Wait 'til next"
	line "time!"
	done

CeladonGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, CELADON_CITY, 7
	warp_event  5, 17, CELADON_CITY, 7

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, CeladonGymStatue
	bg_event  6, 15, BGEVENT_READ, CeladonGymStatue

	def_object_events
	object_event  4,  3, SPRITE_ERIKA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CeladonGymErikaScript, -1
	object_event  2, 11, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassKay, -1 ;OPP_LASS, 17
	object_event  7, 10, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBeautyBridget, -1 ;OPP_BEAUTY, 1
	object_event  9,  5, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerPicnickerTina, -1 ;OPP_JR_TRAINER_F, 11
	object_event  1,  5, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 4, TrainerBeautyTamia, -1 ;OPP_BEAUTY, 2
	object_event  6,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerLassLisa, -1 ;OPP_LASS, 18
	object_event  3,  3, SPRITE_BEAUTY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerBeautyLori, -1 ;OPP_BEAUTY, 3
	object_event  5,  3, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerFMary, -1 ;OPP_COOLTRAINER_F, 1
