// REMOVE THIS FROM THE ROOM TO DISABLE ALL COLLISION SPAWNS

// spawn tree collidors
with(obj_tree)
{
	instance_create_layer(x, y, "Collisions", obj_treeCollision);
}