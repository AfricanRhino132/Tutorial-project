vsp += grv

if o_Player.x > x
{
	if (place_meeting(x + walksp, y, o_Wall))
	{
		while (!place_meeting(x + 1, y, o_Wall))
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
	if (place_meeting(x - walksp , y, o_Wall))
	{
		while (!place_meeting(x - 1, y, o_Wall))
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


if (place_meeting(x , y + vsp, o_Wall))
{
	while (!place_meeting(x, y + sign(vsp), o_Wall))
	{
		y += sign(vsp)
	}
	vsp = 0;
	on_ground = true
	
}
y += vsp;
