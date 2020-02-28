if !instance_exists(o_Player) {
	draw_text(450,350,"Game Over")
	var done = keyboard_check(vk_enter)
	if done {
		game_end()
	}
}

draw_text(930,10,"Wave: " + string(wave))
draw_text_color(450, 10, "Currency: " + string(currency),c_yellow,c_yellow,c_yellow,c_yellow,1)

if wave_done = true {
	draw_text(420, 350, "Wave Complete!")
	draw_text(420, 370, "Enter: go to shop")
	draw_text(420, 390, "Space: next wave")
	var choice1 = keyboard_check(vk_enter)
	var choice2 = keyboard_check(vk_space)
	
	if choice1 {
		shop = true
		wave += 1
	}
	else if choice2 {
		wave_done = false 
		respawn = 200
		killed = 0
		spawns = spawns *1.5
		wave += 1
	}
}

