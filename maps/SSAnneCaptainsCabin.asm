	object_const_def
	const SSANNECAPTAINSCABIN_CAPTAIN

SSAnneCaptainsCabin_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, SSAnneCaptainsCabinCallback

SSAnneCaptainsCabinCallback:
	checkevent EVENT_RUBBED_CAPTAINS_BACK
	iftrue .MoveCaptain
	endcallback

.MoveCaptain
	moveobject SSANNECAPTAINSCABIN_CAPTAIN, 1, 1
	setval SPRITEMOVEDATA_STANDING_DOWN
    writemem wMap1ObjectMovement
	endcallback

SSAnneCaptainsCabinsCaptainScript:
	checkevent EVENT_RUBBED_CAPTAINS_BACK
	iftrue .CaptainBetter
	opentext
	writetext SSAnneCaptainsCabinRubCaptainsBackText
	; HP_UP SFX when "PLAYER rubbed the CAPTAIN's back!"
	waitbutton
	closetext
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	faceplayer
	opentext
	writetext SSAnneCaptainsCabinCaptainMuchBetterText
	promptbutton
	verbosegiveitem HM_CUT
	iffalse .NoRoom
	writetext SSAnneCaptainsCabinCaptainExplainCutText
	promptbutton
	writetext SSAnneCaptainsCabinCaptainNotSickAnymoreText
	waitbutton
	closetext
	setevent EVENT_GOT_HM01_CUT
	setevent EVENT_RUBBED_CAPTAINS_BACK
	setmapscene VERMILION_DOCK, SCENE_VERMILIONDOCK_SS_ANNE_LEAVES
	end

.CaptainBetter:
	faceplayer
	opentext
	writetext SSAnneCaptainsCabinCaptainNotSickAnymoreText
	waitbutton
	closetext
	end

.NoRoom:
	writetext SSAnneCaptainsCabinCaptainHM01NoRoomText
	waitbutton
	closetext
	end

SSAnneCaptainsCabinTrash:
	jumptext SSAnneCaptainsCabinTrashText

SSAnneCaptainsCabinSeasickBook:
	jumptext SSAnneCaptainsCabinSeasickBookText

SSAnneCaptainsCabinRubCaptainsBackText:
	text "CAPTAIN: Ooargh…"
	line "I feel hideous…"
	cont "Urrp! Seasick…"

	para "<PLAYER> rubbed the"
	line "CAPTAIN's back!"

	para "Rub-rub…"
	line "Rub-rub…"
	done

SSAnneCaptainsCabinCaptainMuchBetterText:
	text "CAPTAIN: Whew!"
	line "Thank you!"
	
	para "I feel much"
	line "better!"

	para "You want to see"
	line "my CUT technique?"

	para "I could show you"
	line "if I wasn't ill…"

	para "I know! You can"
	line "have this HM!"

	para "Teach CUT to your"
	line "#MON and you"

	para "can see it CUT"
	line "any time!"
	done

; SSAnneCaptainsCabinCaptainReceivedHM01Text:
	; text "<PLAYER> got"
	; line "@"
	; text_ram wStringBuffer
	; text "!@"
	; text_end

; SSAnne_CaptainsOffice_Text_ObtainedHM01FromCaptain::
    ; .string "{PLAYER} obtained HM01\n"
    ; .string "from the CAPTAIN!$"

SSAnneCaptainsCabinCaptainExplainCutText: ; GSC explain recieved HMs (FR/LG dialogue)
	text "Using HM CUT, you"
	line "can chop down"
	cont "small trees."

	para "Why not try it"
	line "with the trees"
	cont "around VERMILION?"
	done

SSAnneCaptainsCabinCaptainNotSickAnymoreText:
	text "CAPTAIN: …Whew!"

	para "Now that I'm not"
	line "sick anymore,"
	cont "I guess it's time."

	para "The S.S.ANNE will" ; Added to clarify the ship's leaving (FR/LG dialogue)
	line "set sail soon!"

	para "Farewell, until"
	line "we return to"
	cont "VERMILION CITY!"
	done

SSAnneCaptainsCabinCaptainHM01NoRoomText:
	text "Oh, no! You have"
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
	bg_event  4,  1, BGEVENT_READ, SSAnneCaptainsCabinTrash
	bg_event  1,  2, BGEVENT_READ, SSAnneCaptainsCabinSeasickBook
	bg_event  1,  3, BGEVENT_READ, SSAnneCaptainsCabinSeasickBook

	def_object_events
	object_event  4,  2, SPRITE_CAPTAIN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_OW_BROWN, OBJECTTYPE_SCRIPT, 0, SSAnneCaptainsCabinsCaptainScript, -1
