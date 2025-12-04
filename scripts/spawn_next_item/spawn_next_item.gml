function spawn_next_item(){
	// If we’ve spawned everything, check pass/fail
	if (obj_storageManager.current_index >= obj_storageManager.total_items) {
		sort_fail_check();
		return;
	}

	// Get item type
	var t = obj_storageManager.item_types[obj_storageManager.current_index];

	// Spawn the item
	var item = instance_create_layer(670, 100, "Instances", obj_item);
	item.item_type = t;

	// Move to next
	obj_storageManager.current_index++;

}