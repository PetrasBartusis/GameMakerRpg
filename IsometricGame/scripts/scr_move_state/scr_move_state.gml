///scr_move_state

//check player input
scr_get_input();

//check if player is dashing
if(dash_key){
	state = scr_dash_state;
	alarm[0] = room_speed/6;
}

// Get direction
dir = point_direction(0, 0, xaxis, yaxis);

// Get the length
if(xaxis == 0 and yaxis == 0){
	len = 0;
} else {
	len = spd;
}

// Get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// Move
phy_position_x += hspd;
phy_position_y += vspd;

// Control the sprite
image_speed = 1;
if(len == 0) image_index = 0;
// Check movement sprites
if(vspd > 0){
	sprite_index = spr_player_down;
} else if(vspd < 0){
	sprite_index = spr_player_up;
} else if(hspd > 0){
	sprite_index = spr_player_right;
} else if(hspd < 0){
	sprite_index = spr_player_left;
}