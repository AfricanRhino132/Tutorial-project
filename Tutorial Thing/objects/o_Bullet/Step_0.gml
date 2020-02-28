if !instance_exists(o_Player) 
{
	instance_destroy()
}

if o_GameEngine.wave_done = true {
	instance_destroy()
}