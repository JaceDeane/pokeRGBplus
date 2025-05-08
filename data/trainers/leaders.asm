; These lists determine the battle music and victory music, and whether to
; award HAPPINESS_GYMBATTLE for winning.

; Note: RIVAL3 <and RED1> are unused for battle music checks, since they are
; accounted for prior to the list check.

GymLeaders: ; (Pokémon League)
	db LORELEI
	db BRUNO
	db AGATHA
	db LANCE
	db RIVAL3
	db RED1 ; TEMP
; fallthrough
KantoGymLeaders:
	db BROCK
	db MISTY
	db LT_SURGE
	db ERIKA
	db KOGA
	db SABRINA
	db BLAINE
	db GIOVANNI
	db -1
