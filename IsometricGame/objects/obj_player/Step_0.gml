/// @description Move the player in the step event

var right_key = keyboard_check(vk_right);
var left_key = keyboard_check(vk_left);
var up_key = keyboard_check(vk_up);
var down_key = keyboard_check(vk_down);

// Move right
if(right_key){
	phy_position_x += spd;
	sprite_index = spr_player_right;
	image_speed = 1;
}
// Move left
if(left_key){
	phy_position_x -= spd;
	sprite_index = spr_player_left;
	image_speed = 1;
}
// Move up
if(up_key){
	phy_position_y -= spd;
	sprite_index = spr_player_up;
	image_speed = 1;
}
// Move down
if(down_key){
	phy_position_y += spd;
	sprite_index = spr_player_down;
	image_speed = 1;
}

//Stop animating
if(!right_key and !left_key and !up_key and !down_key){
	image_speed = 0;
	image_index = 0;
}