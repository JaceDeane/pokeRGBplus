Music_LavenderTown_RGBplus:
	channel_count 4
	channel 1, Music_LavenderTown_RGBplus_Ch1
	channel 2, Music_LavenderTown_RGBplus_Ch2
	channel 3, Music_LavenderTown_RGBplus_Ch3
	channel 4, Music_LavenderTown_RGBplus_Ch4

Music_LavenderTown_RGBplus_Ch1:
	tempo 152
	volume 7, 7
	stereo_panning FALSE, TRUE
	toggle_perfect_pitch
	vibrato 6, 2, 4
	duty_cycle 0
	note_type 12, 11, 3
	rest 16
	rest 16
	rest 16
	rest 16
.mainloop:
	volume_envelope 8, 3
.loop1:
	octave 5
	volume_envelope 8, 3
	vibrato 0, 2, 4
	note C_, 2
	volume_envelope 4, 3
	note C_, 2
	volume_envelope 8, 3
	note G_, 2
	volume_envelope 4, 3
	note G_, 2
	volume_envelope 8, 3
	note B_, 2
	volume_envelope 4, 3
	note B_, 2
	volume_envelope 8, 3
	note F#, 2
	volume_envelope 4, 3
	note F#, 2
	sound_loop 7, .loop1
	sound_call .sub2
	sound_loop 0, .mainloop

.sub2:
	volume_envelope 8, 3
	octave 5
	note G_, 2
	volume_envelope 4, 3
	note G_, 2
	volume_envelope 8, 3
	note E_, 2
	volume_envelope 4, 3
	note E_, 2
	volume_envelope 8, 3
	octave 4
	note B_, 2
	volume_envelope 4, 3
	note B_, 2
	volume_envelope 8, 3
	note G_, 2
	volume_envelope 4, 3
	note G_, 2
	sound_ret

Music_LavenderTown_RGBplus_Ch2:
	duty_cycle 1
	vibrato 8, 2, 4
	stereo_panning TRUE, TRUE
.loop1:
	note_type 12, 9, 1
	octave 5
	vibrato 0, 3, 4
	duty_cycle 3
	note C_, 2
	volume_envelope 5, 1
	note C_, 2
	volume_envelope 9, 1
	note G_, 2
	volume_envelope 5, 1
	note G_, 2
	volume_envelope 9, 1
	note B_, 2
	volume_envelope 5, 1
	note B_, 2
	volume_envelope 9, 1
	note F#, 2
	volume_envelope 5, 1
	note F#, 2
	sound_loop 4, .loop1
.mainloop:
	note_type 12, 11, 5
	octave 3
	vibrato 8, 2, 8
	duty_cycle 3
	note G_, 8
	note G_, 8
	note E_, 8
	note E_, 8
	note G_, 4
	note F#, 4
	note E_, 4
	note B_, 4
	note C#, 8
	note C#, 8
	note G_, 8
	note G_, 8
	note F#, 8
	note F#, 8
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 4
	note C_, 8
	note C_, 8
	octave 3
	note G_, 8
	note G_, 8
	note E_, 8
	note E_, 8
	note G_, 4
	note F#, 4
	note E_, 4
	note B_, 4
	note C#, 8
	note C#, 8
	note G_, 8
	note G_, 8
	note F#, 8
	note F#, 8
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	note C_, 8
	note C_, 8
	volume_envelope 11, 7
	octave 2
.loop2:
	note F_, 16
	note C_, 16
	sound_loop 8, .loop2
	volume_envelope 5, 7
	octave 5
	sound_loop 0, .mainloop

Music_LavenderTown_RGBplus_Ch3:
	vibrato 18, 2, 4
	note_type 12, 2, 15
	load_wave 2, 1, 14, 2, 3, 3, 2, 8, 14, 1, 2, 2, 15, 15, 14, 10, 1, 0, 1, 4, 13, 12, 1, 0, 14, 3, 4, 1, 5, 1, 7, 3
	stereo_panning TRUE, FALSE
	rest 16
	rest 16
	rest 16
	rest 16
	octave 5
.mainloop:
	volume_envelope 1, 2
	octave 4
.loop1:
	vibrato 4, 2, 4
	volume_envelope 2, 15
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	sound_loop 3, .loop1
	octave 6
.loop2:
	octave 6
	volume_envelope 3, 15
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	sound_loop 2, .loop2
	octave 7
	volume_envelope 2, 15
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 4
	note E_, 4
	note G_, 4
	note F#, 4
	note B_, 4
.loop3:
	volume_envelope 2, 15
	note E_, 16
	note D_, 16
	note C_, 16
	note E_, 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note E_, 4
	sound_loop 3, .loop3
	octave 6
	volume_envelope 2, 15
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 7
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 8
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	octave 4
	note E_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	sound_loop 0, .mainloop

Music_LavenderTown_RGBplus_Ch4:
	toggle_noise 0
	drum_speed 12
	rest 16
	rest 16
	rest 16
	rest 16
.mainloop:
	octave 8
	drum_note 7, 8
	drum_note 7, 8
	sound_loop 0, .mainloop
