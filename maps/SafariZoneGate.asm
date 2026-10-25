	object_const_def
	const SAFARIZONEGATE_SAFARI_ZONE_WORKER_M1
	const SAFARIZONEGATE_SAFARI_ZONE_WORKER_M2

SafariZoneGate_MapScripts:
	def_scene_scripts

	def_callbacks

SafariZoneGateWorker1Script:
SafariZoneGateWorker2Script:
	end

SafariZoneGate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, FUCHSIA_CITY, 5
	warp_event  5,  7, FUCHSIA_CITY, 5
	warp_event  4,  0, SAFARI_ZONE_CENTER, 1
	warp_event  5,  0, SAFARI_ZONE_CENTER, 2

	def_coord_events

	def_bg_events

	def_object_events
	object_event  9,  3, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SafariZoneGateWorker1Script, -1
	object_event  0,  4, SPRITE_SAFARI_ZONE_WORKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SafariZoneGateWorker2Script, -1
