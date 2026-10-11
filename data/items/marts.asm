Marts:
; entries correspond to MART_* constants (see constants/mart_constants.asm)
	table_width 2, Marts
	dw MartCherrygrove
	dw MartCherrygroveDex
	dw MartViolet
	dw MartAzalea
	dw MartCianwood
	dw MartGoldenrod2F1
	dw MartGoldenrod2F2
	dw MartGoldenrod3F
	dw MartGoldenrod4F
	dw MartGoldenrod5F1
	dw MartGoldenrod5F2
	dw MartGoldenrod5F3
	dw MartGoldenrod5F4
	dw MartOlivine
	dw MartEcruteak
	dw MartMahogany1
	dw MartMahogany2
	dw MartBlackthorn
	dw MartViridian
	dw MartPewter
	dw MartCerulean
	dw MartVermilion
	dw MartLavender
	dw MartCeladon2FClerk1
	dw MartCeladon2FClerk2
	dw MartCeladon3F
	dw MartCeladon4F
	dw MartCeladon5FClerk1
	dw MartCeladon5FClerk2
	dw MartFuchsia
	dw MartSaffron
	dw MartCinnabar
	dw MartIndigoPlateau
	dw MartUnderground
	dw MartCeladon2FClerk1_2
	dw MartCeladon2FClerk2_2
	dw MartCeladon4F_2
	dw MartCeladon5FClerk2_2
	assert_table_length NUM_MARTS

MartCherrygrove:
	db 4 ; # items
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end

MartCherrygroveDex:
	db 5 ; # items
	db POKE_BALL
	db POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db -1 ; end

MartViolet:
	db 10 ; # items
	db POKE_BALL
	db POTION
	db ESCAPE_ROPE
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db X_DEFEND
	db X_ATTACK
	db X_SPEED
	db FLOWER_MAIL
	db -1 ; end

MartAzalea:
	db 9 ; # items
	db CHARCOAL
	db POKE_BALL
	db POTION
	db SUPER_POTION
	db ESCAPE_ROPE
	db REPEL
	db ANTIDOTE
	db PARLYZ_HEAL
	db FLOWER_MAIL
	db -1 ; end

MartCianwood:
	db 5 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db -1 ; end

MartGoldenrod2F1:
	db 7 ; # items
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db -1 ; end

MartGoldenrod2F2:
	db 8 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ESCAPE_ROPE
	db REPEL
	db REVIVE
	db FULL_HEAL
	db POKE_DOLL
	db FLOWER_MAIL
	db -1 ; end

MartGoldenrod3F:
	db 7 ; # items
	db X_SPEED
	db X_SPECIAL
	db X_DEFEND
	db X_ATTACK
	db DIRE_HIT
	db GUARD_SPEC
	db X_ACCURACY
	db -1 ; end

MartGoldenrod4F:
	db 5 ; # items
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db HP_UP
	db -1 ; end

MartGoldenrod5F1:
	db 3 ; # items
	; db TM_THUNDERPUNCH
	; db TM_FIRE_PUNCH
	; db TM_ICE_PUNCH
	db -1 ; end

MartGoldenrod5F2:
	db 4 ; # items
	; db TM_THUNDERPUNCH
	; db TM_FIRE_PUNCH
	; db TM_ICE_PUNCH
	; db TM_HEADBUTT
	db -1 ; end

MartGoldenrod5F3:
	db 4 ; # items
	; db TM_THUNDERPUNCH
	; db TM_FIRE_PUNCH
	; db TM_ICE_PUNCH
	; db TM_ROCK_SMASH
	db -1 ; end

MartGoldenrod5F4:
	db 5 ; # items
	; db TM_THUNDERPUNCH
	; db TM_FIRE_PUNCH
	; db TM_ICE_PUNCH
	; db TM_HEADBUTT
	; db TM_ROCK_SMASH
	db -1 ; end

MartOlivine:
	db 9 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db ICE_HEAL
	db SUPER_REPEL
	db SURF_MAIL
	db -1 ; end

MartEcruteak:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db POTION
	db SUPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db AWAKENING
	db BURN_HEAL
	db ICE_HEAL
	db REVIVE
	db -1 ; end

MartMahogany1:
	db 4 ; # items
	db TINYMUSHROOM
	db SLOWPOKETAIL
	db POKE_BALL
	db POTION
	db -1 ; end

MartMahogany2:
	db 9 ; # items
	db RAGECANDYBAR
	db GREAT_BALL
	db SUPER_POTION
	db HYPER_POTION
	db ANTIDOTE
	db PARLYZ_HEAL
	db SUPER_REPEL
	db REVIVE
	db FLOWER_MAIL
	db -1 ; end

MartBlackthorn:
	db 9 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db MAX_POTION
	db FULL_HEAL
	db REVIVE
	db MAX_REPEL
	db X_DEFEND
	db X_ATTACK
	db -1 ; end

MartViridian:
	db 4 ; # items
	db POKE_BALL
	db ANTIDOTE
	db PARLYZ_HEAL
	db BURN_HEAL
	db -1 ; end

MartPewter:
	db 7 ; # items
	db POKE_BALL
	db POTION
	db ESCAPE_ROPE
	db ANTIDOTE
	db BURN_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end

MartCerulean:
	db 7 ; # items
	db POKE_BALL
	db POTION
	db REPEL
	db ANTIDOTE
	db BURN_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end

MartVermilion:
	db 6 ; # items
	db POKE_BALL
	db SUPER_POTION
	db ICE_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db REPEL
	db -1 ; end
	
MartLavender:
	db 9 ; # items
	db GREAT_BALL
	db SUPER_POTION
	db REVIVE
	db ESCAPE_ROPE
	db SUPER_REPEL
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db PARLYZ_HEAL
	db -1 ; end

MartCeladon2FClerk1:
	db 5 ; # items
	db POTION
	db SUPER_POTION
	db REVIVE
	db REPEL
	db SUPER_REPEL
	db -1 ; end

MartCeladon2FClerk2:
	db 8 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ESCAPE_ROPE
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end

MartCeladon3F:
	db 9 ; # items
	db TM_DOUBLE_TEAM
	db TM_REFLECT
	db TM_RAZOR_WIND
	db TM_HORN_DRILL
	db TM_EGG_BOMB
	db TM_MEGA_PUNCH
	db TM_MEGA_KICK
	db TM_TAKE_DOWN
	db TM_SUBMISSION
	db -1 ; end

MartCeladon4F:
	db 5 ; # items
	db POKE_DOLL
	db FIRE_STONE
	db THUNDERSTONE
	db WATER_STONE
	db LEAF_STONE
	db -1 ; end

MartCeladon5FClerk1:
	db 7 ; # items
	db X_ACCURACY
	db GUARD_SPEC
	db DIRE_HIT
	db X_ATTACK
	db X_DEFEND
	db X_SPEED
	db X_SPECIAL
	db -1 ; end

MartCeladon5FClerk2:
	db 5 ; # items
	db HP_UP
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db -1 ; end

MartFuchsia:
	db 6 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db SUPER_POTION
	db REVIVE
	db FULL_HEAL
	db SUPER_REPEL
	db -1 ; end

MartSaffron:
	db 6 ; # items
	db GREAT_BALL
	db HYPER_POTION
	db MAX_REPEL
	db ESCAPE_ROPE
	db FULL_HEAL
	db REVIVE
	db -1 ; end

MartCinnabar:
	db 7 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db HYPER_POTION
	db FULL_HEAL
	db REVIVE
	db MAX_REPEL
	db ESCAPE_ROPE
	db -1 ; end

MartIndigoPlateau:
	db 7 ; # items
	db GREAT_BALL
	db ULTRA_BALL
	db MAX_POTION
	db FULL_RESTORE
	db FULL_HEAL
	db REVIVE
	db MAX_REPEL
	db -1 ; end

MartUnderground:
	db 4 ; # items
	db ENERGYPOWDER
	db ENERGY_ROOT
	db HEAL_POWDER
	db REVIVAL_HERB
	db -1 ; end

MartCeladon2FClerk1_2:
	db 8 ; # items
	db POTION
	db SUPER_POTION
	db HYPER_POTION
	db MAX_POTION
	db REVIVE
	db REPEL
	db SUPER_REPEL
	db MAX_REPEL
	db -1 ; end

MartCeladon2FClerk2_2:
	db 10 ; # items
	db POKE_BALL
	db GREAT_BALL
	db ULTRA_BALL
	db ESCAPE_ROPE
	db FULL_HEAL
	db ANTIDOTE
	db BURN_HEAL
	db ICE_HEAL
	db AWAKENING
	db PARLYZ_HEAL
	db -1 ; end

MartCeladon4F_2:
	db 7 ; # items
	db POKE_DOLL
	db FIRE_STONE
	db THUNDERSTONE
	db WATER_STONE
	db LEAF_STONE
	db MOON_STONE
	db SUN_STONE
	db -1 ; end

MartCeladon5FClerk2_2:
	db 6 ; # items
	db HP_UP
	db PROTEIN
	db IRON
	db CARBOS
	db CALCIUM
	db PP_UP
	db -1 ; end

DefaultMart:
	db 2 ; # items
	db POKE_BALL
	db POTION
	db -1 ; end
