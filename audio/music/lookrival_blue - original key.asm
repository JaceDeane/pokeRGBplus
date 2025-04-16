Music_LookRival_Blue:
	channel_count 4
	channel 1, Music_LookRival_Blue_Ch1
	channel 2, Music_LookRival_Blue_Ch2
	channel 3, Music_LookRival_Blue_Ch3
	channel 4, Music_LookRival_Blue_Ch4

Music_LookRival_Blue_Ch1:
	tempo 112
	volume 7, 7
	pitch_offset 1
	stereo_panning FALSE, TRUE
	note_type 12, 11, 2
	vibrato 8, 3, 5
	duty_cycle 3
	octave 4
	note D_, 1
	note C#, 1
	note C_, 1
	octave 3
	note B_, 1
	note A#, 2
	note A_, 1
	note G#, 1
	note G_, 1
	note F#, 1
	note F_, 6
	volume_envelope 11, 7
	note D_, 1
	rest 3
	volume_envelope 11, 2
	note D_, 1
	rest 5
	volume_envelope 10, 8
	note A_, 2
	volume_envelope 10, 5
	note G_, 2
	volume_envelope 10, 6
	note A_, 2
.mainloop:
	volume_envelope 11, 5
	octave 3
	note B_, 4
	note A#, 2
	note A_, 4
	note G_, 2
	octave 4
	note C_, 4
	note D_, 2
	rest 4
	note D_, 4
	note C#, 2
	note C_, 2
	volume_envelope 10, 8
	octave 3
	note B_, 2
	octave 4
	volume_envelope 10, 7
	note C_, 4
	volume_envelope 6, 6
	note E_, 2
	note D_, 4
	volume_envelope 11, 6
	note C_, 2
	octave 3
	note B_, 4
	octave 4
	note C_, 2
	rest 4
	note G_, 4
	note G_, 2
	volume_envelope 11, 4
	note F#, 2
	note E_, 2
	note D_, 2
	note F#, 2
	octave 3
	note A_, 2
	octave 4
	note D_, 2
	note F#, 2
	octave 3
	note A_, 2
	octave 4
	volume_envelope 11, 7
	note D_, 2
	octave 3
	note D_, 2
	octave 4
	note D_, 2
	rest 2
	octave 3
	note D_, 2
	octave 4
	note C_, 4
	octave 3
	note B_, 2
	note A#, 2
	note B_, 2
	octave 4
	note C_, 2
	note F_, 2
	octave 3
	note G#, 2
	octave 4
	note C_, 2
	note F_, 2
	note D#, 2
	note C_, 2
	octave 3
	note A#, 2
	note G_, 2
	rest 4
	note A#, 4
	octave 4
	note C_, 2
	octave 3
	volume_envelope 11, 2
	note A#, 2
	volume_envelope 11, 7
	octave 4
	note C_, 2
	octave 3
	note G_, 4
	note D_, 2
	note F_, 6
	note F#, 4
	note D_, 2
	rest 4
	note D_, 4
	note A_, 2
	note G_, 2
	note A_, 2
	sound_loop 0, .mainloop

Music_LookRival_Blue_Ch2:
	duty_cycle 3
	stereo_panning TRUE, FALSE
	note_type 12, 12, 8
	vibrato 18, 1, 6
	octave 4
	note B_, 1
	note A#, 1
	note A_, 1
	note G#, 1
	note G_, 2
	note F#, 1
	note F_, 1
	note E_, 1
	note D#, 1
	note D_, 6
	octave 3
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note D_, 1
	rest 1
	octave 4
	note D_, 2
	volume_envelope 11, 8
	note F_, 2
	note F#, 2
.mainloop:
	vibrato 18, 1, 6
	volume_envelope 12, 8
	octave 4
	note G_, 4
	note D_, 2
	note F_, 6
	note F#, 4
	note G_, 2
	rest 4
	note G_, 4
	note G_, 2
	volume_envelope 11, 8
	note A#, 2
	note B_, 2
	octave 5
	note C_, 4
	octave 4
	note G_, 2
	note A#, 6
	volume_envelope 12, 8
	note B_, 4
	octave 5
	note C_, 2
	rest 4
	note C_, 4
	note C_, 2
	octave 4
	note B_, 2
	octave 5
	note C_, 2
	note D_, 16
	note D_, 6
	note F_, 4
	note D_, 2
	note C_, 2
	volume_envelope 11, 8
	note D_, 2
	note C_, 8
	note C_, 8
	octave 4
	note C_, 2
	rest 4
	note A#, 4
	note G_, 2
	note F_, 2
	volume_envelope 12, 8
	note G_, 16
	note G_, 2
	octave 3
	note G_, 2
	rest 4
	note G_, 4
	octave 4
	note D_, 2
	note F_, 2
	note F#, 2
	sound_loop 0, .mainloop

Music_LookRival_Blue_Ch3:
	note_type 12, 2, 8
	octave 5
	note D_, 2
	rest 2
	note C#, 2
	rest 2
	note C_, 2
	octave 4
	rest 2
	note B_, 2
	rest 2
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	octave 3
	rest 1
.mainloop:
	volume_envelope 2, 8
	octave 4
	note G_, 2
.loop1:
	sound_call .sub1
	sound_loop 3, .loop1
	rest 2
	octave 5
	note D_, 4
	octave 4
	note G_, 2
	note A#, 2
	note B_, 2
	note G_, 2
	octave 5
	note C_, 2
	octave 4
	note G_, 2
	rest 2
	octave 5
	note C_, 2
	octave 4
	note G_, 2
	rest 2
	note B_, 2
	octave 5
	note C_, 2
	rest 4
	note C_, 4
	note C_, 2
	octave 4
	note B_, 2
	sound_call .sub2
	rest 2
	sound_call .sub2
	octave 5
	note D_, 2
	octave 4
	note A_, 2
	note E_, 2
	octave 5
	note C_, 2
	octave 4
	rest 2
	note E_, 2
	octave 5
	note C_, 2
	octave 4
	note E_, 2
	note F_, 2
	note G_, 2
	note E_, 2
	rest 4
	note E_, 2
	octave 5
	note C_, 2
	octave 4
	note B_, 2
	note A#, 2
	note A_, 2
	note G_, 2
	note A#, 2
	rest 2
	note G_, 2
	note A#, 2
	note G_, 2
	rest 2
	note A#, 2
	note G_, 2
	sound_call .sub1
	sound_call .sub1
	octave 5
	note D_, 2
	octave 3
	sound_loop 0, .mainloop

.sub1:
	octave 5
	note D_, 2
	octave 4
	note G_, 2
	rest 2
	sound_ret

.sub2:
	octave 4
	note A_, 2
	note F#, 2
	note A_, 2
	rest 2
	note F#, 2
	note A_, 2
	note F#, 2
	sound_ret

Music_LookRival_Blue_Ch4:
	stereo_panning TRUE, FALSE
	toggle_noise 3
	drum_speed 12
	drum_note 4, 4
	drum_note 4, 4
	drum_note 4, 4
	drum_note 4, 4
	octave 8
	drum_note 3, 2
	rest 2
	drum_note 3, 2
	rest 2
	drum_note 3, 1
	rest 1
	drum_note 3, 1
	rest 1
	drum_note 3, 1
	rest 1
	drum_note 3, 1
	rest 1
.mainloop:
	drum_note 4, 4
	drum_note 3, 2
	drum_note 4, 4
	drum_note 4, 2
	drum_note 3, 4
	drum_note 4, 4
	drum_note 3, 2
	drum_note 4, 4
	drum_note 4, 2
	drum_note 3, 2
	drum_note 3, 2
	sound_loop 0, .mainloop
