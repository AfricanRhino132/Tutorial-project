respawn -= 1
if respawn <= 0 {
	instance_create_layer(irandom_range(110, 860), 620, layer, o_Enemy)
	respawn = 300 - spawns
	spawns += 10
}
