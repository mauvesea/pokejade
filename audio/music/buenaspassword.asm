Music_BuenasPassword: ; 178153
	dbw $c0, Music_BuenasPassword_Ch1
	dbw $01, Music_BuenasPassword_Ch2
	dbw $02, Music_BuenasPassword_Ch3
	dbw $03, Music_BuenasPassword_Ch4
; 17815f


Music_BuenasPassword_Ch1: ; 17815f
	tempo 136
	volume $77
	tone $0001
	notetype $c, $b3
	note __, 7

Music_BuenasPassword_branch_17816b: ; 17816b
	stereopanning $ff
	note __, 15
	note __, 15
	dutycycle $3
	notetype $6, $97
	stereopanning $f
	octave 4
	note G#, 0
	note __, 0
	note G#, 0
	note __, 0
	note F#, 1
	note G#, 1
	note __, 9
	note __, 9
	stereopanning $f0
	note C#, 1
	note F_, 1
	note G#, 0
	note __, 0
	note G#, 0
	note __, 0
	note F#, 1
	note G#, 1
	note __, 11
	dutycycle $2
	callchannel Music_BuenasPassword_branch_178204
	stereopanning $ff
	callchannel Music_BuenasPassword_branch_1782df
	callchannel Music_BuenasPassword_branch_178222
	callchannel Music_BuenasPassword_branch_178204
	stereopanning $ff
	callchannel Music_BuenasPassword_branch_1782df
	callchannel Music_BuenasPassword_branch_178222
	callchannel Music_BuenasPassword_branch_178204
	dutycycle $1
	note C#, 1
	note __, 1
	note D#, 1
	note __, 1
	note F#, 1
	note __, 0
	note G#, 1
	note __, 0
	note A#, 1
	note B_, 0
	note __, 0
	octave 4
	note C#, 0
	note __, 0
	note D#, 0
	note __, 0
	octave 3
	note B_, 1
	note __, 1
	note B_, 1
	note G#, 1
	note B_, 1
	note A#, 1
	note G#, 1
	note G_, 0
	note D#, 2
	note C#, 1
	octave 2
	note B_, 1
	note A#, 0
	note G#, 2
	note A#, 1
	note G_, 1
	note A#, 0
	octave 3
	note C#, 2
	note D#, 1
	note C#, 1
	note D#, 0
	note G_, 2
	note B_, 1
	note __, 1
	note A#, 1
	note __, 1
	note G#, 1
	note __, 0
	note F#, 1
	note __, 0
	note D#, 1
	note C#, 0
	note __, 0
	note D#, 0
	note __, 0
	note F_, 0
	note __, 0
	note C#, 1
	note __, 1
	note G#, 1
	octave 4
	note C#, 1
	note F_, 1
	note G#, 0
	note __, 0
	note D#, 0
	note __, 0
	note G#, 0
	note F#, 2
	note F_, 0
	note __, 0
	note D#, 0
	note __, 0
	octave 3
	note B_, 0
	note G#, 2
	note F#, 0
	note __, 0
	note D#, 0
	note __, 0
	note G#, 0
	note D#, 1
	note F#, 0
	note G#, 0
	note __, 0
	note D#, 0
	note __, 0
	note F#, 0
	note __, 0
	note G_, 0
	note __, 0
	loopchannel 0, Music_BuenasPassword_branch_17816b
; 178204

Music_BuenasPassword_branch_178204: ; 178204
	stereopanning $f
	notetype $6, $84
	octave 4
	note D#, 1
	intensity $71
	note C#, 0
	note C_, 0
	intensity $51
	octave 3
	note A#, 0
	note G#, 0
	intensity $31
	note G_, 0
	note F_, 0
	intensity $11
	note D#, 0
	note C#, 0
	note C_, 0
	note __, 0
	notetype $c, $84
	endchannel
; 178222

Music_BuenasPassword_branch_178222: ; 178222
	octave 3
	note D#, 0
	note __, 0
	octave 2
	note G#, 0
	note __, 0
	octave 3
	note D#, 0
	octave 2
	note G#, 0
	note __, 0
	octave 3
	note D#, 0
	note __, 1
	endchannel
; 178231

Music_BuenasPassword_Ch2: ; 178231
	vibrato $12, $34
	dutycycle $2
	notetype $c, $a5
	note __, 6
	octave 3
	note F#, 0

Music_BuenasPassword_branch_17823c: ; 17823c
	stereopanning $ff
	callchannel Music_BuenasPassword_branch_1782df
	callchannel Music_BuenasPassword_branch_1782a4
	stereopanning $ff
	callchannel Music_BuenasPassword_branch_1782cc
	octave 3
	note B_, 1
	note A#, 1
	note B_, 1
	note G#, 15
	callchannel Music_BuenasPassword_branch_1782a4
	stereopanning $ff
	callchannel Music_BuenasPassword_branch_1782cc
	note B_, 1
	note A#, 1
	note B_, 1
	note G#, 15
	callchannel Music_BuenasPassword_branch_1782a4
	note F#, 1
	note __, 1
	note G#, 1
	note __, 1
	note A#, 1
	note __, 0
	note B_, 1
	note __, 0
	octave 4
	note C#, 1
	note D#, 0
	note __, 0
	note F_, 0
	note __, 0
	note F#, 0
	note __, 0
	note D#, 1
	note __, 1
	note G#, 1
	note F#, 1
	note G#, 1
	note D#, 13
	note C#, 0
	note D#, 0
	note C#, 5
	octave 3
	note B_, 0
	octave 4
	note C#, 0
	note D#, 7
	note F#, 1
	note __, 1
	note F_, 1
	note __, 1
	note D#, 1
	note __, 0
	note C#, 1
	note __, 0
	octave 3
	note B_, 1
	note G#, 0
	note __, 0
	note A#, 0
	note __, 0
	note B_, 0
	note __, 0
	note G#, 1
	note __, 1
	octave 4
	note C#, 1
	note F_, 1
	note G#, 1
	note B_, 13
	note A#, 0
	note B_, 0
	note G#, 9
	intensity $84
	octave 2
	note D#, 0
	note __, 0
	note F#, 0
	note __, 0
	note G_, 0
	note __, 0
	intensity $a5
	loopchannel 0, Music_BuenasPassword_branch_17823c
; 1782a4

Music_BuenasPassword_branch_1782a4: ; 1782a4
	octave 3
	note G#, 0
	note __, 0
	note D#, 0
	note __, 0
	note F#, 0
	note D#, 0
	note __, 0
	note F#, 0
	note __, 1
	stereopanning $f0
	octave 4
	note G#, 0
	notetype $6, $81
	note G_, 0
	note F_, 0
	intensity $71
	note D#, 0
	note C#, 0
	intensity $61
	note C_, 0
	octave 3
	note A#, 0
	intensity $41
	note G#, 0
	intensity $21
	note G_, 0
	note F_, 0
	note __, 0
	notetype $c, $a5
	endchannel
; 1782cc

Music_BuenasPassword_branch_1782cc: ; 1782cc
	octave 4
	note G#, 1
	note __, 1
	note F#, 1
	note __, 1
	note F_, 1
	note __, 0
	note D#, 1
	note __, 0
	note C#, 1
	note D#, 0
	note __, 0
	note D#, 0
	note __, 0
	note C#, 0
	note __, 0
	note D#, 1
	note __, 1
	endchannel
; 1782df

Music_BuenasPassword_branch_1782df: ; 1782df
	octave 3
	note G#, 0
	note __, 0
	note D#, 0
	note __, 0
	note F#, 0
	note D#, 0
	note __, 0
	note F#, 0
	note F_, 0
	note __, 0
	note C#, 0
	note __, 0
	octave 2
	note B_, 0
	note G#, 2
	octave 3
	note G#, 0
	note __, 0
	note D#, 0
	note __, 0
	note F#, 0
	note D#, 0
	note __, 0
	note F#, 0
	note F_, 0
	note __, 0
	note C#, 0
	note __, 0
	octave 2
	note B_, 0
	note G#, 1
	octave 3
	note F#, 0
	note G#, 0
	note __, 0
	note D#, 0
	note __, 0
	note F#, 0
	note D#, 0
	note __, 0
	note F#, 0
	note F_, 0
	note __, 0
	note C#, 0
	note __, 0
	octave 2
	note B_, 0
	note G#, 2
	endchannel

Music_BuenasPassword_Ch3: ; 178311
	notetype $c, $14
	note __, 7

Music_BuenasPassword_branch_178315: ; 178315
	callchannel Music_BuenasPassword_branch_1783a7
	callchannel Music_BuenasPassword_branch_1783a7
	callchannel Music_BuenasPassword_branch_1783a7
	octave 2
	note G#, 0
	note __, 0
	octave 3
	note F#, 0
	note __, 0
	octave 2
	note G#, 0
	octave 3
	note D#, 1
	octave 2
	note G#, 0
	note __, 1
	note B_, 0
	note __, 0
	note G#, 3
	loopchannel 3, Music_BuenasPassword_branch_178315
	note F#, 0
	note __, 0
	note A#, 0
	note __, 0
	octave 3
	note C#, 0
	octave 2
	note F#, 0
	note __, 0
	octave 3
	note C#, 0
	octave 2
	note F#, 0
	note __, 0
	note A#, 1
	octave 3
	note C#, 0
	note __, 0
	octave 2
	note F#, 1
	note G#, 0
	note __, 0
	note G#, 0
	note __, 0
	note B_, 0
	note G#, 0
	note __, 0
	octave 3
	note D#, 0
	octave 2
	note G#, 0
	note __, 0
	octave 3
	note G#, 1
	octave 2
	note G#, 0
	note __, 0
	octave 3
	note D#, 1
	octave 2
	note D#, 0
	note __, 0
	note D#, 0
	note __, 0
	note G#, 0
	note D#, 0
	note __, 0
	note A#, 0
	note D#, 0
	note __, 0
	note G#, 1
	note A#, 0
	note __, 0
	note D#, 0
	note __, 0
	note D#, 0
	note __, 0
	note D#, 0
	note __, 0
	note G_, 0
	note D#, 0
	note __, 0
	note A#, 0
	note D#, 0
	note __, 0
	octave 3
	note D#, 1
	octave 2
	note D#, 0
	note __, 0
	note G_, 1
	callchannel Music_BuenasPassword_branch_1783bc
	octave 3
	note C#, 0
	note __, 0
	note C#, 0
	note __, 0
	note F_, 0
	note C#, 0
	note __, 0
	note G#, 0
	octave 2
	note G#, 0
	note __, 0
	octave 3
	note F_, 1
	octave 2
	note G#, 0
	note __, 0
	octave 3
	note C#, 1
	callchannel Music_BuenasPassword_branch_1783bc
	note G#, 0
	note __, 0
	note G#, 0
	note __, 0
	note B_, 0
	note G#, 1
	octave 3
	note D#, 0
	octave 2
	note G#, 0
	note __, 0
	note D#, 0
	note __, 0
	note F#, 0
	note __, 0
	note G_, 0
	note __, 0
	loopchannel 0, Music_BuenasPassword_branch_178315
; 1783a7

Music_BuenasPassword_branch_1783a7: ; 1783a7
	octave 2
	note G#, 0
	note __, 0
	octave 3
	note F#, 0
	note __, 0
	octave 2
	note G#, 0
	octave 3
	note D#, 1
	octave 2
	note G#, 0
	octave 3
	note C#, 0
	note __, 0
	note B_, 0
	note __, 0
	note C#, 0
	note F_, 1
	note C#, 0
	endchannel
; 1783bc

Music_BuenasPassword_branch_1783bc: ; 1783bc
	octave 2
	note G#, 0
	note __, 0
	note G#, 0
	note __, 0
	note B_, 0
	note G#, 0
	note __, 0
	octave 3
	note D#, 0
	octave 2
	note G#, 0
	note __, 0
	note B_, 1
	octave 3
	note D#, 0
	note __, 0
	octave 2
	note G#, 1
	endchannel

Music_BuenasPassword_Ch4: ; 1783d0
	togglenoise $3
	notetype $c
	note D#, 1
	note D_, 1
	note D_, 1
	note D_, 0
	note D_, 0

Music_BuenasPassword_branch_1783d9: ; 1783d9
	callchannel Music_BuenasPassword_branch_17840c
	callchannel Music_BuenasPassword_branch_17840c
	callchannel Music_BuenasPassword_branch_17840c
	callchannel Music_BuenasPassword_branch_178424
	loopchannel 4, Music_BuenasPassword_branch_1783d9
	callchannel Music_BuenasPassword_branch_17840c
	callchannel Music_BuenasPassword_branch_17840c
	callchannel Music_BuenasPassword_branch_17840c
	stereopanning $ff
	note D#, 1
	stereopanning $f0
	note G_, 1
	stereopanning $ff
	note D_, 1
	stereopanning $f
	note G_, 0
	note G_, 0
	stereopanning $f0
	note G_, 1
	stereopanning $ff
	note D_, 1
	note D_, 1
	note D_, 0
	note D_, 0
	loopchannel 0, Music_BuenasPassword_branch_1783d9
; 17840c

Music_BuenasPassword_branch_17840c: ; 17840c
	stereopanning $ff
	note D#, 1
	stereopanning $f0
	note G_, 1
	stereopanning $ff
	note D_, 1
	stereopanning $f
	note G_, 0
	note G_, 0
	stereopanning $f0
	note G_, 1
	stereopanning $ff
	note D#, 1
	note D_, 1
	stereopanning $f
	note G_, 1
	endchannel
; 178424

Music_BuenasPassword_branch_178424: ; 178424
	stereopanning $ff
	note D#, 1
	stereopanning $f0
	note G_, 1
	stereopanning $ff
	note D_, 1
	stereopanning $f
	note G_, 0
	note G_, 0
	stereopanning $f0
	note G_, 1
	stereopanning $ff
	note D#, 1
	note D_, 1
	note D_, 0
	note D_, 0
	endchannel
; 17843b
