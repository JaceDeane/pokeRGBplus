	object_const_def
	const REDSHOUSE1F_REDS_MOM

RedsHouse1F_MapScripts:
	def_scene_scripts
	scene_script RedHouse1FNoopScene ; unusable

	def_callbacks

RedHouse1FNoopScene:
	end

RedsMom:
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue .GotAPokemon
	writetext MomWakeUpText
	givepoke PIKACHU, 5, BERRY ; debug
	waitbutton
	waitsfx ; debug
	playsound SFX_ITEM ; debug
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM ; debug
	end
	
.GotAPokemon:
	writetext MomHealText1
	waitbutton
	closetext
	special FadeOutToBlack
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInFromBlack
	special RestartMapMusic
	opentext
	writetext MomHealText2
	waitbutton
	closetext
	end

RedsHouse1FTV:
	jumptext RedsHouse1FTVText

RedsHouse1FBookshelf:
	jumpstd PictureBookshelfScript

MomWakeUpText:
	text "MOM: Right."
	
	para "All boys leave"
	line "home someday."
	cont "It said so on TV."

	para "PROF.OAK, next"
	line "door, is looking"
	cont "for you."
	done

MomHealText1::
	text "MOM: <PLAYER>, if"
	line "you drive your"
	
	para "#MON too hard,"
	line "they'll dislike"
	cont "you."

	para "You should take a"
	line "rest."
	done

MomHealText2::
	text "MOM: Oh good!"
	
	para "You and your"
	line "#MON are"
	cont "looking great!"
	
	para "Take care now!"
	done

RedsHouse1FTVText:
	text "There's a movie on"
	line "TV: Four boys are"
	
	para "walking on rail-"
	line "road tracks."

	para "I'd better go, too."
	done

RedsHouse1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, PALLET_TOWN, 1
	warp_event  3,  7, PALLET_TOWN, 1
	warp_event  7,  1, REDS_HOUSE_2F, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, RedsHouse1FBookshelf
	bg_event  1,  1, BGEVENT_READ, RedsHouse1FBookshelf
	bg_event  3,  1, BGEVENT_READ, RedsHouse1FTV

	def_object_events
	object_event  5,  4, SPRITE_REDS_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RedsMom, -1
