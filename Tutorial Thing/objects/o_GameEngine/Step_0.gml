respawn -= 1
if respawn <= 0 {
	instance_create_layer(irandom_range(110, 860), 620, layer, o_Enemy)
	respawn = 200
	spawns += 1
	if spawns > 5 {
		o_Enemy.HP = o_Enemy.HP * 2
		o_Enemy.HP = clamp(o_Enemy.HP,0, 20)
	}
	
}

var sword = irandom_range(1,2000)
print(sword)
if sword = 2000 {
	instance_create_layer(irandom_range(110, 860), 620, layer, o_Sword)
	
}
