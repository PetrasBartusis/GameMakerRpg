/// @description Move the player in the step event

// Move right
if(keyboard_check(vk_right)){
	phy_position_x += 4;
}
// Move left
if(keyboard_check(vk_left)){
	phy_position_x -= 4;
}
// Move up
if(keyboard_check(vk_up)){
	phy_position_y -= 4;
}
// Move down
if(keyboard_check(vk_down)){
	phy_position_y += 4;
}