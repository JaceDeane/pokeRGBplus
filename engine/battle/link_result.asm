DetermineLinkBattleResult:
	farcall UpdateEnemyMonInParty
	ld hl, wPartyMon1HP
	call .CountMonsRemaining
	push bc
	ld hl, wOTPartyMon1HP
	call .CountMonsRemaining
	ld a, c
	pop bc
	cp c
	jr z, .even_number_of_mons_remaining
	jr c, .defeat
	jr .victory

.even_number_of_mons_remaining
	call .BothSides_CheckNumberMonsAtFullHealth
	jr z, .drawn
	ld a, e
	cp $1
	jr z, .victory
	cp $2
	jr z, .defeat
	ld hl, wPartyMon1HP
	call .CalcPercentHPRemaining
	push de
	ld hl, wOTPartyMon1HP
	call .CalcPercentHPRemaining
	pop hl
	ld a, d
	cp h
	jr c, .victory
	jr z, .compare_lo
	jr .defeat

.compare_lo
	ld a, e
	cp l
	jr z, .drawn
	jr nc, .defeat

.victory
	ld a, [wBattleResult]
	and $f0
	ld [wBattleResult], a ; WIN
	ret

.defeat
	ld a, [wBattleResult]
	and $f0
	add LOSE
	ld [wBattleResult], a
	ret

.drawn
	ld a, [wBattleResult]
	and $f0
	add DRAW
	ld [wBattleResult], a
	ret

.CountMonsRemaining:
	ld c, 0
	ld b, 3
	ld de, PARTYMON_STRUCT_LENGTH - 1
.loop
	ld a, [hli]
	or [hl]
	jr nz, .not_fainted
	inc c

.not_fainted
	add hl, de
	dec b
	jr nz, .loop
	ret

.CalcPercentHPRemaining:
	ld de, 0
	ld c, $3
.loop2
	ld a, [hli]
	or [hl]
	jr z, .next
	dec hl
	xor a
	ldh [hDividend + 0], a
	ld a, [hli]
	ldh [hDividend + 1], a
	ld a, [hli]
	ldh [hDividend + 2], a
	xor a
	ldh [hDividend + 3], a
	ld a, [hli]
	ld b, a
	ld a, [hld]
	srl b
	rr a
	srl b
	rr a
	ldh [hDivisor], a
	ld b, $4
	call Divide
	ldh a, [hQuotient + 3]
	add e
	ld e, a
	ldh a, [hQuotient + 2]
	adc d
	ld d, a
	dec hl

.next
	push de
	ld de, $2f
	add hl, de
	pop de
	dec c
	jr nz, .loop2
	ret

.BothSides_CheckNumberMonsAtFullHealth:
	ld hl, wPartyMon1HP
	call .CheckFaintedOrFullHealth
	jr nz, .finish ; we have a pokemon that's neither fainted nor at full health
	ld hl, wOTPartyMon1HP
	call .CheckFaintedOrFullHealth
	ld e, $1 ; victory
	ret

.finish
	ld hl, wOTPartyMon1HP
	call .CheckFaintedOrFullHealth
	ld e, $0 ; drawn
	ret nz ; we both have pokemon that are neither fainted nor at full health
	ld e, $2 ; defeat
	ld a, $1 ; not drawn
	and a
	ret

.CheckFaintedOrFullHealth:
	ld d, 3
.loop3
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	or b
	jr z, .fainted_or_full_health
	ld a, [hli]
	cp b
	ret nz
	ld a, [hld]
	cp c
	ret nz

.fainted_or_full_health
	push de
	ld de, PARTYMON_STRUCT_LENGTH - 2
	add hl, de
	pop de
	dec d
	jr nz, .loop3
	ret

; ====== Below moved from `\battle\core.asm` ======

ShowLinkBattleParticipantsAfterEnd:
	farcall StubbedTrainerRankings_LinkBattles
	farcall BackupGSBallFlag
	ld a, [wCurOTMon]
	ld hl, wOTPartyMon1Status
	call GetPartyLocation
	ld a, [wEnemyMonStatus]
	ld [hl], a
	call ClearTilemap
	farcall _ShowLinkBattleParticipants
	ret

DisplayLinkBattleResult:
	farcall CheckMobileBattleError
	jp c, .Mobile_InvalidBattle
	; call IsMobileBattle2
		ld a, [wLinkMode]
		cp LINK_MOBILE
	jr nz, .proceed

	ld hl, wcd2a
	bit 4, [hl]
	jr z, .proceed

	farcall DetermineLinkBattleResult

.proceed
	ld a, [wBattleResult]
	and $f
	cp LOSE
	jr c, .win ; WIN
	jr z, .lose ; LOSE
	; DRAW
	farcall StubbedTrainerRankings_ColosseumDraws
	ld de, .Draw
	jr .store_result

.win
	farcall StubbedTrainerRankings_ColosseumWins
	ld de, .YouWin
	jr .store_result

.lose
	farcall StubbedTrainerRankings_ColosseumLosses
	ld de, .YouLose
	jr .store_result

.store_result
	hlcoord 6, 8
	call PlaceString
	farcall BackupGSBallFlag
	ld c, 200
	call DelayFrames

	ld a, BANK(sLinkBattleStats)
	call OpenSRAM

	call AddLastLinkBattleToLinkRecord
	call ReadAndPrintLinkBattleRecord

	call CloseSRAM

	; call IsMobileBattle2
		ld a, [wLinkMode]
		cp LINK_MOBILE
	jr z, .mobile
	call WaitPressAorB_BlinkCursor
	call ClearTilemap
	ret

.mobile
	ld c, 200
	call DelayFrames
	call ClearTilemap
	ret

.YouWin:
	db "YOU WIN@"
.YouLose:
	db "YOU LOSE@"
.Draw:
	db "  DRAW@"

.Mobile_InvalidBattle:
	hlcoord 6, 8
	ld de, .InvalidBattle
	call PlaceString
	ld c, 200
	call DelayFrames
	call ClearTilemap
	ret

.InvalidBattle:
	db "INVALID BATTLE@"

; ====== WAS HERE: IsMobileBattle2

_DisplayLinkRecord:
	ld a, BANK(sLinkBattleStats)
	call OpenSRAM

	call ReadAndPrintLinkBattleRecord

	call CloseSRAM
	hlcoord 0, 0, wAttrmap
	xor a
	ld bc, SCREEN_WIDTH * SCREEN_HEIGHT
	call ByteFill
	call WaitBGMap2
	ld b, SCGB_DIPLOMA
	call GetSGBLayout
	call SetDefaultBGPAndOBP
	ld c, 8
	call DelayFrames
	call WaitPressAorB_BlinkCursor
	ret

ReadAndPrintLinkBattleRecord:
	call ClearTilemap
	call ClearSprites
	call .PrintBattleRecord
	hlcoord 0, 8
	ld b, NUM_LINK_BATTLE_RECORDS
	ld de, sLinkBattleRecord1Name
.loop
	push bc
	push hl
	push de
	ld a, [de]
	and a
	jr z, .PrintFormatString
	ld a, [wSavedAtLeastOnce]
	and a
	jr z, .PrintFormatString
	push hl
	push hl
	ld h, d
	ld l, e
	ld de, wLinkBattleRecordName
	ld bc, NAME_LENGTH - 1
	call CopyBytes
	ld a, "@"
	ld [de], a
	inc de ; wLinkBattleRecordWins
	ld bc, 6
	call CopyBytes
	ld de, wLinkBattleRecordName
	pop hl
	call PlaceString
	pop hl
	ld de, 26
	add hl, de
	push hl
	ld de, wLinkBattleRecordWins
	lb bc, 2, 4
	call PrintNum
	pop hl
	ld de, 5
	add hl, de
	push hl
	ld de, wLinkBattleRecordLosses
	lb bc, 2, 4
	call PrintNum
	pop hl
	ld de, 5
	add hl, de
	ld de, wLinkBattleRecordDraws
	lb bc, 2, 4
	call PrintNum
	jr .next

.PrintFormatString:
	ld de, .Format
	call PlaceString
.next
	pop hl
	ld bc, LINK_BATTLE_RECORD_LENGTH
	add hl, bc
	ld d, h
	ld e, l
	pop hl
	ld bc, 2 * SCREEN_WIDTH
	add hl, bc
	pop bc
	dec b
	jr nz, .loop
	ret

.PrintBattleRecord:
	hlcoord 1, 0
	ld de, .Record
	call PlaceString

	hlcoord 0, 6
	ld de, .Result
	call PlaceString

	hlcoord 0, 2
	ld de, .Total
	call PlaceString

	hlcoord 6, 4
	ld de, sLinkBattleWins
	call .PrintZerosIfNoSaveFileExists
	jr c, .quit

	lb bc, 2, 4
	call PrintNum

	hlcoord 11, 4
	ld de, sLinkBattleLosses
	call .PrintZerosIfNoSaveFileExists

	lb bc, 2, 4
	call PrintNum

	hlcoord 16, 4
	ld de, sLinkBattleDraws
	call .PrintZerosIfNoSaveFileExists

	lb bc, 2, 4
	call PrintNum

.quit
	ret

.PrintZerosIfNoSaveFileExists:
	ld a, [wSavedAtLeastOnce]
	and a
	ret nz
	ld de, .Scores
	call PlaceString
	scf
	ret

.Scores:
	db "   0    0    0@"

.Format:
	db "  ---  <LF>"
	db "         -    -    -@"
.Record:
	db "<PLAYER>'s RECORD@"
.Result:
	db "RESULT WIN LOSE DRAW@"
.Total:
	db "TOTAL  WIN LOSE DRAW@"

; ====== NEXT: BattleEnd_HandleRoamMons

; ====== Below also moved from `\battle\core.asm` ======

AddLastLinkBattleToLinkRecord:
	ld hl, wOTPlayerID
	ld de, wStringBuffer1
	ld bc, 2
	call CopyBytes
	ld hl, wOTPlayerName
	ld bc, NAME_LENGTH - 1
	call CopyBytes
	ld hl, sLinkBattleStats - (LINK_BATTLE_RECORD_LENGTH - 6)
	call .StoreResult
	ld hl, sLinkBattleRecord
	ld d, NUM_LINK_BATTLE_RECORDS
.loop
	push hl
	inc hl
	inc hl
	ld a, [hl]
	dec hl
	dec hl
	and a
	jr z, .copy
	push de
	ld bc, LINK_BATTLE_RECORD_LENGTH - 6
	ld de, wStringBuffer1
	call CompareBytesLong
	pop de
	pop hl
	jr c, .done
	ld bc, LINK_BATTLE_RECORD_LENGTH
	add hl, bc
	dec d
	jr nz, .loop
	ld bc, -LINK_BATTLE_RECORD_LENGTH
	add hl, bc
	push hl

.copy
	ld d, h
	ld e, l
	ld hl, wStringBuffer1
	ld bc, LINK_BATTLE_RECORD_LENGTH - 6
	call CopyBytes
	ld b, 6
	xor a
.loop2
	ld [de], a
	inc de
	dec b
	jr nz, .loop2
	pop hl

.done
	call .StoreResult
	call .FindOpponentAndAppendRecord
	ret

.StoreResult:
	ld a, [wBattleResult]
	and $f
	cp LOSE
	ld bc, (sLinkBattleRecord1Wins - sLinkBattleRecord1) + 1
	jr c, .okay ; WIN
	ld bc, (sLinkBattleRecord1Losses - sLinkBattleRecord1) + 1
	jr z, .okay ; LOSE
	; DRAW
	ld bc, (sLinkBattleRecord1Draws - sLinkBattleRecord1) + 1
.okay
	add hl, bc
	call .CheckOverflow
	ret nc
	inc [hl]
	ret nz
	dec hl
	inc [hl]
	ret

.CheckOverflow:
	dec hl
	ld a, [hl]
	inc hl
	cp HIGH(MAX_LINK_RECORD)
	ret c
	ld a, [hl]
	cp LOW(MAX_LINK_RECORD)
	ret

.FindOpponentAndAppendRecord:
	ld b, NUM_LINK_BATTLE_RECORDS
	ld hl, sLinkBattleRecord1End - 1
	ld de, wLinkBattleRecordBuffer
.loop3
	push bc
	push de
	push hl
	call .LoadPointer
	pop hl
	ld a, e
	pop de
	ld [de], a
	inc de
	ld a, b
	ld [de], a
	inc de
	ld a, c
	ld [de], a
	inc de
	ld bc, LINK_BATTLE_RECORD_LENGTH
	add hl, bc
	pop bc
	dec b
	jr nz, .loop3
	ld b, $0
	ld c, $1
.loop4
	ld a, b
	add b
	add b
	ld e, a
	ld d, 0
	ld hl, wLinkBattleRecordBuffer
	add hl, de
	push hl
	ld a, c
	add c
	add c
	ld e, a
	ld d, 0
	ld hl, wLinkBattleRecordBuffer
	add hl, de
	ld d, h
	ld e, l
	pop hl
	push bc
	ld c, 3
	call CompareBytes
	pop bc
	jr z, .equal
	jr nc, .done2

.equal
	inc c
	ld a, c
	cp $5
	jr nz, .loop4
	inc b
	ld c, b
	inc c
	ld a, b
	cp $4
	jr nz, .loop4
	ret

.done2
	push bc
	ld a, b
	ld bc, LINK_BATTLE_RECORD_LENGTH
	ld hl, sLinkBattleRecord
	call AddNTimes
	push hl
	ld de, wLinkBattleRecordBuffer
	ld bc, LINK_BATTLE_RECORD_LENGTH
	call CopyBytes
	pop hl
	pop bc
	push hl
	ld a, c
	ld bc, LINK_BATTLE_RECORD_LENGTH
	ld hl, sLinkBattleRecord
	call AddNTimes
	pop de
	push hl
	ld bc, LINK_BATTLE_RECORD_LENGTH
	call CopyBytes
	ld hl, wLinkBattleRecordBuffer
	ld bc, LINK_BATTLE_RECORD_LENGTH
	pop de
	call CopyBytes
	ret

.LoadPointer:
	ld e, $0
	ld a, [hld]
	ld c, a
	ld a, [hld]
	ld b, a
	ld a, [hld]
	add c
	ld c, a
	ld a, [hld]
	adc b
	ld b, a
	jr nc, .okay2
	inc e

.okay2
	ld a, [hld]
	add c
	ld c, a
	ld a, [hl]
	adc b
	ld b, a
	ret nc
	inc e
	ret

; ====== NEXT: InitBattleDisplay

HandleLinkBattleEnd:
	call ShowLinkBattleParticipantsAfterEnd
	ld c, 150
	call DelayFrames
	jp DisplayLinkBattleResult
