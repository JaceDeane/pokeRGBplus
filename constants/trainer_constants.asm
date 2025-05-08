DEF __trainer_class__ = 0

MACRO trainerclass
	DEF \1 EQU __trainer_class__
	DEF __trainer_class__ += 1
	const_def 1
ENDM

; trainer class ids
; `trainerclass` indexes are for:
; - TrainerClassNames (see data/trainers/class_names.asm)
; - TrainerClassAttributes (see data/trainers/attributes.asm)
; - TrainerClassDVs (see data/trainers/dvs.asm)
; - TrainerGroups (see data/trainers/party_pointers.asm)
; - TrainerEncounterMusic (see data/trainers/encounter_music.asm)
; - TrainerPicPointers (see data/trainers/pic_pointers.asm)
; - TrainerPalettes (see data/trainers/palettes.asm)
; - BTTrainerClassSprites (see data/trainers/sprites.asm)
; - BTTrainerClassGenders (see data/trainers/genders.asm)
; trainer constants are Trainers indexes, for the sub-tables of TrainerGroups (see data/trainers/parties.asm)
DEF RED EQU __trainer_class__
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
	const PHONECONTACT_BUENA
DEF NUM_NONTRAINER_PHONECONTACTS EQU const_value - 1

DEF KRIS EQU __trainer_class__
	trainerclass FALKNER ; 1
	const FALKNER1

	trainerclass WHITNEY ; 2
	const WHITNEY1

	trainerclass BUGSY ; 3
	const BUGSY1

	trainerclass MORTY ; 4
	const MORTY1

	trainerclass PRYCE ; 5
	const PRYCE1

	trainerclass JASMINE ; 6
	const JASMINE1

	trainerclass CHUCK ; 7
	const CHUCK1

	trainerclass CLAIR ; 8
	const CLAIR1

	trainerclass RIVAL1 ; 9
	const RIVAL1_1_BULBASAUR
	const RIVAL1_1_CHARMANDER
	const RIVAL1_1_SQUIRTLE
	const RIVAL1_2_BULBASAUR
	const RIVAL1_2_CHARMANDER
	const RIVAL1_2_SQUIRTLE
	const RIVAL1_3_BULBASAUR
	const RIVAL1_3_CHARMANDER
	const RIVAL1_3_SQUIRTLE

	trainerclass POKEMON_PROF ; a

	trainerclass WILL ; b
	const WILL1

	trainerclass CAL ; c
	const CAL1 ; unused
	const CAL2
	const CAL3

	trainerclass BRUNO ; d
	const BRUNO1

	trainerclass KAREN ; e
	const KAREN1

	trainerclass KOGA ; f
	const KOGA1

	trainerclass LANCE ; 10
	const LANCE1

	trainerclass BROCK ; 11
	const BROCK1

	trainerclass MISTY ; 12
	const MISTY1

	trainerclass LT_SURGE ; 13
	const LT_SURGE1

	trainerclass SCIENTIST ; 14
	const ROSS
	const MITCH
	const JED
	const MARC
	const RICHZ

	trainerclass ERIKA ; 15
	const ERIKA1

	trainerclass YOUNGSTER ; 16 -- Updated to R/B, using FR/LG names
	const BEN
	const CALVIN
	const JOSH
	const TIMMY
	const JOEY
	const DAN
	const CHAD
	const TYLER
	const EDDIE
	const DILLON
	const YASU
	const DAVE

	trainerclass SCHOOLBOY ; 17
	const JACK1
	const KIPP
	const ALAN1
	const JOHNNY
	const DANNY
	const TOMMY
	const DUDLEY
	const JOE
	const BILLY
	const CHAD1
	const NATE
	const RICKYZ
	const JACK2
	const JACK3
	const ALAN2
	const ALAN3
	const CHAD2
	const CHAD3
	const JACK4
	const JACK5
	const ALAN4
	const ALAN5
	const CHAD4
	const CHAD5

	trainerclass BIRD_KEEPER ; 18
	const ROD
	const ABE
	const BRYAN
	const THEO
	const TOBY
	const DENIS
	const VANCE1
	const HANK
	const ROY
	const BORIS
	const BOB
	const JOSE1
	const PETER
	const JOSE2
	const PERRY
	const BRET
	const JOSE3
	const VANCE2
	const VANCE3

	trainerclass LASS ; 19
	const CARRIE
	const BRIDGET
	const ALICE
	const KRISE
	const CONNIE1
	const LINDA
	const LAURA
	const SHANNON
	const MICHELLE
	const DANA1
	const ELLEN
	const CONNIE2 ; unused
	const CONNIE3 ; unused
	const DANA2
	const DANA3
	const DANA4
	const DANA5

	trainerclass LEADER_GIOVANNI ; 1a
	const LEADER_GIOVANNI1

	trainerclass COOLTRAINERM ; 1b
	const NICK
	const AARON
	const PAUL
	const CODY
	const MIKE
	const GAVEN1
	const GAVEN2
	const RYAN
	const JAKE
	const GAVEN3
	const BLAKE
	const BRIAN
	const ERICK ; unused
	const ANDY ; unused
	const TYLERZ ; unused
	const SEAN
	const KEVIN
	const STEVE ; unused
	const ALLEN
	const DARIN

	trainerclass COOLTRAINERF ; 1c
	const GWEN
	const LOIS
	const FRAN
	const LOLA
	const KATE
	const IRENE
	const KELLY
	const JOYCE
	const BETH1
	const REENA1
	const MEGAN
	const BETH2
	const CAROL
	const QUINN
	const EMMA
	const CYBIL
	const JENN
	const BETH3
	const REENA2
	const REENA3
	const CARA

	trainerclass BEAUTY ; 1d
	const VICTORIA
	const SAMANTHA
	const JULIE ; unused
	const JACLYN ; unused
	const BRENDA ; unused
	const CASSIE
	const CAROLINE ; unused
	const CARLENE ; unused
	const JESSICA ; unused
	const RACHAEL ; unused
	const ANGELICAZ ; unused
	const KENDRA ; unused
	const VERONICA ; unused
	const JULIA
	const THERESA ; unused
	const VALERIE
	const OLIVIA

	trainerclass POKEMANIAC ; 1e
	const LARRY
	const ANDREW
	const CALVINZ
	const SHANEZ
	const BENZ
	const BRENT1
	const RON
	const ETHANZ
	const BRENT2
	const BRENT3
	const ISSAC
	const DONALD
	const ZACH
	const BRENT4
	const MILLER

	trainerclass GRUNTM ; 1f
	const GRUNTM_1
	const GRUNTM_2
	const GRUNTM_3
	const GRUNTM_4
	const GRUNTM_5
	const GRUNTM_6
	const GRUNTM_7
	const GRUNTM_8
	const GRUNTM_9
	const GRUNTM_10
	const GRUNTM_11
	const GRUNTM_12 ; unused
	const GRUNTM_13
	const GRUNTM_14
	const GRUNTM_15
	const GRUNTM_16
	const GRUNTM_17
	const GRUNTM_18
	const GRUNTM_19
	const GRUNTM_20
	const GRUNTM_21
	const GRUNTM_22 ; unused
	const GRUNTM_23 ; unused
	const GRUNTM_24
	const GRUNTM_25
	const GRUNTM_26 ; unused
	const GRUNTM_27 ; unused
	const GRUNTM_28
	const GRUNTM_29
	const GRUNTM_30 ; unused
	const GRUNTM_31

	trainerclass GENTLEMAN ; 20
	const PRESTON
	const EDWARD
	const GREGORY
	const VIRGIL ; unused
	const ALFRED

	trainerclass SKIER ; 21
	const ROXANNE
	const CLARISSA

	trainerclass TEACHER ; 22
	const COLETTE
	const HILLARY
	const SHIRLEY

	trainerclass SABRINA ; 23
	const SABRINA1

	trainerclass BUG_CATCHER ; 24 -- Updated to R/B, using FR/LG names
	const RICK
	const DOUG
	const SAMMY
	const COLTON
	const GREG
	const JAMES
	const KENT
	const ROBBY
	const CALE
	const KEIGO
	const ELIJAH
	const BUG_CATCHER_UNUSED ; Unused
	const BRENT
	const CONNER

	trainerclass FISHER ; 25
	const JUSTINZ
	const RALPH1
	const ARNOLD
	const KYLE
	const HENRY
	const MARVIN
	const TULLY1
	const ANDRE
	const RAYMOND
	const WILTON1
	const EDGARZ
	const JONAH
	const MARTIN
	const STEPHEN
	const BARNEY
	const RALPH2
	const RALPH3
	const TULLY2
	const TULLY3
	const WILTON2
	const SCOTT
	const WILTON3
	const RALPH4
	const RALPH5
	const TULLY4

	trainerclass SWIMMERM ; 26
	const HAROLD
	const SIMON
	const RANDALLZ
	const CHARLIE
	const GEORGE
	const BERKE
	const KIRK
	const MATHEW
	const HAL ; unused
	const PATON ; unused
	const DARYL ; unused
	const WALTER ; unused
	const TONY ; unused
	const JEROME
	const TUCKER
	const RICKZ ; unused
	const CAMERON
	const SETHZ
	const JAMESZ ; unused
	const LEWIS ; unused
	const PARKER

	trainerclass SWIMMERF ; 27
	const ELAINE
	const PAULAZ
	const KAYLEE
	const SUSIE
	const DENISE
	const KARA
	const WENDY
	const LISA ; unused
	const JILL ; unused
	const MARY ; unused
	const KATIE ; unused
	const DAWN
	const TARA ; unused
	const NICOLE
	const LORI
	const JODYZ ; unused
	const NIKKI
	const DIANA
	const BRIANA

	trainerclass SAILOR ; 28
	const EUGENE
	const HUEY1
	const TERRELL
	const KENTZ
	const ERNESTZ
	const JEFFZ
	const GARRETT
	const KENNETH
	const STANLY
	const HARRY
	const HUEY2
	const HUEY3
	const HUEY4

	trainerclass SUPER_NERD ; 29
	const STANZ
	const ERICZ
	const GREGG ; unused
	const JAY ; unused
	const DAVEZ ; unused
	const SAM
	const TOM
	const PAT
	const SHAWN
	const TERU
	const RUSS ; unused
	const NORTON ; unused
	const HUGH
	const MARKUS

	trainerclass RIVAL2 ; 2a
	const RIVAL2_1_BULBASAUR
	const RIVAL2_1_CHARMANDER
	const RIVAL2_1_SQUIRTLE
	const RIVAL2_2_BULBASAUR
	const RIVAL2_2_CHARMANDER
	const RIVAL2_2_SQUIRTLE
	const RIVAL2_3_BULBASAUR
	const RIVAL2_3_CHARMANDER
	const RIVAL2_3_SQUIRTLE
	const RIVAL2_4_BULBASAUR
	const RIVAL2_4_CHARMANDER
	const RIVAL2_4_SQUIRTLE

	trainerclass GUITARIST ; 2b
	const CLYDE
	const VINCENTZ

	trainerclass HIKER ; 2c
	const ANTHONY1
	const RUSSELL
	const PHILLIP
	const LEONARD
	const ANTHONY2
	const BENJAMIN
	const ERIK
	const MICHAEL
	const PARRY1
	const TIMOTHY
	const BAILEY
	const ANTHONY3
	const TIM
	const NOLAND
	const SIDNEY
	const KENNY
	const JIM
	const DANIEL
	const PARRY2
	const PARRY3
	const ANTHONY4
	const ANTHONY5

	trainerclass BIKER ; 2d
	const BIKER_BENNY ; unused
	const KAZU ; unused
	const DWAYNE
	const HARRIS
	const ZEKE
	const CHARLES
	const RILEY
	const JOEL
	const GLENN

	trainerclass BLAINE ; 2e
	const BLAINE1

	trainerclass BURGLAR ; 2f
	const DUNCAN
	const EDDIEZ
	const COREYZ

	trainerclass FIREBREATHER ; 30
	const OTIS
	const DICK ; unused
	const NED ; unused
	const BURT
	const BILL
	const WALT
	const RAY
	const LYLE

	trainerclass JUGGLER ; 31
	const IRWIN1
	const FRITZ
	const HORTON
	const IRWIN2 ; unused
	const IRWIN3 ; unused
	const IRWIN4 ; unused

	trainerclass BLACKBELT_T ; 32
	const KENJI1 ; unused
	const YOSHI
	const KENJI2 ; unused
	const LAO
	const NOB
	const KIYO
	const LUNG
	const KENJI3
	const WAI

	trainerclass EXECUTIVEM ; 33
	const EXECUTIVEM_1
	const EXECUTIVEM_2
	const EXECUTIVEM_3
	const EXECUTIVEM_4

	trainerclass PSYCHIC_T ; 34
	const NATHAN
	const FRANKLIN
	const HERMAN
	const FIDEL
	const GREGZ
	const NORMAN
	const MARK
	const PHILZ
	const RICHARD
	const GILBERT
	const JARED
	const RODNEY

	trainerclass PICNICKER ; 35
	const LIZ1
	const GINA1
	const BROOKE
	const KIM
	const CINDY
	const HOPEZ
	const SHARON
	const DEBRA
	const GINA2
	const ERIN1
	const LIZ2
	const LIZ3
	const HEIDI
	const EDNA
	const GINA3
	const TIFFANY1
	const TIFFANY2
	const ERIN2
	const TANYA
	const TIFFANY3
	const ERIN3
	const LIZ4
	const LIZ5
	const GINA4
	const GINA5
	const TIFFANY4

	trainerclass CAMPER ; 36 -- Updated to R/B, using FR/LG names
	const LIAM
	const SHANE
	const ETHAN
	const RICKY
	const JEFF
	const CAMPER_UNUSED
	const CHRIS
	const DREW
	const JUSTIN

	trainerclass EXECUTIVEF ; 37
	const EXECUTIVEF_1
	const EXECUTIVEF_2

	trainerclass SAGE ; 38
	const CHOW
	const NICO
	const JIN
	const TROY
	const JEFFREY
	const PING
	const EDMOND
	const NEAL
	const LI
	const GAKU
	const MASA
	const KOJIZ

	trainerclass MEDIUM ; 39
	const MARTHA
	const GRACE
	const BETHANY ; unused
	const MARGRET ; unused
	const ETHEL ; unused
	const REBECCA
	const DORIS

	trainerclass BOARDER ; 3a
	const RONALD
	const BRAD
	const DOUGLAS

	trainerclass POKEFANM ; 3b
	const WILLIAM
	const DEREK1
	const ROBERT
	const JOSHUA
	const CARTER
	const TREVOR
	const BRANDON
	const JEREMY
	const COLIN
	const DEREK2 ; unused
	const DEREK3 ; unused
	const ALEX
	const REX
	const ALLAN

	trainerclass KIMONO_GIRL ; 3c
	const NAOKO_UNUSED ; unused
	const NAOKO
	const SAYO
	const ZUKI
	const KUNI
	const MIKI

	trainerclass TWINS ; 3d
	const AMYANDMAY1
	const ANNANDANNE1
	const ANNANDANNE2
	const AMYANDMAY2
	const JOANDZOE1
	const JOANDZOE2
	const MEGANDPEG1
	const MEGANDPEG2
	const LEAANDPIA1
	const LEAANDPIA2 ; unused

	trainerclass POKEFANF ; 3e
	const BEVERLY1
	const RUTHZ
	const BEVERLY2 ; unused
	const BEVERLY3 ; unused
	const GEORGIA
	const JAIME

	trainerclass RED_GS ; 3f
	const RED1

	trainerclass RIVAL3 ; 40
	const RIVAL3_1_BULBASAUR
	const RIVAL3_1_CHARMANDER
	const RIVAL3_1_SQUIRTLE

	trainerclass OFFICER ; 41
	const KEITH
	const DIRKZ

	trainerclass GRUNTF ; 42
	const GRUNTF_1
	const GRUNTF_2
	const GRUNTF_3
	const GRUNTF_4
	const GRUNTF_5

	trainerclass MYSTICALMAN ; 43
	const EUSINE
	
	trainerclass KABUTOPS_FOSSIL ; 45
	
	trainerclass AERODACTYL_FOSSIL ; 46
	
	trainerclass CHANNELER ; 47 -- Updated to R/B (Unused trainers not added), using FR/LG names
	const PATRICIA
	const CARLY
	const HOPE
	const PAULA
	const LAUREL
	const JODY
	const TAMMY
	const RUTH
	const KARINA
	const JANAE
	const ANGELICA
	const EMILIA
	const JENNIFER
	const AMANDA
	const STACY
	const TASHA
	
	trainerclass CUE_BALL ; 48 -- Updated to R/B, using FR/LG names
	const KOJI
	const LUKE
	const CAMRON
	const RAUL
	const ISAIAH
	const ZEEK
	const JAMAL
	const COREY
	const CHASE
	
	trainerclass ENGINEER ; 49 -- Updated to R/B, using FR/LG names
	const BAILY ; Unused R/B
	const BRAXTON
	const BERNIE
	
	trainerclass GAMBLER ; 50 -- Updated to R/B, using FR/LG names
	const HUGO
	const JASPER
	const DIRK
	const DARIAN
	const STAN
	const GAMBLER_UNUSED
	const RICH
	
	trainerclass ROCKER ; 51 -- Updated to R/B, using FR/LG names
	const RANDALL
	const LUCA
	
	trainerclass TAMER ; 52 -- Updated to R/B, using FR/LG names
	const PHIL
	const EDGAR
	const JASON
	const COLE
	const VINCENT
	const JOHN ; Unused R/B
	
	trainerclass LORELEI ; 53
	const LORELEI1
	
	trainerclass AGATHA ; 54
	const AGATHA1
	
	trainerclass BOSS_GIOVANNI ; 55 -- Updated to R/B
	const GIOVANNI1
	const GIOVANNI2

DEF NUM_TRAINER_CLASSES EQU __trainer_class__ - 1
