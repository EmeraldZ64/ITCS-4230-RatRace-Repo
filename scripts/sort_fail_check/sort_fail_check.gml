function sort_fail_check(){
	// If incorrect > 50%, fail immediately
	if (obj_storageManager.incorrect > obj_storageManager.total_items * 0.5) {
		
		room_goto(Room_Town);
		global.playerWonStorage = false;
		global.playerFinishedStorage = true;
		
		return true;
	}

	// If reached end of items, pass
	if (obj_storageManager.current_index >= obj_storageManager.total_items) {
		room_goto(Room_Town);
		global.playerWonStorage = true;
		global.playerFinishedStorage = true;
		
		return true;
	}

	return false;

}