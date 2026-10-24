	object_const_def
	const ROUTE23_CASCADEBADGE_OFFICER ; OFFICER1
	const ROUTE23_THUNDERBADGE_OFFICER ; OFFICER2
	const ROUTE23_RAINBOWBADGE_OFFICER ; OFFICER3
	const ROUTE23_SOULBADGE_OFFICER    ; SWIMMER_GUY1
	const ROUTE23_MARSHBADGE_OFFICER   ; SWIMMER_GUY2
	const ROUTE23_VOLCANOBADGE_OFFICER ; OFFICER4
	const ROUTE23_EARTHBADGE_OFFICER   ; OFFICER5

Route23_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_NEWMAP, Route23FlypointCallback

Route23FlypointCallback:
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	endcallback

Route23CascadeBadgeCheckScript:
	checkevent EVENT_PASSED_CASCADEBADGE_CHECK
	iftrue EndBadgeCheckScript
	faceobject ROUTE23_CASCADEBADGE_OFFICER, PLAYER
	faceobject PLAYER, ROUTE23_CASCADEBADGE_OFFICER
	sjump _Route23CascadeBadgeCheckScript

Route23CascadeBadgeOfficerScript:
	faceplayer
_Route23CascadeBadgeCheckScript:
	opentext
	getstring STRING_BUFFER_3, CascadeBadgeString
	writetext Route23OfficerText
	promptbutton
	checkflag ENGINE_CASCADEBADGE
	iftrue .HasCascadeBadge
	writetext Route23OfficerDontHaveBadgeText
	waitsfx
	playsound SFX_WRONG
	waitsfx
	promptbutton
	writetext Route23OfficerDontHaveBadgeText2
	waitbutton
	closetext
	turnobject ROUTE23_CASCADEBADGE_OFFICER, DOWN
	applymovement PLAYER, Route23StepDownMovement
	end

.HasCascadeBadge:
	writetext Route23OfficerHaveBadgeText
	promptbutton
	writetext Route23OfficerGoRightAheadText
	waitsfx
	playsound SFX_RB_ITEM_1
	waitsfx
		waitbutton ; ?
	closetext
	turnobject ROUTE23_CASCADEBADGE_OFFICER, DOWN
	setevent EVENT_PASSED_CASCADEBADGE_CHECK
	end

Route23ThunderBadgeCheckScript:
	checkevent EVENT_PASSED_THUNDERBADGE_CHECK
	iftrue EndBadgeCheckScript
	faceobject ROUTE23_THUNDERBADGE_OFFICER, PLAYER
	faceobject PLAYER, ROUTE23_THUNDERBADGE_OFFICER
	sjump _Route23ThunderBadgeCheckScript

Route23ThunderBadgeOfficerScript:
	faceplayer
_Route23ThunderBadgeCheckScript:
	opentext
	getstring STRING_BUFFER_3, ThunderBadgeString
	writetext Route23OfficerText
	promptbutton
	checkflag ENGINE_THUNDERBADGE
	iftrue .HasThunderBadge
	writetext Route23OfficerDontHaveBadgeText
	waitsfx
	playsound SFX_WRONG
	waitsfx
	promptbutton
	writetext Route23OfficerDontHaveBadgeText2
	waitbutton
	closetext
	turnobject ROUTE23_THUNDERBADGE_OFFICER, DOWN
	applymovement PLAYER, Route23StepDownMovement
	end

.HasThunderBadge:
	writetext Route23OfficerHaveBadgeText
	promptbutton
	writetext Route23OfficerGoRightAheadText
	waitsfx
	playsound SFX_RB_ITEM_1
	waitsfx
		waitbutton ; ?
	closetext
	turnobject ROUTE23_THUNDERBADGE_OFFICER, DOWN
	setevent EVENT_PASSED_THUNDERBADGE_CHECK
	end

Route23RainbowBadgeCheckScript:
	checkevent EVENT_PASSED_RAINBOWBADGE_CHECK
	iftrue EndBadgeCheckScript
	faceobject ROUTE23_RAINBOWBADGE_OFFICER, PLAYER
	faceobject PLAYER, ROUTE23_RAINBOWBADGE_OFFICER
	sjump _Route23RainbowBadgeCheckScript

Route23RainbowBadgeOfficerScript:
	faceplayer
_Route23RainbowBadgeCheckScript:
	opentext
	getstring STRING_BUFFER_3, RainbowBadgeString
	writetext Route23OfficerText
	promptbutton
	checkflag ENGINE_RAINBOWBADGE
	iftrue .HasRainbowBadge
	writetext Route23OfficerDontHaveBadgeText
	waitsfx
	playsound SFX_WRONG
	waitsfx
	promptbutton
	writetext Route23OfficerDontHaveBadgeText2
	waitbutton
	closetext
	turnobject ROUTE23_RAINBOWBADGE_OFFICER, DOWN
	applymovement PLAYER, Route23StepDownMovement
	end

.HasRainbowBadge:
	writetext Route23OfficerHaveBadgeText
	promptbutton
	writetext Route23OfficerGoRightAheadText
	waitsfx
	playsound SFX_RB_ITEM_1
	waitsfx
		waitbutton ; ?
	closetext
	turnobject ROUTE23_RAINBOWBADGE_OFFICER, DOWN
	setevent EVENT_PASSED_RAINBOWBADGE_CHECK
	end

Route23SoulBadgeCheckScript:
	checkevent EVENT_PASSED_SOULBADGE_CHECK
	iftrue EndBadgeCheckScript
	faceobject ROUTE23_SOULBADGE_OFFICER, PLAYER
	faceobject PLAYER, ROUTE23_SOULBADGE_OFFICER
	sjump _Route23SoulBadgeCheckScript

Route23SoulBadgeOfficerScript:
	faceplayer
_Route23SoulBadgeCheckScript:
	opentext
	getstring STRING_BUFFER_3, SoulBadgeString
	writetext Route23OfficerText
	promptbutton
	checkflag ENGINE_SOULBADGE
	iftrue .HasSoulBadge
	writetext Route23OfficerDontHaveBadgeText
	waitsfx
	playsound SFX_WRONG
	waitsfx
	promptbutton
	writetext Route23OfficerDontHaveBadgeText2
	waitbutton
	closetext
	turnobject ROUTE23_SOULBADGE_OFFICER, DOWN
	applymovement PLAYER, Route23StepDownMovement
	end

.HasSoulBadge:
	writetext Route23OfficerHaveBadgeText
	promptbutton
	writetext Route23OfficerGoRightAheadText
	waitsfx
	playsound SFX_RB_ITEM_1
	waitsfx
		waitbutton ; ?
	closetext
	turnobject ROUTE23_SOULBADGE_OFFICER, DOWN
	setevent EVENT_PASSED_SOULBADGE_CHECK
	end

Route23MarshBadgeCheckScript:
	checkevent EVENT_PASSED_MARSHBADGE_CHECK
	iftrue EndBadgeCheckScript
	faceobject ROUTE23_MARSHBADGE_OFFICER, PLAYER
	faceobject PLAYER, ROUTE23_MARSHBADGE_OFFICER
	sjump _Route23MarshBadgeCheckScript

Route23MarshBadgeOfficerScript:
	faceplayer
_Route23MarshBadgeCheckScript:
	opentext
	getstring STRING_BUFFER_3, MarshBadgeString
	writetext Route23OfficerText
	promptbutton
	checkflag ENGINE_MARSHBADGE
	iftrue .HasMarshBadge
	writetext Route23OfficerDontHaveBadgeText
	waitsfx
	playsound SFX_WRONG
	waitsfx
	promptbutton
	writetext Route23OfficerDontHaveBadgeText2
	waitbutton
	closetext
	turnobject ROUTE23_MARSHBADGE_OFFICER, DOWN
	applymovement PLAYER, Route23StepDownMovement
	end

.HasMarshBadge:
	writetext Route23OfficerHaveBadgeText
	promptbutton
	writetext Route23OfficerGoRightAheadText
	waitsfx
	playsound SFX_RB_ITEM_1
	waitsfx
		waitbutton ; ?
	closetext
	turnobject ROUTE23_MARSHBADGE_OFFICER, DOWN
	setevent EVENT_PASSED_MARSHBADGE_CHECK
	end

Route23VolcanoBadgeCheckScript:
	checkevent EVENT_PASSED_VOLCANOBADGE_CHECK
	iftrue EndBadgeCheckScript
	faceobject ROUTE23_VOLCANOBADGE_OFFICER, PLAYER
	faceobject PLAYER, ROUTE23_VOLCANOBADGE_OFFICER
	sjump _Route23VolcanoBadgeCheckScript

Route23VolcanoBadgeOfficerScript:
	faceplayer
_Route23VolcanoBadgeCheckScript:
	opentext
	getstring STRING_BUFFER_3, VolcanoBadgeString
	writetext Route23OfficerText
	promptbutton
	checkflag ENGINE_VOLCANOBADGE
	iftrue .HasVolcanoBadge
	writetext Route23OfficerDontHaveBadgeText
	waitsfx
	playsound SFX_WRONG
	waitsfx
	promptbutton
	writetext Route23OfficerDontHaveBadgeText2
	waitbutton
	closetext
	turnobject ROUTE23_VOLCANOBADGE_OFFICER, DOWN
	applymovement PLAYER, Route23StepDownMovement
	end

.HasVolcanoBadge:
	writetext Route23OfficerHaveBadgeText
	promptbutton
	writetext Route23OfficerGoRightAheadText
	waitsfx
	playsound SFX_RB_ITEM_1
	waitsfx
		waitbutton ; ?
	closetext
	turnobject ROUTE23_VOLCANOBADGE_OFFICER, DOWN
	setevent EVENT_PASSED_VOLCANOBADGE_CHECK
	end

Route23EarthBadgeCheckScript:
	checkevent EVENT_PASSED_EARTHBADGE_CHECK
	iftrue EndBadgeCheckScript
	faceobject ROUTE23_EARTHBADGE_OFFICER, PLAYER
	faceobject PLAYER, ROUTE23_EARTHBADGE_OFFICER
	sjump _Route23EarthBadgeCheckScript

Route23EarthBadgeOfficerScript:
	faceplayer
_Route23EarthBadgeCheckScript:
	opentext
	getstring STRING_BUFFER_3, EarthBadgeString
	writetext Route23OfficerText
	promptbutton
	checkflag ENGINE_EARTHBADGE
	iftrue .HasEarthBadge
	writetext Route23OfficerDontHaveBadgeText
	waitsfx
	playsound SFX_WRONG
	waitsfx
	promptbutton
	writetext Route23OfficerDontHaveBadgeText2
	waitbutton
	closetext
	turnobject ROUTE23_EARTHBADGE_OFFICER, DOWN
	applymovement PLAYER, Route23StepDownMovement
	end

.HasEarthBadge:
	writetext Route23OfficerHaveBadgeText
	promptbutton
	writetext Route23OfficerGoRightAheadText
	waitsfx
	playsound SFX_RB_ITEM_1
	waitsfx
		waitbutton ; ?
	closetext
	turnobject ROUTE23_EARTHBADGE_OFFICER, DOWN
	setevent EVENT_PASSED_EARTHBADGE_CHECK
EndBadgeCheckScript:
	end

BoulderBadgeString: db "BOULDERBADGE@" ; Not used here
CascadeBadgeString: db "CASCADEBADGE@"
ThunderBadgeString: db "THUNDERBADGE@"
RainbowBadgeString: db "RAINBOWBADGE@"
SoulBadgeString:    db "SOULBADGE@"
MarshBadgeString:   db "MARSHBADGE@"
VolcanoBadgeString: db "VOLCANOBADGE@"
EarthBadgeString:   db "EARTHBADGE@"

Route23StepDownMovement:
	step DOWN
	step_end

Route23VictoryRoadSign:
	jumptext Route23VictoryRoadSignText

; IndigoPlateauSignText:
	; text "INDIGO PLATEAU"

	; para "The Ultimate Goal"
	; line "for Trainers!"

	; para "#MON LEAGUE HQ"
	; done

Route23OfficerText:
	text "You can pass here"
	line "only if you have"
	cont "the @"
	text_ram wStringBuffer3
	text "!"
	done

Route23OfficerDontHaveBadgeText:
	text "You don't have the"
	line "@"
	text_ram wStringBuffer3
	text " yet!"
	done

Route23OfficerDontHaveBadgeText2:
	text "You have to have"
	line "it to get to"
	cont "#MON LEAGUE!"
	done

Route23OfficerHaveBadgeText:
	text "Oh! That is the"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

Route23OfficerGoRightAheadText:
	text "OK then! Please,"
	line "go right ahead!"
	done

Route23VictoryRoadSignText:
	text "VICTORY ROAD GATE"
	line "- #MON LEAGUE"
	done

Route23_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 31, VICTORY_ROAD, 1
	warp_event 14, 31, VICTORY_ROAD, 10 ; INDIGO_PLATEAU_POKECENTER_1F, 2
	warp_event  7, 139, ROUTE_22_GATE, 3
	warp_event  8, 139, ROUTE_22_GATE, 4

	def_coord_events
	coord_event  6, 136, SCENE_ALWAYS, Route23CascadeBadgeCheckScript
	coord_event  7, 136, SCENE_ALWAYS, Route23CascadeBadgeCheckScript
	coord_event  9, 136, SCENE_ALWAYS, Route23CascadeBadgeCheckScript

	coord_event  9, 119, SCENE_ALWAYS, Route23ThunderBadgeCheckScript

	coord_event 10, 105, SCENE_ALWAYS, Route23RainbowBadgeCheckScript
	coord_event 11, 105, SCENE_ALWAYS, Route23RainbowBadgeCheckScript
	coord_event 13, 105, SCENE_ALWAYS, Route23RainbowBadgeCheckScript
	coord_event 14, 105, SCENE_ALWAYS, Route23RainbowBadgeCheckScript
	coord_event 15, 105, SCENE_ALWAYS, Route23RainbowBadgeCheckScript

	coord_event  8,  96, SCENE_ALWAYS, Route23SoulBadgeCheckScript
	coord_event  9,  96, SCENE_ALWAYS, Route23SoulBadgeCheckScript
	coord_event 10,  96, SCENE_ALWAYS, Route23SoulBadgeCheckScript
	coord_event 12,  96, SCENE_ALWAYS, Route23SoulBadgeCheckScript
	coord_event 13,  96, SCENE_ALWAYS, Route23SoulBadgeCheckScript

	coord_event  4,  84, SCENE_ALWAYS, Route23MarshBadgeCheckScript
	coord_event  5,  84, SCENE_ALWAYS, Route23MarshBadgeCheckScript
	coord_event  6,  84, SCENE_ALWAYS, Route23MarshBadgeCheckScript
	coord_event  7,  84, SCENE_ALWAYS, Route23MarshBadgeCheckScript

	coord_event 12,  56, SCENE_ALWAYS, Route23VolcanoBadgeCheckScript
	coord_event 13,  56, SCENE_ALWAYS, Route23VolcanoBadgeCheckScript

	coord_event  0,  35, SCENE_ALWAYS, Route23EarthBadgeCheckScript
	coord_event  1,  35, SCENE_ALWAYS, Route23EarthBadgeCheckScript
	coord_event  2,  35, SCENE_ALWAYS, Route23EarthBadgeCheckScript
	coord_event  3,  35, SCENE_ALWAYS, Route23EarthBadgeCheckScript
	coord_event  5,  35, SCENE_ALWAYS, Route23EarthBadgeCheckScript
	coord_event  6,  35, SCENE_ALWAYS, Route23EarthBadgeCheckScript
	coord_event  7,  35, SCENE_ALWAYS, Route23EarthBadgeCheckScript

	def_bg_events
	bg_event  3, 33, BGEVENT_READ, Route23VictoryRoadSign

	def_object_events
	object_event  8, 136, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route23CascadeBadgeOfficerScript, -1
	object_event  8, 119, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route23ThunderBadgeOfficerScript, -1
	object_event 12, 105, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route23RainbowBadgeOfficerScript, -1
	object_event 11,  96, SPRITE_SWIMMER_GUARD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route23SoulBadgeOfficerScript, -1
	object_event  8,  84, SPRITE_SWIMMER_GUARD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route23MarshBadgeOfficerScript, -1
	object_event 11,  56, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route23VolcanoBadgeOfficerScript, -1
	object_event  4,  35, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route23EarthBadgeOfficerScript, -1
