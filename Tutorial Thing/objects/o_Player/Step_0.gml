//get player input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);
key_shift = keyboard_check(vk_shift);
click = mouse_check_button_pressed(mb_left)
click2 = mouse_check_button(mb_right)

if HP <= 0 {
	instance_destroy()
}

if click {
	var bullet = instance_create_layer(x,y,layer,o_Bullet)
	bullet.speed = random_range(1,7)
	bullet.direction = point_direction(bullet.x, bullet.y, mouse_x, mouse_y)
	invin = true
}
if click2 {
	var bullet = instance_create_layer(x,y,layer,o_Bullet)
	bullet.speed = random_range(1,7)
	bullet.direction = point_direction(bullet.x, bullet.y, mouse_x, mouse_y)
	var bullet = instance_create_layer(x,y,layer,o_Bullet)
	bullet.speed = random_range(1,7)
	bullet.direction = point_direction(bullet.x, bullet.y, mouse_x, mouse_y)
	var bullet = instance_create_layer(x,y,layer,o_Bullet)
	bullet.speed = random_range(1,7)
	bullet.direction = point_direction(bullet.x, bullet.y, mouse_x, mouse_y)
	var bullet = instance_create_layer(x,y,layer,o_Bullet)
	bullet.speed = random_range(1,7)
	bullet.direction = point_direction(bullet.x, bullet.y, mouse_x, mouse_y)
	invin = true
}
//calculate movement
var move = key_right - key_left;

if key_shift {
	
	hsp = move * walksp * 10;
}
else {
	hsp = move * walksp
}
vsp += grv;

//HEY RYAN
if (place_meeting(x, y + 1, o_Collision)) and (key_jump)
{
	vsp = -14;
}

//horizontal collision
if (place_meeting(x + hsp, y, o_Collision))
{
	while (!place_meeting(x + sign(hsp), y, o_Collision))
	{
		x += sign(hsp)
	}
	hsp = 0;
	
}
x += hsp;

//Vertical collision
if (place_meeting(x , y + vsp, o_Collision))
{
	while (!place_meeting(x, y + sign(vsp), o_Collision))
	{
		y += sign(vsp)
	}
	vsp = 0;
	
}
y += vsp;


if invin = true {
	if invintimer != 0 {
		invintimer -= 1
	}
	else {
		invin = false
		invintimer = 60
	}
}