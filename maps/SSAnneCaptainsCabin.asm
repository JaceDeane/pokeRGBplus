	object_const_def
	const SSANNECAPTAINSCABIN_CAPTAIN

SSAnneCaptainsCabin_MapScripts:
	def_scene_scripts

	def_callbacks



SSAnneCaptainsCabinRubCaptainsBackText:
	text "CAPTAIN: Ooargh…"
	line "I feel hideous…"
	cont "Urrp! Seasick…"

	para "<PLAYER> rubbed"
	line "the CAPTAIN's"
	cont "back!"

	para "Rub-rub…"
	line "Rub-rub…"
	done

SSAnneCaptainsCabinCaptainMuchBetterText:
	text "CAPTAIN: Whew!"
	line "Thank you!"
	
	para "I feel much"
	cont "better!"

	para "You want to see"
	line "my CUT technique?"

	para "I could show you"
	line "if I wasn't ill…"

	para "I know! You can"
	line "have this!"

	para "Teach it to your"
	line "#MON and you"

	para "can see it CUT"
	line "any time!"
	prompt

; SSAnneCaptainsCabinCaptainReceivedHM01Text:
	; text "<PLAYER> got"
	; line "@"
	; text_ram wStringBuffer
	; text "!@"
	; text_end

SSAnneCaptainsCabinCaptainNotSickAnymoreText:
	text "CAPTAIN: Whew!"

	para "Now that I'm not"
	line "sick any more, I"
	cont "guess it's time."
	done

SSAnneCaptainsCabinCaptainHM01NoRoomText:
	text "Oh no! You have"
	line "no room for this!"
	done

SSAnneCaptainsCabinTrashText:
	text "Yuck! Shouldn't"
	line "have looked!"
	done

SSAnneCaptainsCabinSeasickBookText:
	text "How to Conquer"
	line "Seasickness…"

	para "The CAPTAIN's"
	line "reading this!"
	done


SSAnneCaptainsCabin_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  7, SS_ANNE_2F, 9

	def_coord_events

	def_bg_events
	; bg_event  4,  1, TEXT_SSANNECAPTAINSROOM_TRASH
	; bg_event  1,  2, TEXT_SSANNECAPTAINSROOM_SEASICK_BOOK

	def_object_events
	; object_event  4,  2, SPRITE_CAPTAIN, STAY, UP, TEXT_SSANNECAPTAINSROOM_CAPTAIN
