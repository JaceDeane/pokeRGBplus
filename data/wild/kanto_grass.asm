; Kanto Pokémon in grass (Rate: 20%, 20%, 15%, 10%, 10%, 10%, 5%, 5%, 4%, 1%)

KantoGrassWildMons:

	def_grass_wildmons DIGLETTS_CAVE ; R/B
	db 20 percent, 20 percent, 20 percent ; encounter rates: morn/day/nite
	; morn
	db 18, DIGLETT
	db 19, DIGLETT
	db 17, DIGLETT
	db 20, DIGLETT
	db 16, DIGLETT
	db 15, DIGLETT
	db 21, DIGLETT
	db 22, DIGLETT
	db 29, DUGTRIO
	db 31, DUGTRIO
	; day
	db 18, DIGLETT
	db 19, DIGLETT
	db 17, DIGLETT
	db 20, DIGLETT
	db 16, DIGLETT
	db 15, DIGLETT
	db 21, DIGLETT
	db 22, DIGLETT
	db 29, DUGTRIO
	db 31, DUGTRIO
	; nite
	db 18, DIGLETT
	db 19, DIGLETT
	db 17, DIGLETT
	db 20, DIGLETT
	db 16, DIGLETT
	db 15, DIGLETT
	db 21, DIGLETT
	db 22, DIGLETT
	db 29, DUGTRIO
	db 31, DUGTRIO
	end_grass_wildmons

	def_grass_wildmons MOUNT_MOON_1F ; R/B
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  8, ZUBAT
	db  7, ZUBAT
	db  9, ZUBAT
	db  8, GEODUDE
	db  6, ZUBAT
	db 10, ZUBAT
	db 10, GEODUDE
	db  8, PARAS
	db 11, ZUBAT
	db  8, CLEFAIRY
	; day
	db  8, ZUBAT
	db  7, ZUBAT
	db  9, ZUBAT
	db  8, GEODUDE
	db  6, ZUBAT
	db 10, ZUBAT
	db 10, GEODUDE
	db  8, PARAS
	db 11, ZUBAT
	db  8, CLEFAIRY
	; nite
	db  8, ZUBAT
	db  7, ZUBAT
	db  9, ZUBAT
	db  8, GEODUDE
	db  6, ZUBAT
	db 10, ZUBAT
	db 10, GEODUDE
	db  8, PARAS
	db 11, ZUBAT
	db  8, CLEFAIRY
	end_grass_wildmons
	
	def_grass_wildmons MOUNT_MOON_B1F ; R/B
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  8, ZUBAT
	db  7, ZUBAT
	db  7, GEODUDE
	db  8, GEODUDE
	db  9, ZUBAT
	db 10, PARAS
	db 10, ZUBAT
	db 11, ZUBAT
	db  9, CLEFAIRY
	db  9, GEODUDE
	; day
	db  8, ZUBAT
	db  7, ZUBAT
	db  7, GEODUDE
	db  8, GEODUDE
	db  9, ZUBAT
	db 10, PARAS
	db 10, ZUBAT
	db 11, ZUBAT
	db  9, CLEFAIRY
	db  9, GEODUDE
	; nite
	db  8, ZUBAT
	db  7, ZUBAT
	db  7, GEODUDE
	db  8, GEODUDE
	db  9, ZUBAT
	db 10, PARAS
	db 10, ZUBAT
	db 11, ZUBAT
	db  9, CLEFAIRY
	db  9, GEODUDE
	end_grass_wildmons
	
	def_grass_wildmons MOUNT_MOON_B2F ; R/B
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  9, ZUBAT
	db  9, GEODUDE
	db 10, ZUBAT
	db 10, GEODUDE
	db 11, ZUBAT
	db 10, PARAS
	db 12, PARAS
	db 10, CLEFAIRY
	db 12, ZUBAT
	db 12, CLEFAIRY
	; day
	db  9, ZUBAT
	db  9, GEODUDE
	db 10, ZUBAT
	db 10, GEODUDE
	db 11, ZUBAT
	db 10, PARAS
	db 12, PARAS
	db 10, CLEFAIRY
	db 12, ZUBAT
	db 12, CLEFAIRY
	; nite
	db  9, ZUBAT
	db  9, GEODUDE
	db 10, ZUBAT
	db 10, GEODUDE
	db 11, ZUBAT
	db 10, PARAS
	db 12, PARAS
	db 10, CLEFAIRY
	db 12, ZUBAT
	db 12, CLEFAIRY
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_1F ; R/B
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	db 16, ZUBAT
	db 17, ZUBAT
	db 17, GEODUDE
	db 15, MACHOP
	db 16, GEODUDE
	db 18, ZUBAT
	db 15, ZUBAT
	db 17, MACHOP
	db 13, ONIX
	db 15, ONIX
	; day
	db 16, ZUBAT
	db 17, ZUBAT
	db 17, GEODUDE
	db 15, MACHOP
	db 16, GEODUDE
	db 18, ZUBAT
	db 15, ZUBAT
	db 17, MACHOP
	db 13, ONIX
	db 15, ONIX
	; nite
	db 16, ZUBAT
	db 17, ZUBAT
	db 17, GEODUDE
	db 15, MACHOP
	db 16, GEODUDE
	db 18, ZUBAT
	db 15, ZUBAT
	db 17, MACHOP
	db 13, ONIX
	db 15, ONIX
	end_grass_wildmons

	def_grass_wildmons ROCK_TUNNEL_B1F ; R/B
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	db 16, ZUBAT
	db 17, ZUBAT
	db 17, GEODUDE
	db 15, MACHOP
	db 16, GEODUDE
	db 18, ZUBAT
	db 17, MACHOP
	db 17, ONIX
	db 13, ONIX
	db 18, GEODUDE
	; day
	db 16, ZUBAT
	db 17, ZUBAT
	db 17, GEODUDE
	db 15, MACHOP
	db 16, GEODUDE
	db 18, ZUBAT
	db 17, MACHOP
	db 17, ONIX
	db 13, ONIX
	db 18, GEODUDE
	; nite
	db 16, ZUBAT
	db 17, ZUBAT
	db 17, GEODUDE
	db 15, MACHOP
	db 16, GEODUDE
	db 18, ZUBAT
	db 17, MACHOP
	db 17, ONIX
	db 13, ONIX
	db 18, GEODUDE
	end_grass_wildmons

	; def_grass_wildmons VICTORY_ROAD
	; db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; ; morn
	; db 34, GRAVELER
	; db 32, RHYHORN
	; db 33, ONIX
	; db 34, GOLBAT
	; db 35, SANDSLASH
	; db 35, RHYDON
	; db 35, RHYDON
	; ; day
	; db 34, GRAVELER
	; db 32, RHYHORN
	; db 33, ONIX
	; db 34, GOLBAT
	; db 35, SANDSLASH
	; db 35, RHYDON
	; db 35, RHYDON
	; ; nite
	; db 34, GOLBAT
	; db 34, GRAVELER
	; db 32, ONIX
	; db 36, GRAVELER
	; db 38, GRAVELER
	; db 40, GRAVELER
	; db 40, GRAVELER
	; end_grass_wildmons
	
	def_grass_wildmons VIRIDIAN_FOREST ; R/B
	db 8 percent, 8 percent, 8 percent ; encounter rates: morn/day/nite
	; morn
IF DEF(_RED)
	db  4, WEEDLE
	db  5, KAKUNA
	db  3, WEEDLE
	db  5, WEEDLE
	db  4, KAKUNA
	db  6, KAKUNA
	db  4, METAPOD
	db  3, CATERPIE
ENDC
IF DEF(_BLUE)
	db  4, CATERPIE
	db  5, METAPOD
	db  3, CATERPIE
	db  5, CATERPIE
	db  4, METAPOD
	db  6, METAPOD
	db  4, KAKUNA
	db  3, WEEDLE
ENDC
	db  3, PIKACHU
	db  5, PIKACHU
	; day
IF DEF(_RED)
	db  4, WEEDLE
	db  5, KAKUNA
	db  3, WEEDLE
	db  5, WEEDLE
	db  4, KAKUNA
	db  6, KAKUNA
	db  4, METAPOD
	db  3, CATERPIE
ENDC
IF DEF(_BLUE)
	db  4, CATERPIE
	db  5, METAPOD
	db  3, CATERPIE
	db  5, CATERPIE
	db  4, METAPOD
	db  6, METAPOD
	db  4, KAKUNA
	db  3, WEEDLE
ENDC
	db  3, PIKACHU
	db  5, PIKACHU
	; nite
IF DEF(_RED)
	db  4, WEEDLE
	db  5, KAKUNA
	db  3, WEEDLE
	db  5, WEEDLE
	db  4, KAKUNA
	db  6, KAKUNA
	db  4, METAPOD
	db  3, CATERPIE
ENDC
IF DEF(_BLUE)
	db  4, CATERPIE
	db  5, METAPOD
	db  3, CATERPIE
	db  5, CATERPIE
	db  4, METAPOD
	db  6, METAPOD
	db  4, KAKUNA
	db  3, WEEDLE
ENDC
	db  3, PIKACHU
	db  5, PIKACHU
	end_grass_wildmons

	; def_grass_wildmons TOHJO_FALLS
	; db 6 percent, 6 percent, 6 percent ; encounter rates: morn/day/nite
	; ; morn
	; db 22, ZUBAT
	; db 22, RATICATE
	; db 24, GOLBAT
	; db 21, SLOWPOKE
	; db 20, RATTATA
	; db 23, SLOWPOKE
	; db 23, SLOWPOKE
	; ; day
	; db 22, ZUBAT
	; db 22, RATICATE
	; db 24, GOLBAT
	; db 21, SLOWPOKE
	; db 20, RATTATA
	; db 23, SLOWPOKE
	; db 23, SLOWPOKE
	; ; nite
	; db 22, ZUBAT
	; db 22, RATICATE
	; db 24, GOLBAT
	; db 21, SLOWPOKE
	; db 20, RATTATA
	; db 23, SLOWPOKE
	; db 23, SLOWPOKE
	; end_grass_wildmons

	def_grass_wildmons ROUTE_1 ; R/B
	db 25 percent, 25 percent, 25 percent ; encounter rates: morn/day/nite
	; morn
	db  3, PIDGEY
	db  3, RATTATA
	db  3, RATTATA
	db  2, RATTATA
	db  2, PIDGEY
	db  3, PIDGEY
	db  3, PIDGEY
	db  4, RATTATA
	db  4, PIDGEY
	db  5, PIDGEY
	; day
	db  3, PIDGEY
	db  3, RATTATA
	db  3, RATTATA
	db  2, RATTATA
	db  2, PIDGEY
	db  3, PIDGEY
	db  3, PIDGEY
	db  4, RATTATA
	db  4, PIDGEY
	db  5, PIDGEY
	; nite
	db  3, PIDGEY
	db  3, RATTATA
	db  3, RATTATA
	db  2, RATTATA
	db  2, PIDGEY
	db  3, PIDGEY
	db  3, PIDGEY
	db  4, RATTATA
	db  4, PIDGEY
	db  5, PIDGEY
	end_grass_wildmons

	def_grass_wildmons ROUTE_2 ; R/B
	db 10 percent, 10 percent, 10 percent ; encounter rates: morn/day/nite
	; morn
	db  3, RATTATA
	db  3, PIDGEY
	db  4, PIDGEY
	db  4, RATTATA
	db  5, PIDGEY
IF DEF(_RED)
	db  3, WEEDLE
	db  2, RATTATA
	db  5, RATTATA
	db  4, WEEDLE
	db  5, WEEDLE
ENDC
IF DEF(_BLUE)
	db  3, CATERPIE
	db  2, RATTATA
	db  5, RATTATA
	db  4, CATERPIE
	db  5, CATERPIE
ENDC
	; day
	db  3, RATTATA
	db  3, PIDGEY
	db  4, PIDGEY
	db  4, RATTATA
	db  5, PIDGEY
IF DEF(_RED)
	db  3, WEEDLE
	db  2, RATTATA
	db  5, RATTATA
	db  4, WEEDLE
	db  5, WEEDLE
ENDC
IF DEF(_BLUE)
	db  3, CATERPIE
	db  2, RATTATA
	db  5, RATTATA
	db  4, CATERPIE
	db  5, CATERPIE
ENDC
	; nite
	db  3, RATTATA
	db  3, PIDGEY
	db  4, PIDGEY
	db  4, RATTATA
	db  5, PIDGEY
IF DEF(_RED)
	db  3, WEEDLE
	db  2, RATTATA
	db  5, RATTATA
	db  4, WEEDLE
	db  5, WEEDLE
ENDC
IF DEF(_BLUE)
	db  3, CATERPIE
	db  2, RATTATA
	db  5, RATTATA
	db  4, CATERPIE
	db  5, CATERPIE
ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_3 ; R/B
	db 20 percent, 20 percent, 20 percent ; encounter rates: morn/day/nite
	; morn
	db  6, PIDGEY
	db  5, SPEAROW
	db  7, PIDGEY
	db  6, SPEAROW
	db  7, SPEAROW
	db  8, PIDGEY
	db  8, SPEAROW
	db  3, JIGGLYPUFF
	db  5, JIGGLYPUFF
	db  7, JIGGLYPUFF
	; day
	db  6, PIDGEY
	db  5, SPEAROW
	db  7, PIDGEY
	db  6, SPEAROW
	db  7, SPEAROW
	db  8, PIDGEY
	db  8, SPEAROW
	db  3, JIGGLYPUFF
	db  5, JIGGLYPUFF
	db  7, JIGGLYPUFF
	; nite
	db  6, PIDGEY
	db  5, SPEAROW
	db  7, PIDGEY
	db  6, SPEAROW
	db  7, SPEAROW
	db  8, PIDGEY
	db  8, SPEAROW
	db  3, JIGGLYPUFF
	db  5, JIGGLYPUFF
	db  7, JIGGLYPUFF
	end_grass_wildmons

	def_grass_wildmons ROUTE_4 ; R/B
	db 20 percent, 20 percent, 20 percent ; encounter rates: morn/day/nite
	; morn
	db 10, RATTATA
	db 10, SPEAROW
	db  8, RATTATA
IF DEF(_RED)
	db  6, EKANS
	db  8, SPEAROW
	db 10, EKANS
	db 12, RATTATA
	db 12, SPEAROW
	db  8, EKANS
	db 12, EKANS
ENDC
IF DEF(_BLUE)
	db  6, SANDSHREW
	db  8, SPEAROW
	db 10, SANDSHREW
	db 12, RATTATA
	db 12, SPEAROW
	db  8, SANDSHREW
	db 12, SANDSHREW
ENDC
	; day
	db 10, RATTATA
	db 10, SPEAROW
	db  8, RATTATA
IF DEF(_RED)
	db  6, EKANS
	db  8, SPEAROW
	db 10, EKANS
	db 12, RATTATA
	db 12, SPEAROW
	db  8, EKANS
	db 12, EKANS
ENDC
IF DEF(_BLUE)
	db  6, SANDSHREW
	db  8, SPEAROW
	db 10, SANDSHREW
	db 12, RATTATA
	db 12, SPEAROW
	db  8, SANDSHREW
	db 12, SANDSHREW
ENDC
	; nite
	db 10, RATTATA
	db 10, SPEAROW
	db  8, RATTATA
IF DEF(_RED)
	db  6, EKANS
	db  8, SPEAROW
	db 10, EKANS
	db 12, RATTATA
	db 12, SPEAROW
	db  8, EKANS
	db 12, EKANS
ENDC
IF DEF(_BLUE)
	db  6, SANDSHREW
	db  8, SPEAROW
	db 10, SANDSHREW
	db 12, RATTATA
	db 12, SPEAROW
	db  8, SANDSHREW
	db 12, SANDSHREW
ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_5 ; R/B
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
IF DEF(_RED)
	db 13, ODDISH
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, MANKEY
	db 12, MANKEY
	db 15, ODDISH
	db 16, ODDISH
	db 16, PIDGEY
	db 14, MANKEY
	db 16, MANKEY
ENDC
IF DEF(_BLUE)
	db 13, BELLSPROUT
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, MEOWTH
	db 12, MEOWTH
	db 15, BELLSPROUT
	db 16, BELLSPROUT
	db 16, PIDGEY
	db 14, MEOWTH
	db 16, MEOWTH
ENDC
	; day
IF DEF(_RED)
	db 13, ODDISH
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, MANKEY
	db 12, MANKEY
	db 15, ODDISH
	db 16, ODDISH
	db 16, PIDGEY
	db 14, MANKEY
	db 16, MANKEY
ENDC
IF DEF(_BLUE)
	db 13, BELLSPROUT
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, MEOWTH
	db 12, MEOWTH
	db 15, BELLSPROUT
	db 16, BELLSPROUT
	db 16, PIDGEY
	db 14, MEOWTH
	db 16, MEOWTH
ENDC
	; nite
IF DEF(_RED)
	db 13, ODDISH
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, MANKEY
	db 12, MANKEY
	db 15, ODDISH
	db 16, ODDISH
	db 16, PIDGEY
	db 14, MANKEY
	db 16, MANKEY
ENDC
IF DEF(_BLUE)
	db 13, BELLSPROUT
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, MEOWTH
	db 12, MEOWTH
	db 15, BELLSPROUT
	db 16, BELLSPROUT
	db 16, PIDGEY
	db 14, MEOWTH
	db 16, MEOWTH
ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_6 ; R/B
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
IF DEF(_RED)
	db 13, ODDISH
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, MANKEY
	db 12, MANKEY
	db 15, ODDISH
	db 16, ODDISH
	db 16, PIDGEY
	db 14, MANKEY
	db 16, MANKEY
ENDC
IF DEF(_BLUE)
	db 13, BELLSPROUT
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, MEOWTH
	db 12, MEOWTH
	db 15, BELLSPROUT
	db 16, BELLSPROUT
	db 16, PIDGEY
	db 14, MEOWTH
	db 16, MEOWTH
ENDC
	; day
IF DEF(_RED)
	db 13, ODDISH
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, MANKEY
	db 12, MANKEY
	db 15, ODDISH
	db 16, ODDISH
	db 16, PIDGEY
	db 14, MANKEY
	db 16, MANKEY
ENDC
IF DEF(_BLUE)
	db 13, BELLSPROUT
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, MEOWTH
	db 12, MEOWTH
	db 15, BELLSPROUT
	db 16, BELLSPROUT
	db 16, PIDGEY
	db 14, MEOWTH
	db 16, MEOWTH
ENDC
	; nite
IF DEF(_RED)
	db 13, ODDISH
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, MANKEY
	db 12, MANKEY
	db 15, ODDISH
	db 16, ODDISH
	db 16, PIDGEY
	db 14, MANKEY
	db 16, MANKEY
ENDC
IF DEF(_BLUE)
	db 13, BELLSPROUT
	db 13, PIDGEY
	db 15, PIDGEY
	db 10, MEOWTH
	db 12, MEOWTH
	db 15, BELLSPROUT
	db 16, BELLSPROUT
	db 16, PIDGEY
	db 14, MEOWTH
	db 16, MEOWTH
ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_7 ; R/B
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	db 19, PIDGEY
IF DEF(_RED)
	db 19, ODDISH
	db 17, MANKEY
	db 22, ODDISH
	db 22, PIDGEY
	db 18, MANKEY
	db 18, GROWLITHE
	db 20, GROWLITHE
	db 19, MANKEY
	db 20, MANKEY
ENDC
IF DEF(_BLUE)
	db 19, BELLSPROUT
	db 17, MEOWTH
	db 22, BELLSPROUT
	db 22, PIDGEY
	db 18, MEOWTH
	db 18, VULPIX
	db 20, VULPIX
	db 19, MEOWTH
	db 20, MEOWTH
ENDC
	; day
	db 19, PIDGEY
IF DEF(_RED)
	db 19, ODDISH
	db 17, MANKEY
	db 22, ODDISH
	db 22, PIDGEY
	db 18, MANKEY
	db 18, GROWLITHE
	db 20, GROWLITHE
	db 19, MANKEY
	db 20, MANKEY
ENDC
IF DEF(_BLUE)
	db 19, BELLSPROUT
	db 17, MEOWTH
	db 22, BELLSPROUT
	db 22, PIDGEY
	db 18, MEOWTH
	db 18, VULPIX
	db 20, VULPIX
	db 19, MEOWTH
	db 20, MEOWTH
ENDC
	; nite
	db 19, PIDGEY
IF DEF(_RED)
	db 19, ODDISH
	db 17, MANKEY
	db 22, ODDISH
	db 22, PIDGEY
	db 18, MANKEY
	db 18, GROWLITHE
	db 20, GROWLITHE
	db 19, MANKEY
	db 20, MANKEY
ENDC
IF DEF(_BLUE)
	db 19, BELLSPROUT
	db 17, MEOWTH
	db 22, BELLSPROUT
	db 22, PIDGEY
	db 18, MEOWTH
	db 18, VULPIX
	db 20, VULPIX
	db 19, MEOWTH
	db 20, MEOWTH
ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_8 ; R/B
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	db 18, PIDGEY
IF DEF(_RED)
	db 18, MANKEY
	db 17, EKANS
	db 16, GROWLITHE
	db 20, PIDGEY
	db 20, MANKEY
	db 19, EKANS
	db 17, GROWLITHE
	db 15, GROWLITHE
	db 18, GROWLITHE
ENDC
IF DEF(_BLUE)
	db 18, MEOWTH
	db 17, SANDSHREW
	db 16, VULPIX
	db 20, PIDGEY
	db 20, MEOWTH
	db 19, SANDSHREW
	db 17, VULPIX
	db 15, VULPIX
	db 18, VULPIX
ENDC
	; day
	db 18, PIDGEY
IF DEF(_RED)
	db 18, MANKEY
	db 17, EKANS
	db 16, GROWLITHE
	db 20, PIDGEY
	db 20, MANKEY
	db 19, EKANS
	db 17, GROWLITHE
	db 15, GROWLITHE
	db 18, GROWLITHE
ENDC
IF DEF(_BLUE)
	db 18, MEOWTH
	db 17, SANDSHREW
	db 16, VULPIX
	db 20, PIDGEY
	db 20, MEOWTH
	db 19, SANDSHREW
	db 17, VULPIX
	db 15, VULPIX
	db 18, VULPIX
ENDC
	; nite
	db 18, PIDGEY
IF DEF(_RED)
	db 18, MANKEY
	db 17, EKANS
	db 16, GROWLITHE
	db 20, PIDGEY
	db 20, MANKEY
	db 19, EKANS
	db 17, GROWLITHE
	db 15, GROWLITHE
	db 18, GROWLITHE
ENDC
IF DEF(_BLUE)
	db 18, MEOWTH
	db 17, SANDSHREW
	db 16, VULPIX
	db 20, PIDGEY
	db 20, MEOWTH
	db 19, SANDSHREW
	db 17, VULPIX
	db 15, VULPIX
	db 18, VULPIX
ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_9 ; R/B
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	db 16, RATTATA
	db 16, SPEAROW
	db 14, RATTATA
IF DEF(_RED)
	db 11, EKANS
	db 13, SPEAROW
	db 15, EKANS
	db 17, RATTATA
	db 17, SPEAROW
	db 13, EKANS
	db 17, EKANS
ENDC
IF DEF(_BLUE)
	db 11, SANDSHREW
	db 13, SPEAROW
	db 15, SANDSHREW
	db 17, RATTATA
	db 17, SPEAROW
	db 13, SANDSHREW
	db 17, SANDSHREW
ENDC
	; day
	db 16, RATTATA
	db 16, SPEAROW
	db 14, RATTATA
IF DEF(_RED)
	db 11, EKANS
	db 13, SPEAROW
	db 15, EKANS
	db 17, RATTATA
	db 17, SPEAROW
	db 13, EKANS
	db 17, EKANS
ENDC
IF DEF(_BLUE)
	db 11, SANDSHREW
	db 13, SPEAROW
	db 15, SANDSHREW
	db 17, RATTATA
	db 17, SPEAROW
	db 13, SANDSHREW
	db 17, SANDSHREW
ENDC
	; nite
	db 16, RATTATA
	db 16, SPEAROW
	db 14, RATTATA
IF DEF(_RED)
	db 11, EKANS
	db 13, SPEAROW
	db 15, EKANS
	db 17, RATTATA
	db 17, SPEAROW
	db 13, EKANS
	db 17, EKANS
ENDC
IF DEF(_BLUE)
	db 11, SANDSHREW
	db 13, SPEAROW
	db 15, SANDSHREW
	db 17, RATTATA
	db 17, SPEAROW
	db 13, SANDSHREW
	db 17, SANDSHREW
ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_10 ; R/B
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
	db 16, VOLTORB
	db 16, SPEAROW
	db 14, VOLTORB
IF DEF(_RED)
	db 11, EKANS
	db 13, SPEAROW
	db 15, EKANS
	db 17, VOLTORB
	db 17, SPEAROW
	db 13, EKANS
	db 17, EKANS
ENDC
IF DEF(_BLUE)
	db 11, SANDSHREW
	db 13, SPEAROW
	db 15, SANDSHREW
	db 17, VOLTORB
	db 17, SPEAROW
	db 13, SANDSHREW
	db 17, SANDSHREW
ENDC
	; day
	db 16, VOLTORB
	db 16, SPEAROW
	db 14, VOLTORB
IF DEF(_RED)
	db 11, EKANS
	db 13, SPEAROW
	db 15, EKANS
	db 17, VOLTORB
	db 17, SPEAROW
	db 13, EKANS
	db 17, EKANS
ENDC
IF DEF(_BLUE)
	db 11, SANDSHREW
	db 13, SPEAROW
	db 15, SANDSHREW
	db 17, VOLTORB
	db 17, SPEAROW
	db 13, SANDSHREW
	db 17, SANDSHREW
ENDC
	; nite
	db 16, VOLTORB
	db 16, SPEAROW
	db 14, VOLTORB
IF DEF(_RED)
	db 11, EKANS
	db 13, SPEAROW
	db 15, EKANS
	db 17, VOLTORB
	db 17, SPEAROW
	db 13, EKANS
	db 17, EKANS
ENDC
IF DEF(_BLUE)
	db 11, SANDSHREW
	db 13, SPEAROW
	db 15, SANDSHREW
	db 17, VOLTORB
	db 17, SPEAROW
	db 13, SANDSHREW
	db 17, SANDSHREW
ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_11 ; R/B
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
IF DEF(_RED)
	db 14, EKANS
	db 15, SPEAROW
	db 12, EKANS
	db  9, DROWZEE
	db 13, SPEAROW
	db 13, DROWZEE
	db 15, EKANS
ENDC
IF DEF(_BLUE)
	db 14, SANDSHREW
	db 15, SPEAROW
	db 12, SANDSHREW
	db  9, DROWZEE
	db 13, SPEAROW
	db 13, DROWZEE
	db 15, SANDSHREW
ENDC
	db 17, SPEAROW
	db 11, DROWZEE
	db 15, DROWZEE
	; day
IF DEF(_RED)
	db 14, EKANS
	db 15, SPEAROW
	db 12, EKANS
	db  9, DROWZEE
	db 13, SPEAROW
	db 13, DROWZEE
	db 15, EKANS
ENDC
IF DEF(_BLUE)
	db 14, SANDSHREW
	db 15, SPEAROW
	db 12, SANDSHREW
	db  9, DROWZEE
	db 13, SPEAROW
	db 13, DROWZEE
	db 15, SANDSHREW
ENDC
	db 17, SPEAROW
	db 11, DROWZEE
	db 15, DROWZEE
	; nite
IF DEF(_RED)
	db 14, EKANS
	db 15, SPEAROW
	db 12, EKANS
	db  9, DROWZEE
	db 13, SPEAROW
	db 13, DROWZEE
	db 15, EKANS
ENDC
IF DEF(_BLUE)
	db 14, SANDSHREW
	db 15, SPEAROW
	db 12, SANDSHREW
	db  9, DROWZEE
	db 13, SPEAROW
	db 13, DROWZEE
	db 15, SANDSHREW
ENDC
	db 17, SPEAROW
	db 11, DROWZEE
	db 15, DROWZEE
	end_grass_wildmons

	def_grass_wildmons ROUTE_12 ; R/B
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
IF DEF(_RED)
	db 24, ODDISH
	db 25, PIDGEY
	db 23, PIDGEY
	db 24, VENONAT
	db 22, ODDISH
	db 26, VENONAT
	db 26, ODDISH
	db 27, PIDGEY
	db 28, GLOOM
	db 30, GLOOM
ENDC
IF DEF(_BLUE)
	db 24, BELLSPROUT
	db 25, PIDGEY
	db 23, PIDGEY
	db 24, VENONAT
	db 22, BELLSPROUT
	db 26, VENONAT
	db 26, BELLSPROUT
	db 27, PIDGEY
	db 28, WEEPINBELL
	db 30, WEEPINBELL
ENDC
	; day
IF DEF(_RED)
	db 24, ODDISH
	db 25, PIDGEY
	db 23, PIDGEY
	db 24, VENONAT
	db 22, ODDISH
	db 26, VENONAT
	db 26, ODDISH
	db 27, PIDGEY
	db 28, GLOOM
	db 30, GLOOM
ENDC
IF DEF(_BLUE)
	db 24, BELLSPROUT
	db 25, PIDGEY
	db 23, PIDGEY
	db 24, VENONAT
	db 22, BELLSPROUT
	db 26, VENONAT
	db 26, BELLSPROUT
	db 27, PIDGEY
	db 28, WEEPINBELL
	db 30, WEEPINBELL
ENDC
	; nite
IF DEF(_RED)
	db 24, ODDISH
	db 25, PIDGEY
	db 23, PIDGEY
	db 24, VENONAT
	db 22, ODDISH
	db 26, VENONAT
	db 26, ODDISH
	db 27, PIDGEY
	db 28, GLOOM
	db 30, GLOOM
ENDC
IF DEF(_BLUE)
	db 24, BELLSPROUT
	db 25, PIDGEY
	db 23, PIDGEY
	db 24, VENONAT
	db 22, BELLSPROUT
	db 26, VENONAT
	db 26, BELLSPROUT
	db 27, PIDGEY
	db 28, WEEPINBELL
	db 30, WEEPINBELL
ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_13 ; R/B
	db 20 percent, 20 percent, 20 percent ; encounter rates: morn/day/nite
	; morn
IF DEF(_RED)
	db 24, ODDISH
	db 25, PIDGEY
	db 27, PIDGEY
	db 24, VENONAT
	db 22, ODDISH
	db 26, VENONAT
	db 26, ODDISH
	db 25, DITTO
	db 28, GLOOM
	db 30, GLOOM
ENDC
IF DEF(_BLUE)
	db 24, BELLSPROUT
	db 25, PIDGEY
	db 27, PIDGEY
	db 24, VENONAT
	db 22, BELLSPROUT
	db 26, VENONAT
	db 26, BELLSPROUT
	db 25, DITTO
	db 28, WEEPINBELL
	db 30, WEEPINBELL
ENDC
	; day
IF DEF(_RED)
	db 24, ODDISH
	db 25, PIDGEY
	db 27, PIDGEY
	db 24, VENONAT
	db 22, ODDISH
	db 26, VENONAT
	db 26, ODDISH
	db 25, DITTO
	db 28, GLOOM
	db 30, GLOOM
ENDC
IF DEF(_BLUE)
	db 24, BELLSPROUT
	db 25, PIDGEY
	db 27, PIDGEY
	db 24, VENONAT
	db 22, BELLSPROUT
	db 26, VENONAT
	db 26, BELLSPROUT
	db 25, DITTO
	db 28, WEEPINBELL
	db 30, WEEPINBELL
ENDC
	; nite
IF DEF(_RED)
	db 24, ODDISH
	db 25, PIDGEY
	db 27, PIDGEY
	db 24, VENONAT
	db 22, ODDISH
	db 26, VENONAT
	db 26, ODDISH
	db 25, DITTO
	db 28, GLOOM
	db 30, GLOOM
ENDC
IF DEF(_BLUE)
	db 24, BELLSPROUT
	db 25, PIDGEY
	db 27, PIDGEY
	db 24, VENONAT
	db 22, BELLSPROUT
	db 26, VENONAT
	db 26, BELLSPROUT
	db 25, DITTO
	db 28, WEEPINBELL
	db 30, WEEPINBELL
ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_14 ; R/B
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
IF DEF(_RED)
	db 24, ODDISH
	db 26, PIDGEY
	db 23, DITTO
	db 24, VENONAT
	db 22, ODDISH
	db 26, VENONAT
	db 26, ODDISH
	db 30, GLOOM
ENDC
IF DEF(_BLUE)
	db 24, BELLSPROUT
	db 26, PIDGEY
	db 23, DITTO
	db 24, VENONAT
	db 22, BELLSPROUT
	db 26, VENONAT
	db 26, BELLSPROUT
	db 30, WEEPINBELL
ENDC
	db 28, PIDGEOTTO
	db 30, PIDGEOTTO
	; day
IF DEF(_RED)
	db 24, ODDISH
	db 26, PIDGEY
	db 23, DITTO
	db 24, VENONAT
	db 22, ODDISH
	db 26, VENONAT
	db 26, ODDISH
	db 30, GLOOM
ENDC
IF DEF(_BLUE)
	db 24, BELLSPROUT
	db 26, PIDGEY
	db 23, DITTO
	db 24, VENONAT
	db 22, BELLSPROUT
	db 26, VENONAT
	db 26, BELLSPROUT
	db 30, WEEPINBELL
ENDC
	db 28, PIDGEOTTO
	db 30, PIDGEOTTO
	; nite
IF DEF(_RED)
	db 24, ODDISH
	db 26, PIDGEY
	db 23, DITTO
	db 24, VENONAT
	db 22, ODDISH
	db 26, VENONAT
	db 26, ODDISH
	db 30, GLOOM
ENDC
IF DEF(_BLUE)
	db 24, BELLSPROUT
	db 26, PIDGEY
	db 23, DITTO
	db 24, VENONAT
	db 22, BELLSPROUT
	db 26, VENONAT
	db 26, BELLSPROUT
	db 30, WEEPINBELL
ENDC
	db 28, PIDGEOTTO
	db 30, PIDGEOTTO
	end_grass_wildmons

	def_grass_wildmons ROUTE_15 ; R/B
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
IF DEF(_RED)
	db 24, ODDISH
	db 26, DITTO
	db 23, PIDGEY
	db 26, VENONAT
	db 22, ODDISH
	db 28, VENONAT
	db 26, ODDISH
	db 30, GLOOM
ENDC
IF DEF(_BLUE)
	db 24, BELLSPROUT
	db 26, DITTO
	db 23, PIDGEY
	db 26, VENONAT
	db 22, BELLSPROUT
	db 28, VENONAT
	db 26, BELLSPROUT
	db 30, WEEPINBELL
ENDC
	db 28, PIDGEOTTO
	db 30, PIDGEOTTO
	; day
IF DEF(_RED)
	db 24, ODDISH
	db 26, DITTO
	db 23, PIDGEY
	db 26, VENONAT
	db 22, ODDISH
	db 28, VENONAT
	db 26, ODDISH
	db 30, GLOOM
ENDC
IF DEF(_BLUE)
	db 24, BELLSPROUT
	db 26, DITTO
	db 23, PIDGEY
	db 26, VENONAT
	db 22, BELLSPROUT
	db 28, VENONAT
	db 26, BELLSPROUT
	db 30, WEEPINBELL
ENDC
	db 28, PIDGEOTTO
	db 30, PIDGEOTTO
	; nite
IF DEF(_RED)
	db 24, ODDISH
	db 26, DITTO
	db 23, PIDGEY
	db 26, VENONAT
	db 22, ODDISH
	db 28, VENONAT
	db 26, ODDISH
	db 30, GLOOM
ENDC
IF DEF(_BLUE)
	db 24, BELLSPROUT
	db 26, DITTO
	db 23, PIDGEY
	db 26, VENONAT
	db 22, BELLSPROUT
	db 28, VENONAT
	db 26, BELLSPROUT
	db 30, WEEPINBELL
ENDC
	db 28, PIDGEOTTO
	db 30, PIDGEOTTO
	end_grass_wildmons

	def_grass_wildmons ROUTE_16 ; R/B
	db 25 percent, 25 percent, 25 percent ; encounter rates: morn/day/nite
	; morn
	db 20, SPEAROW
	db 22, SPEAROW
	db 18, RATTATA
	db 20, DODUO
	db 20, RATTATA
	db 18, DODUO
	db 22, DODUO
	db 22, RATTATA
	db 23, RATICATE
	db 25, RATICATE
	; day
	db 20, SPEAROW
	db 22, SPEAROW
	db 18, RATTATA
	db 20, DODUO
	db 20, RATTATA
	db 18, DODUO
	db 22, DODUO
	db 22, RATTATA
	db 23, RATICATE
	db 25, RATICATE
	; nite
	db 20, SPEAROW
	db 22, SPEAROW
	db 18, RATTATA
	db 20, DODUO
	db 20, RATTATA
	db 18, DODUO
	db 22, DODUO
	db 22, RATTATA
	db 23, RATICATE
	db 25, RATICATE
	end_grass_wildmons

	def_grass_wildmons ROUTE_17 ; R/B
	db 25 percent, 25 percent, 25 percent ; encounter rates: morn/day/nite
	; morn
	db 20, SPEAROW
	db 22, SPEAROW
	db 25, RATICATE
	db 24, DODUO
	db 27, RATICATE
	db 26, DODUO
	db 28, DODUO
	db 29, RATICATE
	db 25, FEAROW
	db 27, FEAROW
	; day
	db 20, SPEAROW
	db 22, SPEAROW
	db 25, RATICATE
	db 24, DODUO
	db 27, RATICATE
	db 26, DODUO
	db 28, DODUO
	db 29, RATICATE
	db 25, FEAROW
	db 27, FEAROW
	; nite
	db 20, SPEAROW
	db 22, SPEAROW
	db 25, RATICATE
	db 24, DODUO
	db 27, RATICATE
	db 26, DODUO
	db 28, DODUO
	db 29, RATICATE
	db 25, FEAROW
	db 27, FEAROW
	end_grass_wildmons

	def_grass_wildmons ROUTE_18 ; R/B
	db 25 percent, 25 percent, 25 percent ; encounter rates: morn/day/nite
	; morn
	db 20, SPEAROW
	db 22, SPEAROW
	db 25, RATICATE
	db 24, DODUO
	db 25, FEAROW
	db 26, DODUO
	db 28, DODUO
	db 29, RATICATE
	db 27, FEAROW
	db 29, FEAROW
	; day
	db 20, SPEAROW
	db 22, SPEAROW
	db 25, RATICATE
	db 24, DODUO
	db 25, FEAROW
	db 26, DODUO
	db 28, DODUO
	db 29, RATICATE
	db 27, FEAROW
	db 29, FEAROW
	; nite
	db 20, SPEAROW
	db 22, SPEAROW
	db 25, RATICATE
	db 24, DODUO
	db 25, FEAROW
	db 26, DODUO
	db 28, DODUO
	db 29, RATICATE
	db 27, FEAROW
	db 29, FEAROW
	end_grass_wildmons

	def_grass_wildmons ROUTE_21 ; R/B
	db 25 percent, 25 percent, 25 percent ; encounter rates: morn/day/nite
	; morn
	db 21, RATTATA
	db 23, PIDGEY
	db 30, RATICATE
	db 23, RATTATA
	db 21, PIDGEY
	db 30, PIDGEOTTO
	db 32, PIDGEOTTO
	db 28, TANGELA
	db 30, TANGELA
	db 32, TANGELA
	; day
	db 21, RATTATA
	db 23, PIDGEY
	db 30, RATICATE
	db 23, RATTATA
	db 21, PIDGEY
	db 30, PIDGEOTTO
	db 32, PIDGEOTTO
	db 28, TANGELA
	db 30, TANGELA
	db 32, TANGELA
	; nite
	db 21, RATTATA
	db 23, PIDGEY
	db 30, RATICATE
	db 23, RATTATA
	db 21, PIDGEY
	db 30, PIDGEOTTO
	db 32, PIDGEOTTO
	db 28, TANGELA
	db 30, TANGELA
	db 32, TANGELA
	end_grass_wildmons

	def_grass_wildmons ROUTE_22 ; R/B
	db 25 percent, 25 percent, 25 percent ; encounter rates: morn/day/nite
	; morn
	db  3, RATTATA
IF DEF(_RED)
	db  3, NIDORAN_M
	db  4, RATTATA
	db  4, NIDORAN_M
	db  2, RATTATA
	db  2, NIDORAN_M
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_F
	db  4, NIDORAN_F
ENDC
IF DEF(_BLUE)
	db  3, NIDORAN_F
	db  4, RATTATA
	db  4, NIDORAN_F
	db  2, RATTATA
	db  2, NIDORAN_F
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_M
	db  4, NIDORAN_M
ENDC
	; day
	db  3, RATTATA
IF DEF(_RED)
	db  3, NIDORAN_M
	db  4, RATTATA
	db  4, NIDORAN_M
	db  2, RATTATA
	db  2, NIDORAN_M
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_F
	db  4, NIDORAN_F
ENDC
IF DEF(_BLUE)
	db  3, NIDORAN_F
	db  4, RATTATA
	db  4, NIDORAN_F
	db  2, RATTATA
	db  2, NIDORAN_F
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_M
	db  4, NIDORAN_M
ENDC
	; nite
	db  3, RATTATA
IF DEF(_RED)
	db  3, NIDORAN_M
	db  4, RATTATA
	db  4, NIDORAN_M
	db  2, RATTATA
	db  2, NIDORAN_M
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_F
	db  4, NIDORAN_F
ENDC
IF DEF(_BLUE)
	db  3, NIDORAN_F
	db  4, RATTATA
	db  4, NIDORAN_F
	db  2, RATTATA
	db  2, NIDORAN_F
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_M
	db  4, NIDORAN_M
ENDC
	end_grass_wildmons

; ROUTE 23

	def_grass_wildmons ROUTE_24 ; R/B
	db 25 percent, 25 percent, 25 percent ; encounter rates: morn/day/nite
	; morn
	db  3, RATTATA
IF DEF(_RED)
	db  3, NIDORAN_M
	db  4, RATTATA
	db  4, NIDORAN_M
	db  2, RATTATA
	db  2, NIDORAN_M
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_F
	db  4, NIDORAN_F
ENDC
IF DEF(_BLUE)
	db  3, NIDORAN_F
	db  4, RATTATA
	db  4, NIDORAN_F
	db  2, RATTATA
	db  2, NIDORAN_F
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_M
	db  4, NIDORAN_M
ENDC
	; day
	db  3, RATTATA
IF DEF(_RED)
	db  3, NIDORAN_M
	db  4, RATTATA
	db  4, NIDORAN_M
	db  2, RATTATA
	db  2, NIDORAN_M
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_F
	db  4, NIDORAN_F
ENDC
IF DEF(_BLUE)
	db  3, NIDORAN_F
	db  4, RATTATA
	db  4, NIDORAN_F
	db  2, RATTATA
	db  2, NIDORAN_F
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_M
	db  4, NIDORAN_M
ENDC
	; nite
	db  3, RATTATA
IF DEF(_RED)
	db  3, NIDORAN_M
	db  4, RATTATA
	db  4, NIDORAN_M
	db  2, RATTATA
	db  2, NIDORAN_M
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_F
	db  4, NIDORAN_F
ENDC
IF DEF(_BLUE)
	db  3, NIDORAN_F
	db  4, RATTATA
	db  4, NIDORAN_F
	db  2, RATTATA
	db  2, NIDORAN_F
	db  3, SPEAROW
	db  5, SPEAROW
	db  3, NIDORAN_M
	db  4, NIDORAN_M
ENDC
	end_grass_wildmons

	def_grass_wildmons ROUTE_25 ; R/B
	db 15 percent, 15 percent, 15 percent ; encounter rates: morn/day/nite
	; morn
IF DEF(_RED)
	db  8, WEEDLE
	db  9, KAKUNA
	db 13, PIDGEY
	db 12, ODDISH
	db 13, ODDISH
	db 12, ABRA
	db 14, ODDISH
	db 10, ABRA
	db  7, METAPOD
	db  8, CATERPIE
ENDC
IF DEF(_BLUE)
	db  8, CATERPIE
	db  9, METAPOD
	db 13, PIDGEY
	db 12, BELLSPROUT
	db 13, BELLSPROUT
	db 12, ABRA
	db 14, BELLSPROUT
	db 10, ABRA
	db  7, KAKUNA
	db  8, WEEDLE
ENDC
	; day
IF DEF(_RED)
	db  8, WEEDLE
	db  9, KAKUNA
	db 13, PIDGEY
	db 12, ODDISH
	db 13, ODDISH
	db 12, ABRA
	db 14, ODDISH
	db 10, ABRA
	db  7, METAPOD
	db  8, CATERPIE
ENDC
IF DEF(_BLUE)
	db  8, CATERPIE
	db  9, METAPOD
	db 13, PIDGEY
	db 12, BELLSPROUT
	db 13, BELLSPROUT
	db 12, ABRA
	db 14, BELLSPROUT
	db 10, ABRA
	db  7, KAKUNA
	db  8, WEEDLE
ENDC
	; nite
IF DEF(_RED)
	db  8, WEEDLE
	db  9, KAKUNA
	db 13, PIDGEY
	db 12, ODDISH
	db 13, ODDISH
	db 12, ABRA
	db 14, ODDISH
	db 10, ABRA
	db  7, METAPOD
	db  8, CATERPIE
ENDC
IF DEF(_BLUE)
	db  8, CATERPIE
	db  9, METAPOD
	db 13, PIDGEY
	db 12, BELLSPROUT
	db 13, BELLSPROUT
	db 12, ABRA
	db 14, BELLSPROUT
	db 10, ABRA
	db  7, KAKUNA
	db  8, WEEDLE
ENDC
	end_grass_wildmons

	db -1 ; end
