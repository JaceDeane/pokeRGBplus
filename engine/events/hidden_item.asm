HiddenItemScript::
	opentext
	readmem wHiddenItemID
	getitemname STRING_BUFFER_3, USE_SCRIPT_VAR
	writetext .PlayerFoundItemText
	giveitem ITEM_FROM_MEM
	iffalse .bag_full
	callasm SetMemEvent
	specialsound ; always SFX_GET_ITEM_2 in R/B
	itemnotify
	sjump .finish

.bag_full
	promptbutton
	writetext .ButNoSpaceText
	waitbutton

.finish
	closetext
	end

.PlayerFoundItemText:
	text_far _PlayerFoundItemText
	text_end

.ButNoSpaceText:
	text_far _ButNoSpaceText
	text_end

SetMemEvent:
	ld hl, wHiddenItemEvent
	ld a, [hli]
	ld d, [hl]
	ld e, a
	ld b, SET_FLAG
	call EventFlagAction
	ret

HiddenCoinsScript::
	checkitem COIN_CASE
	iffalse .no_coin_case
	opentext
	readmem wHiddenItemID
	getnum STRING_BUFFER_3
	writetext .PlayerFoundCoinsText
	playsound SFX_RB_ITEM_1 ; SFX_GET_COIN_FROM_SLOTS
	waitsfx
	callasm GiveHiddenCoins
	callasm SetMemEvent
	checkcoins MAX_COINS
	ifequal HAVE_LESS, .not_max_coins
	promptbutton
	writetext .PlayerDroppedCoinsText
.not_max_coins
	waitbutton
	closetext
.no_coin_case
	end

.PlayerFoundCoinsText:
	text "<PLAYER> found"
	line "@"
	text_ram wStringBuffer3
	text " coins!"
	done

.PlayerDroppedCoinsText:
	text "Oops! Dropped"
	line "some coins!"
	done

GiveHiddenCoins:
	xor a
	ldh [hMoneyTemp], a
	ld a, [wHiddenItemID]
	ldh [hMoneyTemp + 1], a
	ld bc, hMoneyTemp
	
	farcall GiveCoins
	ret
