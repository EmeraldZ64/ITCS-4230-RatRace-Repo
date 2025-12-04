enum WATCH_STATE {
    LOOK_AWAY,
    QUESTION,
    ALERT,
    TURN_TO_PLAYER
}

state = WATCH_STATE.LOOK_AWAY;


time_look_away = irandom_range(60, 120);  // green light
time_question  = 40;   // ? suspicious
time_alert     = 30;   // ! warning
time_turn      = 80;   // fully looking

alarm[0] = time_look_away;
image_xscale =.55;
image_yscale = .55;