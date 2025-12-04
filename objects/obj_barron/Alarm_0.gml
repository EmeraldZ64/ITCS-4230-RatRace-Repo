switch (state)
{
    case WATCH_STATE.LOOK_AWAY:
        state = WATCH_STATE.QUESTION;
		image_index=1;
        alarm[0] = time_question;
        break;

    case WATCH_STATE.QUESTION:
        state = WATCH_STATE.ALERT;
		image_index=2;
        alarm[0] = time_alert;
        break;

    case WATCH_STATE.ALERT:
        state = WATCH_STATE.TURN_TO_PLAYER;
		image_index=3;
        alarm[0] = time_turn;
        break;

    case WATCH_STATE.TURN_TO_PLAYER:
        state = WATCH_STATE.LOOK_AWAY;
		image_index =0;
        alarm[0] = time_look_away;
        break;
}
