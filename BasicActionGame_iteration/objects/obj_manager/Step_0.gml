/// @description Insert description here
// You can write your code in this editor

if (room == rm_start) {
	if (keyboard_check_pressed(vk_space)) {	
		room_goto(rm_game)
		start = true
	}
}

if (room == rm_game) {
	if (start) {
		audio_play_sound(snd_gamestart, 0, false)	
		start = false
	}
	
	survive_timer++
	
	// TODO: audio
	//if !audio_is_playing(sng_cannon) {
	//	audio_play_sound(sng_cannon, 0, true)
	//}
	
	if (survive_timer >= survive_timer_max) {
		SURVIVEDTIME++
		survive_timer = 0
			
		if (SURVIVEDTIME % 10 == 0) {
			SCORE += SCORE_BONUS
		}
	}
	
	if (HISCORE < SCORE) { 
		HISCORE = SCORE 
	}
	
	if (DEAD) {
		room_goto(rm_end)
	}
}

if (room == rm_end) {
	// TODO: end audio
	//if (audio_is_playing(sng_cannon)) {
	//	audio_stop_sound(sng_cannon)	
	//}

	if (keyboard_check_pressed(vk_space)) {	
		room_goto(rm_game)
		start = true
		DEAD = false
		SCORE = 0
		SURVIVEDTIME = 0
	}
}