/// @description onCreate

//set fixed rotation
phy_fixed_rotation = true;

spd = 2;
hspd = 0;
vspd = 0;
len = 0;
xaxis = 0;
yaxis = 0;
dir = 0;
image_speed = 0;
depth = -10;
state = scr_move_state;

//call script for player control
scr_get_input();