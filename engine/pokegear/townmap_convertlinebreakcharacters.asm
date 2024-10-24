TownMap_ConvertLineBreakCharacters:
	ld hl, wStringBuffer1
.loop
	ld a, [hl]
	cp "@"
	jr z, .end
	cp "<WBR>"
	jr z, .line_feed
	cp "<BSP>"
	jr z, .line_feed
	inc hl
	jr .loop

.line_feed
	ld [hl], "<LF>"

.end
	ld de, wStringBuffer1
	hlcoord 2, 0 ;9, 0
	call PlaceString
	ret
