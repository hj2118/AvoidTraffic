/// @description Insert description here
// You can write your code in this editor


if (room == rm_start) {
	draw_set_halign(fa_right)
	draw_set_valign(fa_middle)
	draw_set_font(ft_xmas_32)
	draw_set_color(c_black)
	draw_text(room_width / 2, room_height / 2 - 60, "start:")
	draw_sprite(spacebar, 0, room_width / 2 + 50, room_height / 2 - 125)

	draw_set_font(ft_xmas_24)
	draw_sprite(spr_player_move, 0, room_width / 2 + 100, room_height / 2 + 120)
	draw_sprite(arrows, 0, room_width / 2 - 100, room_height / 2 + 50) 
	
	draw_sprite(spr_potion, 0, room_width / 2 - 150, room_height / 2 + 270)
	draw_sprite(spacebar, 0, room_width / 2 - 100, room_height / 2 + 200)
	draw_sprite(spr_player_lie, 0, room_width / 2 + 120, room_height / 2 + 260)
}

if (room == rm_game) {
	draw_set_font(ft_xmas_24)
	draw_set_valign(fa_top)
	
	// current score
	draw_set_halign(fa_left)
	draw_set_color(c_yellow)
	draw_text(13, 8, "SCORE: " + string(SCORE))

	// survived time
	draw_set_color(c_white)
	draw_text(13, 42, "SURVIVING TIME: " + string(SURVIVEDTIME))

	// highest score
	draw_set_halign(fa_right)
	draw_set_color(c_red)
	draw_text(room_width - 13, 20, "HI-SCORE: " + string(HISCORE))
	
	if (obj_player.boost) {
		draw_text(room_width - 30, room_height - 60, "SPEED UP!!")
	}
}

if (room == rm_end) {
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_color(c_black)
	
	draw_set_font(ft_xmas_48)
	draw_text(room_width / 2, room_height / 2 - 120, "GAME OVER")
	
	draw_set_font(ft_xmas_24)
	draw_text(room_width / 2, room_height / 2 - 40, "SCORE: " + string(SCORE))
	draw_text(room_width / 2, room_height / 2, "SURVIVED TIME: " + string(SURVIVEDTIME))
	draw_text(room_width / 2, room_height / 2 + 40, "HI-SCORE: " + string(HISCORE))
	
	draw_set_font(ft_xmas_32)
	draw_set_halign(fa_right)
	draw_text(room_width / 2 + 10, room_height / 2 + 110, "play again:")
	draw_sprite(spacebar, 0, room_width / 2 + 40, room_height / 2 + 45)

}


