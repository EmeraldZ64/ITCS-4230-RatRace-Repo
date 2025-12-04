function sort_fail_check(){
	// If incorrect > 50%, fail immediately
	if (obj_storageManager.incorrect > obj_storageManager.total_items * 0.5) {
		global.percentBlue-=0.05; 
		room_goto(Room_Town);
		return true;
	}

	// If reached end of items, pass
	if (obj_storageManager.current_index >= obj_storageManager.total_items) {
		global.percentBlue+=0.05;
		room_goto(Room_Town);
		return true;
	}

	return false;

}