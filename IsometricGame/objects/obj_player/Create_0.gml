/// @description onCreate
// run parent create event
event_inherited();

//set player values
hp = 3;
spd = 2;
hspd = 0;
vspd = 0;
len = 0;
xaxis = 0;
yaxis = 0;
dir = 0;
image_speed = 0;
state = scr_move_state;
attacked = false;
face = RIGHT;

//call script for player control
scr_get_input();