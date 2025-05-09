; Valid sprite IDs for each map group.
; Maps with environment ROUTE or TOWN can only use these sprites.

OutdoorSprites:
; entries correspond to MAPGROUP_* constants
	table_width 2, OutdoorSprites
	dw OlivineGroupSprites
	dw MahoganyGroupSprites
	dw DungeonsGroupSprites
	dw EcruteakGroupSprites
	dw BlackthornGroupSprites
	dw CinnabarGroupSprites
	dw CeruleanGroupSprites
	dw AzaleaGroupSprites
	dw LakeOfRageGroupSprites
	dw VioletGroupSprites
	dw GoldenrodGroupSprites
	dw VermilionGroupSprites
	dw PalletGroupSprites
	dw PewterGroupSprites
	dw FastShipGroupSprites
	dw IndigoGroupSprites
	dw FuchsiaGroupSprites
	dw LavenderGroupSprites
	dw SilverGroupSprites
	dw CableClubGroupSprites
	dw CeladonGroupSprites
	dw CianwoodGroupSprites
	dw ViridianGroupSprites
	dw NewBarkGroupSprites
	dw SaffronGroupSprites
	dw CherrygroveGroupSprites
	assert_table_length NUM_MAP_GROUPS

; Route1 and ViridianCity are connected
; Route2 and PewterCity are connected
; PalletTown and Route21 are connected
PalletGroupSprites:
; Route1, PalletTown
ViridianGroupSprites:
; Route2, Route22, ViridianCity -- Route2_SPLITSET
CinnabarGroupSprites:
; Route19, Route20, Route21, CinnabarIsland -- R/B: Not Route19 -- Route20_SPLITSET, west FUSCHIA
	; SPRITESET_PALLET_VIRIDIAN
	db SPRITE_BLUE
	db SPRITE_YOUNGSTER
	db SPRITE_GIRL
	db SPRITE_FISHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_GRAMPS ; SPRITE_GAMBLER
	db SPRITE_COOLTRAINER_F ; SPRITE_SEEL ; What is this used for?
	db SPRITE_OAK
	db SPRITE_SWIMMER_GUY
	; max 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_GRAMPS_ASLEEP
	;db SPRITE_FRUIT_TREE ; Unused
	db 0 ; end

; Route3 and Route4 are connected
; CeruleanCity and Route5 are connected
PewterGroupSprites:
; Route3, PewterCity
CeruleanGroupSprites:
; Route4, Route9, Route10North, Route24, Route25, CeruleanCity -- Route10_SPLITSET, south Lavender
	; SPRITESET_PEWTER_CERULEAN
	db SPRITE_YOUNGSTER
	db SPRITE_ROCKET
	db SPRITE_SUPER_NERD
	db SPRITE_HIKER
	db SPRITE_LASS ; MONSTER - used for SLOWBRO, but do any of these walk around?
	db SPRITE_BLUE
	db SPRITE_OFFICER ; GUARD
	db SPRITE_COOLTRAINER_F ; Could be replaced by LASS
	db SPRITE_COOLTRAINER_M
	; max 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	;db SPRITE_UNUSED_GAMBLER_ASLEEP_2
	db SPRITE_SLOWPOKE ; TBD
	db 0 ; end

LavenderGroupSprites:
; Route8, Route12, Route10South, LavenderTown -- Route8_SPLITSET, east SAFFRON || Route10_SPLITSET, north PEWTER/CERULEAN || Route 12_SPLITSET, south SILENCE_BRIDGE
	; SPRITESET_LAVENDER
	db SPRITE_TWIN ; "LITTLE_GIRL"
	db SPRITE_GIRL
	db SPRITE_SUPER_NERD
	db SPRITE_HIKER
	db SPRITE_SAGE ; GAMBLER
	db SPRITE_MONSTER ; Used for...?
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_OFFICER ; GUARD ; Used for...?
	; max 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	;db SPRITE_UNUSED_GAMBLER_ASLEEP_2
	db 0 ; end

CeladonGroupSprites:
; Route7, Route16, Route17, CeladonCity -- R/B: Not Route17 (CYCLING_ROAD) -- Route16_SPLITSET, east CYCLING_ROAD || Route7_SPLITSET, west SAFFRON
	; SPRITESET_CELADON
	db SPRITE_TWIN ; LITTLE_GIRL
	db SPRITE_BUG_CATCHER ; LITTLE_BOY
	db SPRITE_GIRL
	db SPRITE_FISHER
	db SPRITE_POKEFAN_M ; MIDDLE_AGED_MAN
	db SPRITE_GRAMPS
	db SPRITE_MONSTER
	db SPRITE_OFFICER ; GUARD
	db SPRITE_ROCKET
	; max 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_SNORLAX
	db SPRITE_POLIWAG
	db 0 ; end

VermilionGroupSprites:
; Route6, Route11, VermilionCity -- Route6_SPLITSET, north SAFFRON
	; SPRITESET_VERMILION
	db SPRITE_BEAUTY
	db SPRITE_SUPER_NERD
	db SPRITE_YOUNGSTER
	db SPRITE_SAGE ; GAMBLER
	db SPRITE_MONSTER
	db SPRITE_OFFICER ; GUARD
	db SPRITE_SAILOR
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	; max 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_MACHOP
	;db SPRITE_UNUSED_GAMBLER_ASLEEP_2
	db 0 ; end

IndigoGroupSprites:
; Route23
	; SPRITESET_INDIGO
	db SPRITE_YOUNGSTER
	db SPRITE_GYM_GUIDE
	db SPRITE_MONSTER
	db SPRITE_BLUE
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_SWIMMER_GUY
	db SPRITE_OFFICER ; GUARD
	db SPRITE_SAGE ; GAMBLER
	; 9 of max 9 walking sprites
	db SPRITE_POKE_BALL
	; db SPRITE_UNUSED_GAMBLER_ASLEEP_2
	db 0 ; end

SaffronGroupSprites:
; Route5, SaffronCity -- Route5_SPLITSET, north PEWTER/CERULEAN
	; SPRITESET_SAFFRON
	db SPRITE_ROCKET
	db SPRITE_SCIENTIST
	; db SPRITE_NONE
	db SPRITE_RECEPTIONIST ; SILPH_WORKER_F
	db SPRITE_GENTLEMAN
	db SPRITE_BIRD
	db SPRITE_ROCKER
	db SPRITE_COOLTRAINER_M
	db SPRITE_MONSTER
	; 8 of max 9 walking sprites
	db SPRITE_POKE_BALL
	; db SPRITE_UNUSED_GAMBLER_ASLEEP_2
	db SPRITE_SILPH_WORKER_M
	db 0 ; end

; Route13 & Route14 -- south Route12, west Route11 & Route15
; SPRITESET_SILENCE_BRIDGE
	db SPRITE_BIKER
	db SPRITE_SUPER_NERD
	db SPRITE_POKEFAN_M ; MIDDLE_AGED_MAN
	db SPRITE_COOLTRAINER_F
	db SPRITE_COOLTRAINER_M
	db SPRITE_BEAUTY
	db SPRITE_FISHER
	db SPRITE_ROCKER
	db SPRITE_MONSTER
	; 9 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_SNORLAX
	db 0 ; end

; Route17 -- east Route16 & Route18
; SPRITESET_CYCLING_ROAD
	db SPRITE_BIKER
	db SPRITE_COOLTRAINER_M
	; db SPRITE_NONE
	db SPRITE_FISHER
	db SPRITE_ROCKER
	db SPRITE_HIKER
	db SPRITE_SAGE ; GAMBLER
	db SPRITE_POKEFAN_M ; MIDDLE_AGED_MAN
	db SPRITE_SUPER_NERD
	; 8 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_SNORLAX
	db SPRITE_SILPH_WORKER_M
	db 0 ; end

FuchsiaGroupSprites:
; Route13, Route14, Route15, Route18, FuchsiaCity

;R/B: Route19 added, and Route20_SPLITSET east PALLET/VIRIDIAN & west FUSCHIA -- Route15_SPLITSET, west SILENCE_BRIDGE || Route18_SPLITSET, east CYCLING_ROAD

; SPRITESET_FUCHSIA
	db SPRITE_BIRD
	db SPRITE_COOLTRAINER_M
	db SPRITE_FAIRY
	db SPRITE_FISHER
	db SPRITE_SAGE ; GAMBLER
	db SPRITE_MONSTER
	db SPRITE_SURF ; SEEL
	db SPRITE_SWIMMER_GUY
	db SPRITE_YOUNGSTER
	; 9 of max 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FOSSIL
	db 0 ; end

; Route29 and CherrygroveCity are connected
NewBarkGroupSprites:
; Route26, Route27, Route29, NewBarkTown
CherrygroveGroupSprites:
; Route30, Route31, CherrygroveCity
	db SPRITE_RIVAL
	db SPRITE_TEACHER
	db SPRITE_FISHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_YOUNGSTER
	db SPRITE_MONSTER
	db SPRITE_GRAMPS
	db SPRITE_BUG_CATCHER
	db SPRITE_COOLTRAINER_F
	; max 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end

; Route37 and EcruteakCity are connected
VioletGroupSprites:
; Route32, Route35, Route36, Route37, VioletCity
EcruteakGroupSprites:
; EcruteakCity
	db SPRITE_FISHER
	db SPRITE_LASS
	db SPRITE_OFFICER
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_COOLTRAINER_M
	db SPRITE_BUG_CATCHER
	db SPRITE_SUPER_NERD
	; 8 of max 9 walking sprites
	db SPRITE_WEIRD_TREE ; variable sprite: becomes SPRITE_SUDOWOODO and SPRITE_TWIN
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db SPRITE_SUICUNE
	db 0 ; end

AzaleaGroupSprites:
; Route33, AzaleaTown
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_POKEFAN_M
	db SPRITE_TEACHER
	db SPRITE_AZALEA_ROCKET ; variable sprite: becomes SPRITE_ROCKET and SPRITE_RIVAL
	db SPRITE_LASS
	; 6 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_SLOWPOKE
	db SPRITE_KURT_OUTSIDE ; non-walking version of SPRITE_KURT
	db 0 ; end

GoldenrodGroupSprites:
; Route34, GoldenrodCity
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_OFFICER
	db SPRITE_POKEFAN_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_ROCKET
	db SPRITE_LASS
	; 7 of max 9 walking sprites
	db SPRITE_DAY_CARE_MON_1
	db SPRITE_DAY_CARE_MON_2
	db SPRITE_POKE_BALL
	db 0 ; end

; OlivineCity and Route40 are connected
OlivineGroupSprites:
; Route38, Route39, OlivineCity
CianwoodGroupSprites:
; Route40, Route41, CianwoodCity, BattleTowerOutside
	db SPRITE_OLIVINE_RIVAL ; variable sprite: becomes SPRITE_RIVAL and SPRITE_SWIMMER_GUY
	db SPRITE_POKEFAN_M
	db SPRITE_LASS
	db SPRITE_BEAUTY
	db SPRITE_SWIMMER_GIRL
	db SPRITE_SAILOR
	db SPRITE_POKEFAN_F
	db SPRITE_SUPER_NERD
	; 8 of max 9 walking sprites
	db SPRITE_TAUROS
	db SPRITE_FRUIT_TREE
	db SPRITE_ROCK
	db SPRITE_STANDING_YOUNGSTER ; non-walking version of SPRITE_YOUNGSTER
	db SPRITE_SUICUNE
	db 0 ; end

MahoganyGroupSprites:
; Route42, Route44, MahoganyTown
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_SUPER_NERD
	db SPRITE_COOLTRAINER_M
	db SPRITE_POKEFAN_M
	db SPRITE_COOLTRAINER_F
	db SPRITE_FISHER
	; 8 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db SPRITE_SUICUNE
	db 0 ; end

LakeOfRageGroupSprites:
; Route43, LakeOfRage
	db SPRITE_LANCE
	db SPRITE_GRAMPS
	db SPRITE_SUPER_NERD
	db SPRITE_COOLTRAINER_F
	db SPRITE_FISHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_LASS
	db SPRITE_YOUNGSTER
	; 8 of max 9 walking sprites
	db SPRITE_GYARADOS
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db 0 ; end

BlackthornGroupSprites:
; Route45, Route46, BlackthornCity
	db SPRITE_GRAMPS
	db SPRITE_YOUNGSTER
	db SPRITE_LASS
	db SPRITE_SUPER_NERD
	db SPRITE_COOLTRAINER_M
	db SPRITE_POKEFAN_M
	db SPRITE_BLACK_BELT
	db SPRITE_COOLTRAINER_F
	; 8 of max 9 walking sprites
	db SPRITE_FRUIT_TREE
	db SPRITE_POKE_BALL
	db 0 ; end

SilverGroupSprites:
; Route28, SilverCaveOutside
	; 0 of max 9 walking sprites
	db 0 ; end

DungeonsGroupSprites:
; NationalPark, NationalParkBugContest, RuinsOfAlphOutside
	db SPRITE_LASS
	db SPRITE_POKEFAN_F
	db SPRITE_TEACHER
	db SPRITE_YOUNGSTER
	db SPRITE_POKEFAN_M
	db SPRITE_ROCKER
	db SPRITE_FISHER
	db SPRITE_SCIENTIST
	; 8 of max 9 walking sprites
	db SPRITE_GAMEBOY_KID
	db SPRITE_GROWLITHE
	db SPRITE_POKE_BALL
	db 0 ; end

FastShipGroupSprites:
; OlivinePort, VermilionPort, MountMoonSquare, TinTowerRoof
	db SPRITE_SAILOR
	db SPRITE_FISHING_GURU
	db SPRITE_SUPER_NERD
	db SPRITE_COOLTRAINER_F
	db SPRITE_YOUNGSTER
	db SPRITE_FAIRY
	; 6 of max 9 walking sprites
	db SPRITE_HO_OH
	db SPRITE_ROCK
	db 0 ; end

CableClubGroupSprites:
; (no outdoor maps)
	; 0 of max 9 walking sprites
	db 0 ; end
