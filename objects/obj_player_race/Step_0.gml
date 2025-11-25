if (hspeed < maxSpeed && !finished && !global.raceLose){
	hspeed = hspeed + 0.5;
}
if (keyboard_check(ord("W")) && !global.raceLose) {
    y -= 5;
}
if (keyboard_check(ord("S")) && !global.raceLose) {
    y += 5;
}
// keep player from leaving gamemaker room space
x = clamp(x, 0, room_width - sprite_width / 2);
y = clamp(y, 0 + sprite_height, room_height -sprite_height / 2);
if (global.raceWin){
	global.percentBlue += 0.05;
	global.raceWin = false;
	global.atMarket = true;
	room_goto(Room1);
}