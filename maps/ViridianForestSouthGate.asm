	object_const_def
	const VIRIDIANFORESTSOUTHGATE_GIRL
	const VIRIDIANFORESTSOUTHGATE_TWIN

ViridianForestSouthGate_MapScripts:
	def_scene_scripts

	def_callbacks

ViridianForestSouthGateGirlScript:
	jumptextfaceplayer ViridianForestSouthGateGirlText
	
ViridianForestSouthGateGirlText:
	text "Are you going to"
	line "VIRIDIAN FOREST?"
	
	para "Be careful, it's"
	line "a natural maze!"
	done

ViridianForestSouthGateTwinScript:
	jumptextfaceplayer ViridianForestSouthGateTwinText
	
ViridianForestSouthGateTwinText:
	text "RATTATA may be"
	line "small, but its"
	cont "bite is wicked!"
	
	para "Did you get one?"
	done

ViridianForestSouthGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  0, VIRIDIAN_FOREST, 2
	warp_event  5,  0, VIRIDIAN_FOREST, 3
	warp_event  4,  7, ROUTE_2, 6
	warp_event  5,  7, ROUTE_2, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  8, 4, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ViridianForestSouthGateGirlScript, -1
	object_event  2, 4, SPRITE_TWIN, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 3, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ViridianForestSouthGateTwinScript, -1
