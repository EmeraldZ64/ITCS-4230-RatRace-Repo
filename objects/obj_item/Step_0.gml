if (!initialized && item_type != "") {

    switch (item_type) {
        case "nut":
            image_index = 0;
            break;

        case "berry":
            image_index = 1;
            break;

        case "seed":
            image_index = 2;
            break;
    }

    initialized = true;
}


// --- DRAGGING ---
if (mouse_check_button(mb_left))
{
    // Start dragging if click is on the item
    if (!is_dragging && position_meeting(mouse_x, mouse_y, id))
    {
        is_dragging = true;
        offset_x = x - mouse_x;
        offset_y = y - mouse_y;
    }

    // Follow mouse while dragging
    if (is_dragging)
    {
        x = mouse_x + offset_x;
        y = mouse_y + offset_y;
    }
}
else
{
    // Mouse released → check drop
    if (is_dragging)
    {
        is_dragging = false;

        var correct_drop = false;

        // CORRECT DROP CHECKS
        if (place_meeting(x, y, obj_boxNuts) && item_type == "nut")  correct_drop = true;
        if (place_meeting(x, y, obj_boxBerries) && item_type == "berry") correct_drop = true;
        if (place_meeting(x, y, obj_boxSeeds) && item_type == "seed") correct_drop = true;

        // If correct → destroy and report result
        if (correct_drop)
        {
            report_result(true);
            instance_destroy();
        }
        else
        {
			//DROPPED OUTSIDE BOX → snap back
            x = 670;
            y = 100;

        }
    }
}