	object_const_def
	const SSANNE2F_WAITER
	const SSANNE2F_RIVAL

SSAnne2F_MapScripts:
	def_scene_scripts

	def_callbacks

SSAnne2FWaiterScript:
	jumptextfaceplayer SSAnne2FWaiterText

; SSAnne1FWaiterScript:
	; jumptextfaceplayer SSAnne1FWaiterText

SSAnne2FWaiterText:
	text "This ship, she is"
	line "a luxury liner"
	cont "for trainers!"

	para "At every port, we"
	line "hold parties with"
	cont "invited trainers!"
	done

SSAnne2FRivalText:
	text "<RIVAL>: Bonjour!"
	line "<PLAYER>!"

	para "Imagine seeing"
	line "you here!"

	para "<PLAYER>, were you"
	line "really invited?"

	para "So how's your"
	line "#DEX coming?"

	para "I already caught"
	line "40 kinds, pal!"

	para "Different kinds"
	line "are everywhere!"

	para "Crawl around in"
	line "grassy areas!"
	done

SSAnne2FRivalDefeatedText:
	text "Humph!"

	para "At least you're"
	line "raising your"
	cont "#MON!"
	prompt

SSAnne2FRivalVictoryText:
	text "<PLAYER>! What are"
	line "you, seasick?"

	para "You should shape"
	line "up, pal!"
	prompt

SSAnne2FRivalCutMasterText:
	text "<RIVAL>: I heard"
	line "there was a CUT"
	cont "master on board."

	para "But, he was just a"
	line "seasick, old man!"

	para "But, CUT itself is"
	line "really useful!"

	para "You should go see"
	line "him! Smell ya!"
	done

SSAnne2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  9, 11, SS_ANNE_2F_CABINS, 1
	warp_event 13, 11, SS_ANNE_2F_CABINS, 3
	warp_event 17, 11, SS_ANNE_2F_CABINS, 5
	warp_event 21, 11, SS_ANNE_2F_CABINS, 7
	warp_event 25, 11, SS_ANNE_2F_CABINS, 9
	warp_event 29, 11, SS_ANNE_2F_CABINS, 11
	warp_event  2,  4, SS_ANNE_1F, 8
	warp_event  2, 13, SS_ANNE_3F, 2
	warp_event 36,  4, SS_ANNE_CAPTAINS_CABIN, 1

	def_coord_events
	;
	;

	def_bg_events

	def_object_events
	object_event  3,  7, SPRITE_WAITER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 4, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SSAnne2FWaiterScript, -1
	object_event 36,  4, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_HIDDEN_OBJECT
