	object_const_def
	const FUCHSIAGYM_KOGA
	const FUCHSIAGYM_ROCKER1
	const FUCHSIAGYM_ROCKER2
	const FUCHSIAGYM_ROCKER3
	const FUCHSIAGYM_ROCKER4
	const FUCHSIAGYM_ROCKER5
	const FUCHSIAGYM_ROCKER6
	const FUCHSIAGYM_GYM_GUIDE

FuchsiaGym_MapScripts:
	def_scene_scripts

	def_callbacks

FuchsiaGymKogaScript:
	checkflag ENGINE_SOULBADGE
	iftrue .FightDone
	faceplayer
	opentext
	writetext FuchsiaGymKogaBeforeBattleText
	waitbutton
	closetext
	winlosstext FuchsiaGymKogaDefeatText, 0
	loadtrainer KOGA, KOGA1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_KOGA
	setevent EVENT_BEAT_JUGGLER_KAYDEN
	setevent EVENT_BEAT_JUGGLER_KIRK
	setevent EVENT_BEAT_JUGGLER_NATE
	setevent EVENT_BEAT_TAMER_PHIL
	setevent EVENT_BEAT_TAMER_EDGAR
	setevent EVENT_BEAT_JUGGLER_SHAWN
	opentext
	writetext Text_ReceivedSoulBadge
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_SOULBADGE
	sjump .AfterBattle
.FightDone:
	faceplayer
	opentext
.AfterBattle:
	checkevent EVENT_GOT_TM06_TOXIC
	iftrue .AfterTM
	writetext FuchsiaGymKogaSoulBadgeInfoText
	promptbutton
	verbosegiveitem TM_TOXIC
	iffalse .AfterTM
	setevent EVENT_GOT_TM06_TOXIC
	writetext FuchsiaGymKogaTM06ExplanationText
	waitbutton
.AfterTM:
	writetext FuchsiaGymKogaPostBattleAdviceText
	waitbutton
	closetext
	end

TrainerJugglerKayden:
	trainer JUGGLER, KAYDEN, EVENT_BEAT_JUGGLER_KAYDEN, JugglerKaydenSeenText, JugglerKaydenBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerKaydenAfterBattleText
	waitbutton
	closetext
	end

TrainerJugglerKirk:
	trainer JUGGLER, KIRK, EVENT_BEAT_JUGGLER_KIRK, JugglerKirkSeenText, JugglerKirkBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerKirkAfterBattleText
	waitbutton
	closetext
	end

TrainerJugglerNate:
	trainer JUGGLER, NATE, EVENT_BEAT_JUGGLER_NATE, JugglerNateSeenText, JugglerNateBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerNateAfterBattleText
	waitbutton
	closetext
	end

TrainerTamerPhil:
	trainer TAMER, PHIL, EVENT_BEAT_TAMER_PHIL, TamerPhilSeenText, TamerPhilBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TamerPhilAfterBattleText
	waitbutton
	closetext
	end

TrainerTamerEdgar:
	trainer TAMER, EDGAR, EVENT_BEAT_TAMER_EDGAR, TamerEdgarSeenText, TamerEdgarBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext TamerEdgarAfterBattleText
	waitbutton
	closetext
	end

TrainerJugglerShawn:
	trainer JUGGLER, SHAWN, EVENT_BEAT_JUGGLER_SHAWN, JugglerShawnSeenText, JugglerShawnBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext JugglerShawnAfterBattleText
	waitbutton
	closetext
	end

FuchsiaGymGuideScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_KOGA
	iftrue .FuchsiaGymGuideWinScript
		clearflag ENGINE_SOULBADGE ; DEBUG
	writetext FuchsiaGymGuideText
	waitbutton
	closetext
	end

.FuchsiaGymGuideWinScript:
	writetext FuchsiaGymGuideWinText
	waitbutton
	closetext
	end

FuchsiaGymStatue:
	gettrainername STRING_BUFFER_4, KOGA, KOGA1
	checkflag ENGINE_SOULBADGE
	iftrue .Beaten
	jumpstd GymStatue1Script
.Beaten:
	jumpstd GymStatue2Script

FuchsiaGymKogaBeforeBattleText:
	text "KOGA: Fwahahaha!"

	para "A mere child like"
	line "you dares to"
	cont "challenge me?"

	para "Very well, I"
	line "shall show you"

	para "true terror as a"
	line "ninja master!"

	para "You shall feel"
	line "the despair of"

	para "poison and sleep"
	line "techniques!"
	done

FuchsiaGymKogaDefeatText:
	text "Humph!"

	para "You have proven"
	line "your worth!"

	para "Here! Take the"
	line "SOULBADGE!"
	done ; prompt

Text_ReceivedSoulBadge:
	text "<PLAYER> received"
	line "SOULBADGE."
	done

FuchsiaGymKogaSoulBadgeInfoText:
	text "Now that you have"
	line "the SOULBADGE,"

	para "the DEFENSE of"
	line "your #MON"
	cont "increases!"

	para "It also lets you"
	line "SURF outside of"
	cont "battle!"

	para "Ah! Take this"
	line "too!"
	done

FuchsiaGymKogaTM06ExplanationText:
	text "TM06 contains"
	line "TOXIC!"

	para "It is a secret"
	line "technique over"
	cont "400 years old!"
	done

FuchsiaGymKogaPostBattleAdviceText:
	text "When afflicted by"
	line "TOXIC, #MON"

	para "suffer more and"
	line "more as battle"
	cont "progresses!"

	para "It will surely"
	line "terrorize foes!"
	done

FuchsiaGymKogaTM06NoRoomText:
	text "Make space for"
	line "this, child!"
	done

JugglerKaydenSeenText:
	text "Strength isn't"
	line "the key for"
	cont "#MON!"

	para "It's strategy!"

	para "I'll show you how"
	line "strategy can beat"
	cont "brute strength!"
	done

JugglerKaydenBeatenText:
	text "What?"
	line "Extraordinary!"
	done ; prompt

JugglerKaydenAfterBattleText:
	text "So, you mix brawn"
	line "with brains?"

	para "Good strategy!"
	done

JugglerKirkSeenText:
	text "I wanted to become"
	line "a ninja, so I"
	cont "joined this GYM!"
	done

JugglerKirkBeatenText:
	text "I'm done for!"
	done ; prompt

JugglerKirkAfterBattleText:
	text "I will keep on"
	line "training under"

	para "KOGA, my ninja"
	line "master!"
	done

JugglerNateSeenText:
	text "Let's see you"
	line "beat my special"
	cont "techniques!"
	done

JugglerNateBeatenText:
	text "You had me fooled!"
	done ; prompt

JugglerNateAfterBattleText:
	text "I like sleep and"
	line "poison techniques,"

	para "as they linger"
	line "after battle!"
	done

TamerPhilSeenText:
	text "Stop right there!"

	para "Do our invisible"
	line "walls have you"
	cont "frustrated?"
	done

TamerPhilBeatenText:
	text "Whoa!"
	line "He's got it!"
	done ; prompt

TamerPhilAfterBattleText:
	text "You impressed me!"
	line "Here's a hint!"

	para "Look very closely"
	line "for gaps in the"
	cont "invisible walls!"
	done

TamerEdgarSeenText:
	text "I also study the"
	line "way of the ninja"
	cont "with master KOGA!"

	para "Ninja have a long"
	line "history of using"
	cont "animals!"
	done

TamerEdgarBeatenText:
	text "Awoo!"
	done ; prompt

TamerEdgarAfterBattleText:
	text "I still have much"
	line "to learn!"
	done

JugglerShawnSeenText:
	text "Master KOGA comes"
	line "from a long line"
	cont "of ninjas!"

	para "What did you"
	line "descend from?"
	done

JugglerShawnBeatenText:
	text "Dropped my balls!"
	done ; prompt

JugglerShawnAfterBattleText:
	text "Where there is"
	line "light, there is"
	cont "shadow!"

	para "Light and shadow!"
	line "Which do you"
	cont "choose?"
	done

FuchsiaGymGuideText:
	text "Yo! CHAMP in"
	line "making!"

	para "FUCHSIA GYM is"
	line "riddled with"
	cont "invisible walls!"

	para "KOGA might appear"
	line "close, but he's"
	cont "blocked off!"

	para "You have to find"
	line "gaps in the walls"
	cont "to reach him!"
	done

FuchsiaGymGuideWinText:
	text "It's amazing how"
	line "ninja can terrify"
	cont "even now!"
	done

FuchsiaGym_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 17, FUCHSIA_CITY, 6
	warp_event  5, 17, FUCHSIA_CITY, 6

	def_coord_events

	def_bg_events
	bg_event  3, 15, BGEVENT_READ, FuchsiaGymStatue
	bg_event  6, 15, BGEVENT_READ, FuchsiaGymStatue

	def_object_events
	object_event  4, 10, SPRITE_KOGA, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FuchsiaGymKogaScript, -1
	object_event  8, 13, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerJugglerKayden, -1 ; OPP_JUGGLER, 7
	object_event  7,  8, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerJugglerKirk, -1 ; OPP_JUGGLER, 3
	object_event  1, 12, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerJugglerNate, -1 ; OPP_JUGGLER, 8
	object_event  3,  5, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerTamerPhil, -1 ; OPP_JUGGLER, 8
	object_event  8,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 2, TrainerTamerEdgar, -1 ; OPP_TAMER, 2
	object_event  2,  7, SPRITE_ROCKER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerJugglerShawn, -1 ; OPP_JUGGLER, 4
	object_event  7, 15, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, FuchsiaGymGuideScript, -1
