; What music plays when a trainer notices you

TrainerEncounterMusic::
; entries correspond to trainer classes (see constants/trainer_constants.asm)
	table_width 1, TrainerEncounterMusic
	db MUSIC_HIKER_ENCOUNTER       ; none
	db MUSIC_YOUNGSTER_ENCOUNTER   ; falkner
	db MUSIC_LASS_ENCOUNTER        ; whitney
	db MUSIC_YOUNGSTER_ENCOUNTER   ; bugsy
	db MUSIC_OFFICER_ENCOUNTER     ; morty
	db MUSIC_OFFICER_ENCOUNTER     ; pryce
	db MUSIC_LASS_ENCOUNTER        ; jasmine
	db MUSIC_OFFICER_ENCOUNTER     ; chuck
	db MUSIC_BEAUTY_ENCOUNTER      ; clair
	db MUSIC_RIVAL_ENCOUNTER       ; rival1
	db MUSIC_HIKER_ENCOUNTER       ; pokemon_prof
	db MUSIC_HIKER_ENCOUNTER       ; will
	db MUSIC_HIKER_ENCOUNTER       ; cal
	db MUSIC_OFFICER_ENCOUNTER     ; bruno
	db MUSIC_HIKER_ENCOUNTER       ; karen
	db MUSIC_HIKER_ENCOUNTER       ; koga
	db MUSIC_OFFICER_ENCOUNTER     ; lance
	db MUSIC_YOUNGSTER_ENCOUNTER   ; brock
	db MUSIC_LASS_ENCOUNTER        ; misty
	db MUSIC_OFFICER_ENCOUNTER     ; lt_surge
	db MUSIC_ROCKET_ENCOUNTER      ; scientist
	db MUSIC_OFFICER_ENCOUNTER     ; erika
	db MUSIC_MALE_TRAINER_ENCOUNTER   ; youngster -- R/B
	db MUSIC_YOUNGSTER_ENCOUNTER   ; schoolboy
	db MUSIC_YOUNGSTER_ENCOUNTER   ; bird_keeper
	db MUSIC_FEMALE_TRAINER_ENCOUNTER ; lass -- R/B
	db MUSIC_ROCKET_ENCOUNTER      ; giovanni
	db MUSIC_HIKER_ENCOUNTER       ; cooltrainerm
	db MUSIC_BEAUTY_ENCOUNTER      ; cooltrainerf
	db MUSIC_BEAUTY_ENCOUNTER      ; beauty
	db MUSIC_POKEMANIAC_ENCOUNTER  ; pokemaniac
	db MUSIC_ROCKET_ENCOUNTER      ; gruntm
	db MUSIC_HIKER_ENCOUNTER       ; gentleman
	db MUSIC_BEAUTY_ENCOUNTER      ; skier
	db MUSIC_BEAUTY_ENCOUNTER      ; teacher
	db MUSIC_BEAUTY_ENCOUNTER      ; sabrina
	db MUSIC_MALE_TRAINER_ENCOUNTER   ; bug_catcher -- R/B
	db MUSIC_HIKER_ENCOUNTER       ; fisher
	db MUSIC_HIKER_ENCOUNTER       ; swimmerm
	db MUSIC_BEAUTY_ENCOUNTER      ; swimmerf
	db MUSIC_HIKER_ENCOUNTER       ; sailor
	db MUSIC_POKEMANIAC_ENCOUNTER  ; super_nerd
	db MUSIC_RIVAL_ENCOUNTER       ; rival2
	db MUSIC_HIKER_ENCOUNTER       ; guitarist
	db MUSIC_HIKER_ENCOUNTER       ; hiker
	db MUSIC_HIKER_ENCOUNTER       ; biker
	db MUSIC_OFFICER_ENCOUNTER     ; blaine
	db MUSIC_POKEMANIAC_ENCOUNTER  ; burglar
	db MUSIC_HIKER_ENCOUNTER       ; firebreather
	db MUSIC_POKEMANIAC_ENCOUNTER  ; juggler
	db MUSIC_HIKER_ENCOUNTER       ; blackbelt_t
	db MUSIC_ROCKET_ENCOUNTER      ; executivem
	db MUSIC_YOUNGSTER_ENCOUNTER   ; psychic_t
	db MUSIC_LASS_ENCOUNTER        ; picnicker
	db MUSIC_MALE_TRAINER_ENCOUNTER   ; camper -- R/B
	db MUSIC_ROCKET_ENCOUNTER      ; executivef
	db MUSIC_SAGE_ENCOUNTER        ; sage
	db MUSIC_SAGE_ENCOUNTER        ; medium
	db MUSIC_HIKER_ENCOUNTER       ; boarder
	db MUSIC_HIKER_ENCOUNTER       ; pokefanm
	db MUSIC_KIMONO_ENCOUNTER      ; kimono_girl
	db MUSIC_LASS_ENCOUNTER        ; twins
	db MUSIC_BEAUTY_ENCOUNTER      ; pokefanf
	db MUSIC_HIKER_ENCOUNTER       ; red
	db MUSIC_RIVAL_ENCOUNTER       ; rival3
	db MUSIC_HIKER_ENCOUNTER       ; officer
	db MUSIC_ROCKET_ENCOUNTER      ; gruntf
	db MUSIC_HIKER_ENCOUNTER       ; mysticalman
	db MUSIC_ROCKET_ENCOUNTER      ; kabutops_fossil
	db MUSIC_ROCKET_ENCOUNTER      ; aerodactyl_fossil
	db MUSIC_HIKER_ENCOUNTER       ; channeler -- TODO
	db MUSIC_HIKER_ENCOUNTER       ; cueball -- TODO
	db MUSIC_HIKER_ENCOUNTER       ; engineer -- TODO
	db MUSIC_HIKER_ENCOUNTER       ; gambler -- TODO
	db MUSIC_HIKER_ENCOUNTER       ; rocker -- TODO
	db MUSIC_HIKER_ENCOUNTER       ; tamer -- TODO
	db MUSIC_HIKER_ENCOUNTER       ; lorelei -- TODO
	db MUSIC_HIKER_ENCOUNTER       ; agatha -- TODO
	assert_table_length NUM_TRAINER_CLASSES + 1
	db MUSIC_HIKER_ENCOUNTER       ; unused
	db MUSIC_HIKER_ENCOUNTER       ; unused
	db MUSIC_HIKER_ENCOUNTER       ; unused
