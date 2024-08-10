Music_ProfOaksLab:
	channel_count 4
	channel 1, Music_ProfOaksLab_Ch1
	channel 2, Music_ProfOaksLab_Ch2
	channel 3, Music_ProfOaksLab_Ch3
	channel 4, Music_ProfOaksLab_Ch4

Music_ProfOaksLab_Ch1:
	tempo 144
	volume 7, 7
	stereo_panning FALSE, TRUE
	note_type 12, 11, 3
	octave 3
	vibrato 16, 1, 2
	duty_cycle 3
	note E_, 1
	note F#, 1
	note G#, 1
	note A_, 1
	note B_, 1
	octave 4
	note C#, 1
	note D_, 1
	note E_, 1
.mainloop:
	note C#, 6
	octave 3
	note B_, 1
	note A_, 1
	note E_, 1
	note F#, 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note G_, 1
	note G#, 1
	note A_, 2
	note E_, 1
	note F#, 1
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note E_, 1
	note F#, 1
	note E_, 1
	rest 1
	note G#, 4
	octave 4
	note C#, 6
	octave 3
	note B_, 1
	note A_, 1
	note F#, 1
	note A_, 1
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	note G#, 1
	note A_, 1
	note E_, 1
	note G#, 1
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	note E_, 1
	note G#, 1
	note C#, 1
	rest 1
	note C#, 1
	rest 1
	note G#, 4
	note D_, 2
	octave 2
	note A_, 1
	octave 3
	note D_, 1
	note F#, 2
	note D_, 1
	note F#, 1
	note A_, 1
	note B_, 1
	note A_, 1
	note B_, 1
	note A_, 4
	note E_, 2
	note C#, 1
	note E_, 1
	note A_, 2
	note E_, 1
	note A_, 1
	octave 4
	note C#, 1
	note D_, 1
	note C#, 1
	note D_, 1
	note C#, 4
	octave 3
	note G#, 2
	note B_, 2
	octave 4
	note D_, 2
	note E_, 2
	octave 3
	note B_, 2
	octave 4
	note D_, 2
	note E_, 2
	note D_, 2
	octave 3
	note B_, 2
	note G#, 1
	rest 1
	note A_, 1
	rest 1
	note B_, 1
	octave 4
	rest 1
	note C#, 1
	rest 1
	note D_, 1
	rest 1
	note D#, 1
	rest 1
	note E_, 1
	rest 1
	sound_loop 0, .mainloop

Music_ProfOaksLab_Ch2:
	duty_cycle 3
	note_type 12, 12, 4
	stereo_panning TRUE, TRUE
	octave 3
	vibrato 10, 2, 5
	note G#, 1
	note A_, 1
	note B_, 1
	octave 4
	note C#, 1
	note D_, 1
	note E_, 1
	note F#, 1
	note G#, 1
.mainloop:
	volume_envelope 12, 4
	vibrato 10, 2, 5
	note A_, 6
	note G#, 1
	note F#, 1
	note E_, 6
	note D#, 1
	note E_, 1
	note F#, 4
	note E_, 8
	note E_, 4
	note F#, 6
	note E_, 1
	note D_, 1
	note C#, 6
	octave 3
	note B_, 1
	octave 4
	note C#, 1
	note D_, 4
	note C#, 8
	note C#, 4
	note D_, 6
	octave 3
	note A_, 1
	octave 4
	note D_, 1
	note F#, 8
	note E_, 6
	note C#, 1
	note E_, 1
	note A_, 8
	note G#, 4
	note A_, 2
	note G#, 2
	note F#, 4
	note G#, 2
	note F#, 2
	note E_, 2
	octave 3
	note B_, 1
	octave 4
	rest 1
	note C#, 1
	rest 1
	note D_, 1
	rest 1
	note E_, 1
	rest 1
	note F_, 1
	rest 1
	note F#, 1
	rest 1
	sound_call .sub1
	rest 1
	sound_loop 0, .mainloop

.sub1:
	note G#, 1
	sound_ret

Music_ProfOaksLab_Ch3:
	vibrato 6, 3, 8
	note_type 12, 2, 5
	stereo_panning TRUE, FALSE
	octave 3
	note E_, 1
	note D_, 1
	note C#, 1
	octave 2
	note B_, 1
	octave 3
	note D_, 1
	note C#, 1
	octave 2
	note B_, 1
	note G#, 1
.mainloop:
	note A_, 6
	octave 3
	note C#, 1
	note E_, 1
	note A_, 6
	note C#, 1
	octave 2
	note B_, 1
	note A_, 4
	octave 3
	note A_, 8
	octave 4
	note C#, 4
	octave 3
	note F#, 6
	note C#, 1
	note F#, 1
	octave 2
	note F#, 6
	octave 3
	note C#, 1
	note F#, 1
	note C#, 6
	note E_, 2
	note G#, 2
	note F#, 2
	note E_, 2
	note C#, 2
	note D_, 2
	rest 4
	note D_, 1
	note D_, 1
	note D_, 1
	rest 1
	note D_, 1
	rest 1
	note A_, 4
	note E_, 2
	rest 4
	note E_, 1
	note E_, 1
	octave 2
	note A_, 1
	rest 1
	note A_, 1
	rest 1
	octave 3
	note A_, 4
	note E_, 2
	octave 4
	note E_, 2
	octave 3
	note D_, 2
	octave 4
	note D_, 2
	octave 2
	note B_, 2
	octave 3
	note B_, 2
	octave 2
	note G#, 2
	octave 3
	note G#, 2
	octave 2
	note E_, 2
	octave 3
	note G#, 1
	rest 1
	note F#, 1
	rest 1
	note E_, 1
	rest 1
	note D_, 1
	rest 1
	note C#, 1
	rest 1
	octave 2
	note B_, 1
	rest 1
	note G#, 1
	rest 1
	sound_loop 0, .mainloop

Music_ProfOaksLab_Ch4:
	stereo_panning TRUE, FALSE
	toggle_noise 0
	drum_speed 12
	rest 8
.mainloop:
	drum_note 8, 4
	sound_loop 0, .mainloop
