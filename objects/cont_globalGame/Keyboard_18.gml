if(keyboard_check_pressed(ord("I"))){
	room_goto(Room_Organize)

} else if(keyboard_check_pressed(ord("Q"))){
	room_goto(Room_Demo);

} else if(keyboard_check_pressed(ord("R"))){
	game_restart();

} else if(keyboard_check_pressed(ord("T"))){
	room_goto(Room_Win)

} else if(keyboard_check_pressed(ord("U"))){
	room_goto(Room_Race)
} else if(keyboard_check_pressed(ord("O"))){
	room_goto(Room_Sneak)
}else if(keyboard_check_pressed(ord("Y"))){
	room_goto(Room_Lose)
}else if (keyboard_check_pressed(ord("X")))
	obj_qTutorial.buttons = 0;