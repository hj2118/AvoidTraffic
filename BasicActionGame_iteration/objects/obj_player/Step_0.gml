/// @description Insert description here
// You can write your code in this editor

if (!got_hit) {	// to make the player move only when not hit
	image_speed = 0
	
	if (!lie_down) {
		if (keyboard_check(vk_right)) {	
			if (x < room_width - 32) {
				x += player_spd
				image_speed = 1
				image_xscale = 1
				sprite_index = spr_player_hori
			}
		
			else {
				sprite_index = spr_player_stop_hori
			}
		}

		else if (keyboard_check(vk_left)) { 
			if (x > 32) {
				x -= player_spd
				image_speed = 1
				image_xscale = -1
				sprite_index = spr_player_hori
			}

			else {
				sprite_index = spr_player_stop_hori
			}
		}

		else if (keyboard_check(vk_up)) {
			if (y > 100) {
				y -= player_spd
				image_speed = 1
				image_yscale = 1
				sprite_index = spr_player_vert
			}

			else {
				sprite_index = spr_player_stop_vert
			}
		}
	
		else if (keyboard_check(vk_down)) {
			if (y < room_height - 110) {
				y += player_spd
				image_speed = 1
				image_yscale = -1
				sprite_index = spr_player_vert
			}
		
			else {
				sprite_index = spr_player_stop_vert
			}
		}
	
		else {
			if ((keyboard_lastkey == vk_down) || (keyboard_lastkey == vk_up)) {
			// last pressed key check		
				sprite_index = spr_player_stop_vert
			}
			else {
				sprite_index = spr_player_stop_hori
			}
		}
	}
	
	// lie down
	if ((keyboard_check(vk_space)) && (boost)) {
		player_spd = 0
		depth = 50
		sprite_index = spr_player_lie
		lie_down = true
	}
	
	else {
		lie_down = false
	}
		
	// collision
	if (!lie_down) {
		if (collision_circle(x, y, 20, obj_car, false, false)) {
			var nearest_obj = instance_nearest(x, y, obj_car)
		
			if (nearest_obj.object_index == obj_potion) {
				nearest_obj.obj_reset = true
				SCORE += 100
			
				audio_play_sound(snd_potion, 0, false)
				//audio_play_sound(snd_boost, 0, false)
				if (!boost) {
					boost = true
					boost_timer = boost_timer_max
				}
			
				else {
					boost_timer += boost_timer_max
				}
			}
		
			else {
				audio_play_sound(snd_death, 0, false)
			
				got_hit = true
			
				depth = 50
				sprite_index = spr_player_dead
			
				death_timer = death_timer_max
			}
		}
	}
}

if (got_hit) {
	death_timer--
	
	if (death_timer <= 0) {
		got_hit = false	
		DEAD = true
		audio_play_sound(snd_gameover, 0, false)
	}
}

if (boost) {
	
	boost_timer--
	
	player_spd = 8
	
	if (boost_timer < 0) {
		boost_timer = boost_timer_max
		player_spd = 5
		boost = false
	}
}




	
