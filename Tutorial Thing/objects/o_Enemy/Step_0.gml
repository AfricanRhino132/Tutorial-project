vsp += grv
if instance_exists(o_Player)
{
	if o_Player.x > x
{
	if (place_meeting(x + walksp, y, o_Collision))
	{
		while (!place_meeting(x + 1, y, o_Collision))
		{
			x += 1
		}
		if on_ground {
			vsp -= 7
			on_ground = false
			}			
	}
	else
	{
		x += walksp
	}
}
else 
{
	if (place_meeting(x - walksp , y, o_Collision))
	{
		while (!place_meeting(x - 1, y, o_Collision))
		{
			x -= 1
		}
	
		if on_ground {
			vsp -= 7
			on_ground = false
			}		
	}
	else
	{
		x -= walksp
	}
}

if HP <= 0 {
	instance_destroy()
	
}



if (place_meeting(x , y + vsp, o_Collision))
{
	while (!place_meeting(x, y + sign(vsp), o_Collision))
	{
		y += sign(vsp)
	}
	vsp = 0;
	on_ground = true
	
}
y += vsp;
}