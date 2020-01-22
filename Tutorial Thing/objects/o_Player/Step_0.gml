//get player input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

//calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp += grv;

//HEY RYAN
if (place_meeting(x, y + 1, o_Wall)) and (key_jump)
{
	vsp = -7;
}

//horizontal collision
if (place_meeting(x + hsp, y, o_Wall))
{
	while (!place_meeting(x + sign(hsp), y, o_Wall))
	{
		x += sign(hsp)
	}
	hsp = 0;
	
}
x += hsp;

//Vertical collision
if (place_meeting(x , y + vsp, o_Wall))
{
	while (!place_meeting(x, y + sign(vsp), o_Wall))
	{
		y += sign(vsp)
	}
	vsp = 0;
	
}
y += vsp;
