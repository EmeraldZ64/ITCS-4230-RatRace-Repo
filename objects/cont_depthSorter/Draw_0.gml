// this draw event is done every frame

var dGrid = ds_depthgrid;
var numOfInstances = instance_number(obj_baseDepthParent);

ds_grid_resize(dGrid, 2, numOfInstances); // create rows of grid for each instance to be sorted

// fill the data of the grid for each object 
// - with() acts as a for loop, done one at a time for every object instance
// - ds_gridName[# i,j] is the accessor for data in data structure
// - i is data column, j is rows of instances

var instIterator = 0;

with(obj_baseDepthParent)
{
	dGrid[# 0,instIterator] = id;
	dGrid[# 1,instIterator] = y;
	
	instIterator++;
}
// sort the data structure in ascending order based off the y positions stored in column index 1
ds_grid_sort(dGrid, 1, true);

// Draw the objects in order of y position, ascending (from top to bottom ion the room)
var objInstance;
instIterator = 0;

repeat(numOfInstances)
{
	objInstance = dGrid[# 0, instIterator];
	
	with(objInstance)
	{
		event_perform(ev_draw, 0);
	}
	
	instIterator++;
}