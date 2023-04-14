/// @description Insert description here
// You can write your code in this editor

// num_cars = 9
num_cars = 3
num_bus = 2

for (i = 0; i < num_cars; i++) {
	// instance_create_depth(0, 0, 0, obj_car)
	
	instance_create_depth(0, room_width, 0, obj_car)
	instance_create_depth(0, room_width, 0, obj_car_2)
}

for (i = 0; i < num_bus; i++) {
	instance_create_depth(0, room_width, 0, obj_bus)
}

instance_create_depth(0, room_width, 0, obj_potion)
