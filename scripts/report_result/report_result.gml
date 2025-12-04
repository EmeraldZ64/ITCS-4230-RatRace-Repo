function report_result(was_correct){

	if (was_correct) {
	obj_storageManager.correct++;
	} else {
		obj_storageManager.incorrect++;
	}

	// After updating result, check if player failed
	sort_fail_check();

	// If not failed, spawn next item
	spawn_next_item();
}