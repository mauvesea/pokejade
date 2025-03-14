StopRTC: ; unreferenced
	ld a, SRAM_ENABLE
	ld [MBC3SRamEnable], a
	call LatchClock
	ld a, RTC_DH
	ldh [hSRAMBank], a
	ld [MBC3SRamBank], a
	ld a, [MBC3RTC]
	set RTC_DH_HALT, a
	ld [MBC3RTC], a
	jmp CloseSRAM

StartRTC:
	ld a, SRAM_ENABLE
	ld [MBC3SRamEnable], a
	call LatchClock
	ld a, RTC_DH
	ldh [hSRAMBank], a
	ld [MBC3SRamBank], a
	ld a, [MBC3RTC]
	res RTC_DH_HALT, a
	ld [MBC3RTC], a
	jmp CloseSRAM

GetTimeOfDay::
; get time of day based on the current hour
	ldh a, [hHours] ; hour
	ld hl, TimesOfDay

.check
; if we're within the given time period,
; get the corresponding time of day
	cp [hl]
	jr c, .match
; else, get the next entry
	inc hl
	inc hl
; try again
	jr .check

.match
; get time of day
	inc hl
	ld a, [hl]
	ld [wTimeOfDay], a
	ret

TimesOfDay:
; hours for the time of day
; 0400-0959 morn | 1000-1659 day | 1700-1959 eve | 2000-0359 nite
	db MORN_HOUR, NITE_F
	db DAY_HOUR,  MORN_F
	db EVE_HOUR,  DAY_F
	db NITE_HOUR, EVE_F
	db MAX_HOUR,  NITE_F
	db -1, MORN_F

StageRTCTimeForSave:
	call UpdateTime
	ld hl, wRTC
	ld a, [wCurDay]
	ld [hli], a
	ldh a, [hHours]
	ld [hli], a
	ldh a, [hMinutes]
	ld [hli], a
	ldh a, [hSeconds]
	ld [hli], a
	ret

SaveRTC:
	ld a, SRAM_ENABLE
	ld [MBC3SRamEnable], a
	call LatchClock
	ld hl, MBC3RTC
	ld a, RTC_DH
	ldh [hSRAMBank], a
	ld [MBC3SRamBank], a
	res RTC_DH_OVERFLOW, [hl]
	ld a, BANK(sRTCStatusFlags)
	ldh [hSRAMBank], a
	ld [MBC3SRamBank], a
	xor a
	ld [sRTCStatusFlags], a
	jmp CloseSRAM

StartClock::
	call GetClock
	call _FixDays
	call FixDays
	call c, RecordRTCStatus
	jr StartRTC

_FixDays:
	ld hl, hRTCDayHi
	bit RTC_DH_OVERFLOW, [hl]
	jr nz, .reset_rtc
	bit RTC_DH_HALT, [hl]
	jr nz, .reset_rtc
	xor a
	ret

.reset_rtc
	ld a, RTC_RESET
	jmp RecordRTCStatus

ClockContinue:
	call CheckRTCStatus
	ld c, a
	and RTC_RESET | RTC_DAYS_EXCEED_255
	jr nz, .time_overflow

	ld a, c
	and RTC_DAYS_EXCEED_139
	jr z, .dont_update

	call UpdateTime
	ld a, [wRTC + 0]
	ld b, a
	ld a, [wCurDay]
	cp b
	jr c, .dont_update

.time_overflow
	farjp ClearDailyTimers

.dont_update
	xor a
	ret

_InitTime::
	call GetClock
	call FixDays
	ld hl, hRTCSeconds
	ld de, wStartSecond

	ld a, [wStringBuffer2 + 3]
	sub [hl]
	dec hl
	jr nc, .okay_secs
	add 60
.okay_secs
	ld [de], a
	dec de

	ld a, [wStringBuffer2 + 2]
	sbc [hl]
	dec hl
	jr nc, .okay_mins
	add 60
.okay_mins
	ld [de], a
	dec de

	ld a, [wStringBuffer2 + 1]
	sbc [hl]
	dec hl
	jr nc, .okay_hrs
	add 24
.okay_hrs
	ld [de], a
	dec de

	ld a, [wStringBuffer2]
	sbc [hl]
	dec hl
	jr nc, .okay_days
	add 140
	ld c, 7
	call SimpleDivide

.okay_days
	ld [de], a
	ret
