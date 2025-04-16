Music_LavenderTown:
	channel_count 4
	channel 1, Music_LavenderTown_Ch1
	channel 2, Music_LavenderTown_Ch2
	channel 3, Music_LavenderTown_Ch3
	channel 4, Music_LavenderTown_Ch4

Music_LavenderTown_Ch1:
	tempo 152
	volume 7, 7
	stereo_panning FALSE, TRUE
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
	sound_loop 6, .loop1
	sound_call .sub2
.loop2:
	octave 5
	volume_envelope 8, 3
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
	sound_loop 6, .loop2
	sound_call .sub2
.loop3:
	octave 5
	volume_envelope 8, 3
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
	sound_loop 6, .loop3
	sound_call .sub2
.loop4:
	octave 5
	volume_envelope 8, 3
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
	sound_loop 6, .loop4
	sound_call .sub2
	sound_loop 0, .mainloop

.sub2:
	volume_envelope 9, 3
	octave 5
	note G_, 2
	volume_envelope 8, 3
	note G_, 2
	note F_, 2
	volume_envelope 4, 3
	note F_, 2
	volume_envelope 8, 3
	note D_, 2
	volume_envelope 4, 3
	note D_, 2
	volume_envelope 8, 3
	note G_, 2
	volume_envelope 4, 3
	note G_, 2
	volume_envelope 9, 3
	note F_, 2
	volume_envelope 8, 3
	note F_, 2
	volume_envelope 9, 3
	note D_, 2
	volume_envelope 4, 3
	note D_, 2
	volume_envelope 9, 3
	octave 4
	note B_, 2
	volume_envelope 4, 3
	note B_, 2
	volume_envelope 9, 3
	note G_, 2
	volume_envelope 4, 3
	note G_, 2
	sound_ret

Music_LavenderTown_Ch2:
	duty_cycle 1
	vibrato 8, 2, 4
	stereo_panning TRUE, TRUE
.loop1:
	note_type 12, 10, 3
	octave 5
	note C_, 2
	volume_envelope 6, 3
	note C_, 2
	volume_envelope 10, 3
	note G_, 2
	volume_envelope 6, 3
	note G_, 2
	volume_envelope 10, 3
	note B_, 2
	volume_envelope 6, 3
	note B_, 2
	volume_envelope 10, 3
	note F#, 2
	volume_envelope 6, 3
	note F#, 2
	sound_loop 4, .loop1
	octave 6
	volume_envelope 6, 3
.mainloop:
	volume_envelope 11, 5
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
	note_type 12, 11, 5
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

Music_LavenderTown_Ch3:
	vibrato 18, 2, 4
	note_type 12, 1, 3
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
	volume_envelope 2, 2
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
	volume_envelope 2, 2
	note B_, 4
	note G_, 4
	note F#, 4
	note B_, 4
	sound_loop 2, .loop2
	octave 7
	volume_envelope 2, 2
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
	volume_envelope 2, 2
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
	volume_envelope 2, 2
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
	note_type 12, 1, 2
	sound_loop 0, .mainloop

Music_LavenderTown_Ch4:
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
