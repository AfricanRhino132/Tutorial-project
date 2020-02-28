respawn -= 1
if respawn = 0 and killed != spawns {
	instance_create_layer(irandom_range(110, 670), 620, layer, o_Enemy)
	respawn = 60
	if wave = 5 and o_Enemy.HP < 15 {
		o_Enemy.HP = o_Enemy.HP * 1.5
	}
	
}
if killed = spawns {
	respawn = -1
	wave_done = true
}
	
var sword = irandom_range(1,2000)
print(sword)
if sword = 2000 {
	instance_create_layer(irandom_range(110, 860), 670, layer, o_Sword)
	
}

if shop = true { 
	room_goto(rm_shop)
}

