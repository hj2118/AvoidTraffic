/// @description Insert description here
// You can write your code in this editor


x += obj_spd

if (obj_reset) {    
    x = -100           

    y = random_range(130, room_height - 140)
    
    obj_spd = random_range(2, 10)
    
    obj_reset = false
}

if (x > room_width) {
    obj_reset = true
}