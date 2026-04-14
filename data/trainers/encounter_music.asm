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
	db MUSIC_EVIL_TRAINER_ENCOUNTER   ; scientist -- R/B
	db MUSIC_OFFICER_ENCOUNTER     ; erika
	db MUSIC_MALE_TRAINER_ENCOUNTER   ; youngster -- R/B
	db MUSIC_YOUNGSTER_ENCOUNTER   ; schoolboy
	db MUSIC_MALE_TRAINER_ENCOUNTER   ; bird_keeper -- R/B
	db MUSIC_FEMALE_TRAINER_ENCOUNTER ; lass -- R/B
	db MUSIC_EVIL_TRAINER_ENCOUNTER   ; leader_giovanni -- R/B
	db MUSIC_MALE_TRAINER_ENCOUNTER   ; cooltrainerm -- R/B
	db MUSIC_FEMALE_TRAINER_ENCOUNTER ; cooltrainerf -- R/B
	db MUSIC_FEMALE_TRAINER_ENCOUNTER ; beauty -- R/B
	db MUSIC_POKEMANIAC_ENCOUNTER  ; pokemaniac
	db MUSIC_ROCKET_ENCOUNTER      ; gruntm
	db MUSIC_MALE_TRAINER_ENCOUNTER   ; gentleman -- R/B
	db MUSIC_BEAUTY_ENCOUNTER      ; skier
	db MUSIC_BEAUTY_ENCOUNTER      ; teacher
	db MUSIC_BEAUTY_ENCOUNTER      ; sabrina
	db MUSIC_MALE_TRAINER_ENCOUNTER   ; bug_catcher -- R/B
	db MUSIC_HIKER_ENCOUNTER       ; fisher
	db MUSIC_MALE_TRAINER_ENCOUNTER   ; swimmerm -- R/B
	db MUSIC_BEAUTY_ENCOUNTER      ; swimmerf
	db MUSIC_MALE_TRAINER_ENCOUNTER   ; sailor -- R/B
	db MUSIC_POKEMANIAC_ENCOUNTER  ; super_nerd
	db MUSIC_RIVAL_ENCOUNTER       ; rival2
	db MUSIC_HIKER_ENCOUNTER       ; guitarist
	db MUSIC_HIKER_ENCOUNTER       ; hiker
	db MUSIC_HIKER_ENCOUNTER       ; biker
	db MUSIC_OFFICER_ENCOUNTER     ; blaine
	db MUSIC_POKEMANIAC_ENCOUNTER  ; burglar
	db MUSIC_HIKER_ENCOUNTER       ; firebreather
	db MUSIC_EVIL_TRAINER_ENCOUNTER   ; juggler -- R/B
	db MUSIC_HIKER_ENCOUNTER       ; blackbelt_t
	db MUSIC_ROCKET_ENCOUNTER      ; executivem
	db MUSIC_SAGE_ENCOUNTER           ; psychic_t
	db MUSIC_FEMALE_TRAINER_ENCOUNTER ; picnicker -- R/B
	db MUSIC_MALE_TRAINER_ENCOUNTER   ; camper -- R/B
	db MUSIC_ROCKET_ENCOUNTER      ; executivef
	db MUSIC_SAGE_ENCOUNTER        ; sage
	db MUSIC_SAGE_ENCOUNTER        ; medium
	db MUSIC_HIKER_ENCOUNTER       ; boarder
	db MUSIC_HIKER_ENCOUNTER       ; pokefanm
	db MUSIC_KIMONO_ENCOUNTER      ; kimono_girl
	db MUSIC_LASS_ENCOUNTER        ; twins
	db MUSIC_BEAUTY_ENCOUNTER      ; pokefanf
	db MUSIC_RIVAL_ENCOUNTER       ; red
	db MUSIC_RIVAL_ENCOUNTER       ; rival3
	db MUSIC_OFFICER_ENCOUNTER     ; officer
	db MUSIC_ROCKET_ENCOUNTER      ; gruntf
	db MUSIC_HIKER_ENCOUNTER       ; mysticalman
	db MUSIC_ROCKET_ENCOUNTER      ; kabutops_fossil
	db MUSIC_ROCKET_ENCOUNTER      ; aerodactyl_fossil
	db MUSIC_SAGE_ENCOUNTER           ; channeler
	db MUSIC_OFFICER_ENCOUNTER        ; cueball
	db MUSIC_OFFICER_ENCOUNTER        ; engineer
	db MUSIC_EVIL_TRAINER_ENCOUNTER   ; gambler -- R/B
	db MUSIC_EVIL_TRAINER_ENCOUNTER   ; rocker -- R/B
	db MUSIC_EVIL_TRAINER_ENCOUNTER   ; tamer
	db MUSIC_BEAUTY_ENCOUNTER      ; lorelei
	db MUSIC_SAGE_ENCOUNTER        ; agatha
	db MUSIC_ROCKET_ENCOUNTER      ; boss_giovanni
	assert_table_length NUM_TRAINER_CLASSES + 1
	db MUSIC_HIKER_ENCOUNTER       ; unused
	db MUSIC_HIKER_ENCOUNTER       ; unused
	db MUSIC_HIKER_ENCOUNTER       ; unused

; MUSIC_HIKER_ENCOUNTER (G/S)   == MUSIC_EVIL_TRAINER_ENCOUNTER (R/B)
; MUSIC_OFFICER_ENCOUNTER (G/S) == MUSIC_MALE_TRAINER_ENCOUNTER (R/B)
