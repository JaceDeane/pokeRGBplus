; These lists determine the battle music and victory music, and whether to
; award HAPPINESS_GYMBATTLE for winning.

; Note: RIVAL3 is unused for battle music checks, since they are
; accounted for prior to the list check.

Elite4League: ; (Pokémon League)
	db LORELEI
	db BRUNO
	db AGATHA
	db LANCE
	db RIVAL3
; fallthrough
KantoGymLeaders:
	db BROCK
	db MISTY
	db LT_SURGE
	db ERIKA
	db KOGA
	db SABRINA
	db BLAINE
	db LEADER_GIOVANNI
	db -1
