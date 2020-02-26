if !instance_exists(o_Player) {
	draw_text(480,350,"Game Over")
	var done = keyboard_check(vk_enter)
	if done {
		game_end()
	}
}